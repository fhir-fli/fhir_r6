// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'evidence_variable.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EvidenceVariableCopyWith<T>
    extends $MetadataResourceCopyWith<T> {
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
    FhirString? shortTitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    List<EvidenceVariableCharacteristic>? characteristic,
    EvidenceVariableHandling? handling,
    List<EvidenceVariableCategory>? category,
    List<CodeableConcept>? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCopyWithImpl<T>
    implements $EvidenceVariableCopyWith<T> {
  final EvidenceVariable _value;
  final T Function(EvidenceVariable) _then;

  _$EvidenceVariableCopyWithImpl(this._value, this._then);

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
    Object? shortTitle = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? category = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariable(
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
        shortTitle: identical(shortTitle, fhirSentinel)
            ? _value.shortTitle
            : shortTitle as FhirString?,
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
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
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
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<EvidenceVariableCharacteristic>?,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as EvidenceVariableHandling?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<EvidenceVariableCategory>?,
      ),
    );
  }
}

extension EvidenceVariableCopyWithExtension on EvidenceVariable {
  $EvidenceVariableCopyWith<EvidenceVariable> get copyWith =>
      _$EvidenceVariableCopyWithImpl<EvidenceVariable>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? linkId,
    FhirMarkdown? description,
    List<Annotation>? note,
    FhirBoolean? exclude,
    Reference? definitionReference,
    FhirCanonical? definitionCanonical,
    CodeableConcept? definitionCodeableConcept,
    FhirExpression? definitionExpression,
    FhirId? definitionId,
    EvidenceVariableDefinitionByTypeAndValue? definitionByTypeAndValue,
    EvidenceVariableDefinitionByCombination? definitionByCombination,
    Quantity? instancesX,
    Quantity? durationX,
    List<EvidenceVariableTimeFromEvent>? timeFromEvent,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCharacteristicCopyWithImpl<T>
    implements $EvidenceVariableCharacteristicCopyWith<T> {
  final EvidenceVariableCharacteristic _value;
  final T Function(EvidenceVariableCharacteristic) _then;

  _$EvidenceVariableCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? definitionReference = fhirSentinel,
    Object? definitionCanonical = fhirSentinel,
    Object? definitionCodeableConcept = fhirSentinel,
    Object? definitionExpression = fhirSentinel,
    Object? definitionId = fhirSentinel,
    Object? definitionByTypeAndValue = fhirSentinel,
    Object? definitionByCombination = fhirSentinel,
    Object? instancesX = fhirSentinel,
    Object? durationX = fhirSentinel,
    Object? timeFromEvent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId:
            identical(linkId, fhirSentinel) ? _value.linkId : linkId as FhirId?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : exclude as FhirBoolean?,
        definitionReference: identical(definitionReference, fhirSentinel)
            ? _value.definitionReference
            : definitionReference as Reference?,
        definitionCanonical: identical(definitionCanonical, fhirSentinel)
            ? _value.definitionCanonical
            : definitionCanonical as FhirCanonical?,
        definitionCodeableConcept:
            identical(definitionCodeableConcept, fhirSentinel)
                ? _value.definitionCodeableConcept
                : definitionCodeableConcept as CodeableConcept?,
        definitionExpression: identical(definitionExpression, fhirSentinel)
            ? _value.definitionExpression
            : definitionExpression as FhirExpression?,
        definitionId: identical(definitionId, fhirSentinel)
            ? _value.definitionId
            : definitionId as FhirId?,
        definitionByTypeAndValue:
            identical(definitionByTypeAndValue, fhirSentinel)
                ? _value.definitionByTypeAndValue
                : definitionByTypeAndValue
                    as EvidenceVariableDefinitionByTypeAndValue?,
        definitionByCombination:
            identical(definitionByCombination, fhirSentinel)
                ? _value.definitionByCombination
                : definitionByCombination
                    as EvidenceVariableDefinitionByCombination?,
        instancesX: identical(instancesX, fhirSentinel)
            ? _value.instancesX
            : instancesX as Quantity?,
        durationX: identical(durationX, fhirSentinel)
            ? _value.durationX
            : durationX as Quantity?,
        timeFromEvent: identical(timeFromEvent, fhirSentinel)
            ? _value.timeFromEvent
            : timeFromEvent as List<EvidenceVariableTimeFromEvent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableCharacteristicCopyWithExtension
    on EvidenceVariableCharacteristic {
  $EvidenceVariableCharacteristicCopyWith<EvidenceVariableCharacteristic>
      get copyWith => _$EvidenceVariableCharacteristicCopyWithImpl<
              EvidenceVariableCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableDefinitionByTypeAndValueCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? method,
    Reference? device,
    CodeableConcept? valueX,
    CodeableConcept? offset,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableDefinitionByTypeAndValueCopyWithImpl<T>
    implements $EvidenceVariableDefinitionByTypeAndValueCopyWith<T> {
  final EvidenceVariableDefinitionByTypeAndValue _value;
  final T Function(EvidenceVariableDefinitionByTypeAndValue) _then;

  _$EvidenceVariableDefinitionByTypeAndValueCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? method = fhirSentinel,
    Object? device = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? offset = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableDefinitionByTypeAndValue(
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
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as List<CodeableConcept>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as CodeableConcept?) ?? _value.valueX,
        offset: identical(offset, fhirSentinel)
            ? _value.offset
            : offset as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableDefinitionByTypeAndValueCopyWithExtension
    on EvidenceVariableDefinitionByTypeAndValue {
  $EvidenceVariableDefinitionByTypeAndValueCopyWith<
          EvidenceVariableDefinitionByTypeAndValue>
      get copyWith => _$EvidenceVariableDefinitionByTypeAndValueCopyWithImpl<
              EvidenceVariableDefinitionByTypeAndValue>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableDefinitionByCombinationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CharacteristicCombination? code,
    FhirPositiveInt? threshold,
    List<EvidenceVariableCharacteristic>? characteristic,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableDefinitionByCombinationCopyWithImpl<T>
    implements $EvidenceVariableDefinitionByCombinationCopyWith<T> {
  final EvidenceVariableDefinitionByCombination _value;
  final T Function(EvidenceVariableDefinitionByCombination) _then;

  _$EvidenceVariableDefinitionByCombinationCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? threshold = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableDefinitionByCombination(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CharacteristicCombination?) ?? _value.code,
        threshold: identical(threshold, fhirSentinel)
            ? _value.threshold
            : threshold as FhirPositiveInt?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : (characteristic as List<EvidenceVariableCharacteristic>?) ??
                _value.characteristic,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableDefinitionByCombinationCopyWithExtension
    on EvidenceVariableDefinitionByCombination {
  $EvidenceVariableDefinitionByCombinationCopyWith<
          EvidenceVariableDefinitionByCombination>
      get copyWith => _$EvidenceVariableDefinitionByCombinationCopyWithImpl<
              EvidenceVariableDefinitionByCombination>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableTimeFromEventCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    List<Annotation>? note,
    CodeableConcept? eventX,
    Quantity? quantity,
    Range? range,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableTimeFromEventCopyWithImpl<T>
    implements $EvidenceVariableTimeFromEventCopyWith<T> {
  final EvidenceVariableTimeFromEvent _value;
  final T Function(EvidenceVariableTimeFromEvent) _then;

  _$EvidenceVariableTimeFromEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? eventX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? range = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableTimeFromEvent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        eventX: identical(eventX, fhirSentinel)
            ? _value.eventX
            : eventX as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        range: identical(range, fhirSentinel) ? _value.range : range as Range?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableTimeFromEventCopyWithExtension
    on EvidenceVariableTimeFromEvent {
  $EvidenceVariableTimeFromEventCopyWith<EvidenceVariableTimeFromEvent>
      get copyWith => _$EvidenceVariableTimeFromEventCopyWithImpl<
              EvidenceVariableTimeFromEvent>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableCategoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCategoryCopyWithImpl<T>
    implements $EvidenceVariableCategoryCopyWith<T> {
  final EvidenceVariableCategory _value;
  final T Function(EvidenceVariableCategory) _then;

  _$EvidenceVariableCategoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableCategory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
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

extension EvidenceVariableCategoryCopyWithExtension
    on EvidenceVariableCategory {
  $EvidenceVariableCategoryCopyWith<EvidenceVariableCategory> get copyWith =>
      _$EvidenceVariableCategoryCopyWithImpl<EvidenceVariableCategory>(
        this,
        (value) => value,
      );
}
