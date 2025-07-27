// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'plan_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PlanDefinitionCopyWith<T> extends $MetadataResourceCopyWith<T> {
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
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    CodeableConcept? type,
    PublicationStatus? status,
    FhirBoolean? experimental,
    CodeableConcept? subjectX,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? usage,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    List<PlanDefinitionGoal>? goal,
    List<PlanDefinitionActor>? actor,
    List<PlanDefinitionAction>? action,
    FhirBoolean? asNeededX,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionCopyWithImpl<T> implements $PlanDefinitionCopyWith<T> {
  final PlanDefinition _value;
  final T Function(PlanDefinition) _then;

  _$PlanDefinitionCopyWithImpl(this._value, this._then);

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
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? versionAlgorithmX = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? subtitle = fhirSentinel,
    Object? type = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? usage = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? library_ = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? action = fhirSentinel,
    Object? asNeededX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinition(
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
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        versionAlgorithmX: identical(versionAlgorithmX, fhirSentinel)
            ? _value.versionAlgorithmX
            : versionAlgorithmX as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as CodeableConcept?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        copyrightLabel: identical(copyrightLabel, fhirSentinel)
            ? _value.copyrightLabel
            : copyrightLabel as FhirString?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : topic as List<CodeableConcept>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<ContactDetail>?,
        editor: identical(editor, fhirSentinel)
            ? _value.editor
            : editor as List<ContactDetail>?,
        reviewer: identical(reviewer, fhirSentinel)
            ? _value.reviewer
            : reviewer as List<ContactDetail>?,
        endorser: identical(endorser, fhirSentinel)
            ? _value.endorser
            : endorser as List<ContactDetail>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        library_: identical(library_, fhirSentinel)
            ? _value.library_
            : library_ as List<FhirCanonical>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<PlanDefinitionGoal>?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<PlanDefinitionActor>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<PlanDefinitionAction>?,
        asNeededX: identical(asNeededX, fhirSentinel)
            ? _value.asNeededX
            : asNeededX as FhirBoolean?,
      ),
    );
  }
}

