// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'example_scenario.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ExampleScenarioCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    List<ExampleScenarioActor>? actor,
    List<ExampleScenarioInstance>? instance,
    List<ExampleScenarioProcess>? process,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioCopyWithImpl<T> implements $ExampleScenarioCopyWith<T> {
  final ExampleScenario _value;
  final T Function(ExampleScenario) _then;

  _$ExampleScenarioCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? process = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenario(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
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
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        copyrightLabel: identical(copyrightLabel, fhirSentinel)
            ? _value.copyrightLabel
            : copyrightLabel as FhirString?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<ExampleScenarioActor>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<ExampleScenarioInstance>?,
        process: identical(process, fhirSentinel)
            ? _value.process
            : process as List<ExampleScenarioProcess>?,
      ),
    );
  }
}

extension ExampleScenarioCopyWithExtension on ExampleScenario {
  $ExampleScenarioCopyWith<ExampleScenario> get copyWith =>
      _$ExampleScenarioCopyWithImpl<ExampleScenario>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioActorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? key,
    ExampleScenarioActorType? type,
    FhirString? title,
    FhirMarkdown? description,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioActorCopyWithImpl<T>
    implements $ExampleScenarioActorCopyWith<T> {
  final ExampleScenarioActor _value;
  final T Function(ExampleScenarioActor) _then;

  _$ExampleScenarioActorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? key = fhirSentinel,
    Object? type = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioActor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        key: identical(key, fhirSentinel)
            ? _value.key
            : (key as FhirString?) ?? _value.key,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ExampleScenarioActorType?) ?? _value.type,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioActorCopyWithExtension on ExampleScenarioActor {
  $ExampleScenarioActorCopyWith<ExampleScenarioActor> get copyWith =>
      _$ExampleScenarioActorCopyWithImpl<ExampleScenarioActor>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? key,
    Coding? structureType,
    FhirString? structureVersion,
    FhirCanonical? structureProfileX,
    FhirString? title,
    FhirMarkdown? description,
    Reference? content,
    List<ExampleScenarioVersion>? version,
    List<ExampleScenarioContainedInstance>? containedInstance,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioInstanceCopyWithImpl<T>
    implements $ExampleScenarioInstanceCopyWith<T> {
  final ExampleScenarioInstance _value;
  final T Function(ExampleScenarioInstance) _then;

  _$ExampleScenarioInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? key = fhirSentinel,
    Object? structureType = fhirSentinel,
    Object? structureVersion = fhirSentinel,
    Object? structureProfileX = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? content = fhirSentinel,
    Object? version = fhirSentinel,
    Object? containedInstance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        key: identical(key, fhirSentinel)
            ? _value.key
            : (key as FhirString?) ?? _value.key,
        structureType: identical(structureType, fhirSentinel)
            ? _value.structureType
            : (structureType as Coding?) ?? _value.structureType,
        structureVersion: identical(structureVersion, fhirSentinel)
            ? _value.structureVersion
            : structureVersion as FhirString?,
        structureProfileX: identical(structureProfileX, fhirSentinel)
            ? _value.structureProfileX
            : structureProfileX as FhirCanonical?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : content as Reference?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<ExampleScenarioVersion>?,
        containedInstance: identical(containedInstance, fhirSentinel)
            ? _value.containedInstance
            : containedInstance as List<ExampleScenarioContainedInstance>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioInstanceCopyWithExtension on ExampleScenarioInstance {
  $ExampleScenarioInstanceCopyWith<ExampleScenarioInstance> get copyWith =>
      _$ExampleScenarioInstanceCopyWithImpl<ExampleScenarioInstance>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioVersionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? key,
    FhirString? title,
    FhirMarkdown? description,
    Reference? content,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioVersionCopyWithImpl<T>
    implements $ExampleScenarioVersionCopyWith<T> {
  final ExampleScenarioVersion _value;
  final T Function(ExampleScenarioVersion) _then;

  _$ExampleScenarioVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? key = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? content = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioVersion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        key: identical(key, fhirSentinel)
            ? _value.key
            : (key as FhirString?) ?? _value.key,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : content as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioVersionCopyWithExtension on ExampleScenarioVersion {
  $ExampleScenarioVersionCopyWith<ExampleScenarioVersion> get copyWith =>
      _$ExampleScenarioVersionCopyWithImpl<ExampleScenarioVersion>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioContainedInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? instanceReference,
    FhirString? versionReference,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioContainedInstanceCopyWithImpl<T>
    implements $ExampleScenarioContainedInstanceCopyWith<T> {
  final ExampleScenarioContainedInstance _value;
  final T Function(ExampleScenarioContainedInstance) _then;

  _$ExampleScenarioContainedInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? instanceReference = fhirSentinel,
    Object? versionReference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioContainedInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        instanceReference: identical(instanceReference, fhirSentinel)
            ? _value.instanceReference
            : (instanceReference as FhirString?) ?? _value.instanceReference,
        versionReference: identical(versionReference, fhirSentinel)
            ? _value.versionReference
            : versionReference as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioContainedInstanceCopyWithExtension
    on ExampleScenarioContainedInstance {
  $ExampleScenarioContainedInstanceCopyWith<ExampleScenarioContainedInstance>
      get copyWith => _$ExampleScenarioContainedInstanceCopyWithImpl<
              ExampleScenarioContainedInstance>(
            this,
            (value) => value,
          );
}

abstract class $ExampleScenarioProcessCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    FhirMarkdown? description,
    FhirMarkdown? preConditions,
    FhirMarkdown? postConditions,
    List<ExampleScenarioStep>? step,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioProcessCopyWithImpl<T>
    implements $ExampleScenarioProcessCopyWith<T> {
  final ExampleScenarioProcess _value;
  final T Function(ExampleScenarioProcess) _then;

  _$ExampleScenarioProcessCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? preConditions = fhirSentinel,
    Object? postConditions = fhirSentinel,
    Object? step = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioProcess(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        preConditions: identical(preConditions, fhirSentinel)
            ? _value.preConditions
            : preConditions as FhirMarkdown?,
        postConditions: identical(postConditions, fhirSentinel)
            ? _value.postConditions
            : postConditions as FhirMarkdown?,
        step: identical(step, fhirSentinel)
            ? _value.step
            : step as List<ExampleScenarioStep>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioProcessCopyWithExtension on ExampleScenarioProcess {
  $ExampleScenarioProcessCopyWith<ExampleScenarioProcess> get copyWith =>
      _$ExampleScenarioProcessCopyWithImpl<ExampleScenarioProcess>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioStepCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? number,
    ExampleScenarioProcess? process,
    FhirCanonical? workflow,
    ExampleScenarioOperation? operation,
    List<ExampleScenarioAlternative>? alternative,
    FhirBoolean? pause,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioStepCopyWithImpl<T>
    implements $ExampleScenarioStepCopyWith<T> {
  final ExampleScenarioStep _value;
  final T Function(ExampleScenarioStep) _then;

  _$ExampleScenarioStepCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? number = fhirSentinel,
    Object? process = fhirSentinel,
    Object? workflow = fhirSentinel,
    Object? operation = fhirSentinel,
    Object? alternative = fhirSentinel,
    Object? pause = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioStep(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirString?,
        process: identical(process, fhirSentinel)
            ? _value.process
            : process as ExampleScenarioProcess?,
        workflow: identical(workflow, fhirSentinel)
            ? _value.workflow
            : workflow as FhirCanonical?,
        operation: identical(operation, fhirSentinel)
            ? _value.operation
            : operation as ExampleScenarioOperation?,
        alternative: identical(alternative, fhirSentinel)
            ? _value.alternative
            : alternative as List<ExampleScenarioAlternative>?,
        pause: identical(pause, fhirSentinel)
            ? _value.pause
            : pause as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioStepCopyWithExtension on ExampleScenarioStep {
  $ExampleScenarioStepCopyWith<ExampleScenarioStep> get copyWith =>
      _$ExampleScenarioStepCopyWithImpl<ExampleScenarioStep>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioOperationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    FhirString? title,
    FhirString? initiator,
    FhirString? receiver,
    FhirMarkdown? description,
    FhirBoolean? initiatorActive,
    FhirBoolean? receiverActive,
    ExampleScenarioContainedInstance? request,
    ExampleScenarioContainedInstance? response,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioOperationCopyWithImpl<T>
    implements $ExampleScenarioOperationCopyWith<T> {
  final ExampleScenarioOperation _value;
  final T Function(ExampleScenarioOperation) _then;

  _$ExampleScenarioOperationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? title = fhirSentinel,
    Object? initiator = fhirSentinel,
    Object? receiver = fhirSentinel,
    Object? description = fhirSentinel,
    Object? initiatorActive = fhirSentinel,
    Object? receiverActive = fhirSentinel,
    Object? request = fhirSentinel,
    Object? response = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioOperation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel) ? _value.type : type as Coding?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        initiator: identical(initiator, fhirSentinel)
            ? _value.initiator
            : initiator as FhirString?,
        receiver: identical(receiver, fhirSentinel)
            ? _value.receiver
            : receiver as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        initiatorActive: identical(initiatorActive, fhirSentinel)
            ? _value.initiatorActive
            : initiatorActive as FhirBoolean?,
        receiverActive: identical(receiverActive, fhirSentinel)
            ? _value.receiverActive
            : receiverActive as FhirBoolean?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as ExampleScenarioContainedInstance?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as ExampleScenarioContainedInstance?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioOperationCopyWithExtension
    on ExampleScenarioOperation {
  $ExampleScenarioOperationCopyWith<ExampleScenarioOperation> get copyWith =>
      _$ExampleScenarioOperationCopyWithImpl<ExampleScenarioOperation>(
        this,
        (value) => value,
      );
}

abstract class $ExampleScenarioAlternativeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    FhirMarkdown? description,
    List<ExampleScenarioStep>? step,
    bool? disallowExtensions,
  });
}

class _$ExampleScenarioAlternativeCopyWithImpl<T>
    implements $ExampleScenarioAlternativeCopyWith<T> {
  final ExampleScenarioAlternative _value;
  final T Function(ExampleScenarioAlternative) _then;

  _$ExampleScenarioAlternativeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? step = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExampleScenarioAlternative(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        step: identical(step, fhirSentinel)
            ? _value.step
            : step as List<ExampleScenarioStep>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExampleScenarioAlternativeCopyWithExtension
    on ExampleScenarioAlternative {
  $ExampleScenarioAlternativeCopyWith<ExampleScenarioAlternative>
      get copyWith =>
          _$ExampleScenarioAlternativeCopyWithImpl<ExampleScenarioAlternative>(
            this,
            (value) => value,
          );
}