extension PlanDefinitionCopyWithExtension on PlanDefinition {
  $PlanDefinitionCopyWith<PlanDefinition> get copyWith =>
      _$PlanDefinitionCopyWithImpl<PlanDefinition>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionGoalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? description,
    CodeableConcept? priority,
    CodeableConcept? start,
    List<CodeableConcept>? addresses,
    List<RelatedArtifact>? documentation,
    List<PlanDefinitionTarget>? target,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionGoalCopyWithImpl<T>
    implements $PlanDefinitionGoalCopyWith<T> {
  final PlanDefinitionGoal _value;
  final T Function(PlanDefinitionGoal) _then;

  _$PlanDefinitionGoalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? description = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? start = fhirSentinel,
    Object? addresses = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionGoal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : (description as CodeableConcept?) ?? _value.description,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as CodeableConcept?,
        addresses: identical(addresses, fhirSentinel)
            ? _value.addresses
            : addresses as List<CodeableConcept>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as List<RelatedArtifact>?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<PlanDefinitionTarget>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionGoalCopyWithExtension on PlanDefinitionGoal {
  $PlanDefinitionGoalCopyWith<PlanDefinitionGoal> get copyWith =>
      _$PlanDefinitionGoalCopyWithImpl<PlanDefinitionGoal>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionTargetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    Quantity? detailX,
    FhirDuration? due,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionTargetCopyWithImpl<T>
    implements $PlanDefinitionTargetCopyWith<T> {
  final PlanDefinitionTarget _value;
  final T Function(PlanDefinitionTarget) _then;

  _$PlanDefinitionTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? measure = fhirSentinel,
    Object? detailX = fhirSentinel,
    Object? due = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        measure: identical(measure, fhirSentinel)
            ? _value.measure
            : measure as CodeableConcept?,
        detailX: identical(detailX, fhirSentinel)
            ? _value.detailX
            : detailX as Quantity?,
        due: identical(due, fhirSentinel) ? _value.due : due as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionTargetCopyWithExtension on PlanDefinitionTarget {
  $PlanDefinitionTargetCopyWith<PlanDefinitionTarget> get copyWith =>
      _$PlanDefinitionTargetCopyWithImpl<PlanDefinitionTarget>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionActorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    FhirMarkdown? description,
    List<PlanDefinitionOption>? option,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionActorCopyWithImpl<T>
    implements $PlanDefinitionActorCopyWith<T> {
  final PlanDefinitionActor _value;
  final T Function(PlanDefinitionActor) _then;

  _$PlanDefinitionActorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? option = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionActor(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        option: identical(option, fhirSentinel)
            ? _value.option
            : (option as List<PlanDefinitionOption>?) ?? _value.option,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionActorCopyWithExtension on PlanDefinitionActor {
  $PlanDefinitionActorCopyWith<PlanDefinitionActor> get copyWith =>
      _$PlanDefinitionActorCopyWithImpl<PlanDefinitionActor>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionOptionCopyWith<T>
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
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionOptionCopyWithImpl<T>
    implements $PlanDefinitionOptionCopyWith<T> {
  final PlanDefinitionOption _value;
  final T Function(PlanDefinitionOption) _then;

  _$PlanDefinitionOptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? typeCanonical = fhirSentinel,
    Object? typeReference = fhirSentinel,
    Object? role = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionOption(
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
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionOptionCopyWithExtension on PlanDefinitionOption {
  $PlanDefinitionOptionCopyWith<PlanDefinitionOption> get copyWith =>
      _$PlanDefinitionOptionCopyWithImpl<PlanDefinitionOption>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionActionCopyWith<T>
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
    CodeableConcept? code,
    List<CodeableConcept>? reason,
    List<RelatedArtifact>? documentation,
    List<FhirId>? goalId,
    CodeableConcept? subjectX,
    List<TriggerDefinition>? trigger,
    List<PlanDefinitionCondition>? condition,
    List<PlanDefinitionInput>? input,
    List<PlanDefinitionOutput>? output,
    List<PlanDefinitionRelatedAction>? relatedAction,
    Age? timingX,
    CodeableReference? location,
    List<PlanDefinitionParticipant>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    ActionSelectionBehavior? selectionBehavior,
    ActionRequiredBehavior? requiredBehavior,
    ActionPrecheckBehavior? precheckBehavior,
    ActionCardinalityBehavior? cardinalityBehavior,
    FhirCanonical? definitionX,
    FhirCanonical? transform,
    List<PlanDefinitionDynamicValue>? dynamicValue,
    List<PlanDefinitionAction>? action,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionActionCopyWithImpl<T>
    implements $PlanDefinitionActionCopyWith<T> {
  final PlanDefinitionAction _value;
  final T Function(PlanDefinitionAction) _then;

  _$PlanDefinitionActionCopyWithImpl(this._value, this._then);

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
    Object? reason = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? goalId = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? trigger = fhirSentinel,
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
    Object? definitionX = fhirSentinel,
    Object? transform = fhirSentinel,
    Object? dynamicValue = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionAction(
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
            : code as CodeableConcept?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableConcept>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as List<RelatedArtifact>?,
        goalId: identical(goalId, fhirSentinel)
            ? _value.goalId
            : goalId as List<FhirId>?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as CodeableConcept?,
        trigger: identical(trigger, fhirSentinel)
            ? _value.trigger
            : trigger as List<TriggerDefinition>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<PlanDefinitionCondition>?,
        input: identical(input, fhirSentinel)
            ? _value.input
            : input as List<PlanDefinitionInput>?,
        output: identical(output, fhirSentinel)
            ? _value.output
            : output as List<PlanDefinitionOutput>?,
        relatedAction: identical(relatedAction, fhirSentinel)
            ? _value.relatedAction
            : relatedAction as List<PlanDefinitionRelatedAction>?,
        timingX:
            identical(timingX, fhirSentinel) ? _value.timingX : timingX as Age?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as CodeableReference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<PlanDefinitionParticipant>?,
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
        definitionX: identical(definitionX, fhirSentinel)
            ? _value.definitionX
            : definitionX as FhirCanonical?,
        transform: identical(transform, fhirSentinel)
            ? _value.transform
            : transform as FhirCanonical?,
        dynamicValue: identical(dynamicValue, fhirSentinel)
            ? _value.dynamicValue
            : dynamicValue as List<PlanDefinitionDynamicValue>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<PlanDefinitionAction>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionActionCopyWithExtension on PlanDefinitionAction {
  $PlanDefinitionActionCopyWith<PlanDefinitionAction> get copyWith =>
      _$PlanDefinitionActionCopyWithImpl<PlanDefinitionAction>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionConditionCopyWith<T>
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

class _$PlanDefinitionConditionCopyWithImpl<T>
    implements $PlanDefinitionConditionCopyWith<T> {
  final PlanDefinitionCondition _value;
  final T Function(PlanDefinitionCondition) _then;

  _$PlanDefinitionConditionCopyWithImpl(this._value, this._then);

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
      PlanDefinitionCondition(
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

extension PlanDefinitionConditionCopyWithExtension on PlanDefinitionCondition {
  $PlanDefinitionConditionCopyWith<PlanDefinitionCondition> get copyWith =>
      _$PlanDefinitionConditionCopyWithImpl<PlanDefinitionCondition>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionInputCopyWith<T>
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

class _$PlanDefinitionInputCopyWithImpl<T>
    implements $PlanDefinitionInputCopyWith<T> {
  final PlanDefinitionInput _value;
  final T Function(PlanDefinitionInput) _then;

  _$PlanDefinitionInputCopyWithImpl(this._value, this._then);

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
      PlanDefinitionInput(
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

extension PlanDefinitionInputCopyWithExtension on PlanDefinitionInput {
  $PlanDefinitionInputCopyWith<PlanDefinitionInput> get copyWith =>
      _$PlanDefinitionInputCopyWithImpl<PlanDefinitionInput>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionOutputCopyWith<T>
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

class _$PlanDefinitionOutputCopyWithImpl<T>
    implements $PlanDefinitionOutputCopyWith<T> {
  final PlanDefinitionOutput _value;
  final T Function(PlanDefinitionOutput) _then;

  _$PlanDefinitionOutputCopyWithImpl(this._value, this._then);

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
      PlanDefinitionOutput(
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

extension PlanDefinitionOutputCopyWithExtension on PlanDefinitionOutput {
  $PlanDefinitionOutputCopyWith<PlanDefinitionOutput> get copyWith =>
      _$PlanDefinitionOutputCopyWithImpl<PlanDefinitionOutput>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionRelatedActionCopyWith<T>
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

class _$PlanDefinitionRelatedActionCopyWithImpl<T>
    implements $PlanDefinitionRelatedActionCopyWith<T> {
  final PlanDefinitionRelatedAction _value;
  final T Function(PlanDefinitionRelatedAction) _then;

  _$PlanDefinitionRelatedActionCopyWithImpl(this._value, this._then);

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
      PlanDefinitionRelatedAction(
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

extension PlanDefinitionRelatedActionCopyWithExtension
    on PlanDefinitionRelatedAction {
  $PlanDefinitionRelatedActionCopyWith<PlanDefinitionRelatedAction>
      get copyWith => _$PlanDefinitionRelatedActionCopyWithImpl<
              PlanDefinitionRelatedAction>(
            this,
            (value) => value,
          );
}

abstract class $PlanDefinitionParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? actorId,
    ActionParticipantType? type,
    FhirCanonical? typeCanonical,
    Reference? typeReference,
    CodeableConcept? role,
    CodeableConcept? function_,
    bool? disallowExtensions,
  });
}

class _$PlanDefinitionParticipantCopyWithImpl<T>
    implements $PlanDefinitionParticipantCopyWith<T> {
  final PlanDefinitionParticipant _value;
  final T Function(PlanDefinitionParticipant) _then;

  _$PlanDefinitionParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? actorId = fhirSentinel,
    Object? type = fhirSentinel,
    Object? typeCanonical = fhirSentinel,
    Object? typeReference = fhirSentinel,
    Object? role = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PlanDefinitionParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        actorId: identical(actorId, fhirSentinel)
            ? _value.actorId
            : actorId as FhirString?,
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
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PlanDefinitionParticipantCopyWithExtension
    on PlanDefinitionParticipant {
  $PlanDefinitionParticipantCopyWith<PlanDefinitionParticipant> get copyWith =>
      _$PlanDefinitionParticipantCopyWithImpl<PlanDefinitionParticipant>(
        this,
        (value) => value,
      );
}

abstract class $PlanDefinitionDynamicValueCopyWith<T>
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

class _$PlanDefinitionDynamicValueCopyWithImpl<T>
    implements $PlanDefinitionDynamicValueCopyWith<T> {
  final PlanDefinitionDynamicValue _value;
  final T Function(PlanDefinitionDynamicValue) _then;

  _$PlanDefinitionDynamicValueCopyWithImpl(this._value, this._then);

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
      PlanDefinitionDynamicValue(
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

extension PlanDefinitionDynamicValueCopyWithExtension
    on PlanDefinitionDynamicValue {
  $PlanDefinitionDynamicValueCopyWith<PlanDefinitionDynamicValue>
      get copyWith =>
          _$PlanDefinitionDynamicValueCopyWithImpl<PlanDefinitionDynamicValue>(
            this,
            (value) => value,
          );
}
