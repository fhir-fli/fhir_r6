// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'naming_system.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NamingSystemCopyWith<T> extends $MetadataResourceCopyWith<T> {
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
    NamingSystemType? kind,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirString? responsible,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
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
    FhirString? usage,
    List<NamingSystemUniqueId>? uniqueId,
    bool? disallowExtensions,
  });
}

class _$NamingSystemCopyWithImpl<T> implements $NamingSystemCopyWith<T> {
  final NamingSystem _value;
  final T Function(NamingSystem) _then;

  _$NamingSystemCopyWithImpl(this._value, this._then);

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
    Object? kind = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
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
    Object? usage = fhirSentinel,
    Object? uniqueId = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NamingSystem(
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
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : (kind as NamingSystemType?) ?? _value.kind,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
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
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as FhirMarkdown?,
        uniqueId: identical(uniqueId, fhirSentinel)
            ? _value.uniqueId
            : (uniqueId as List<NamingSystemUniqueId>?) ?? _value.uniqueId,
      ),
    );
  }
}

extension NamingSystemCopyWithExtension on NamingSystem {
  $NamingSystemCopyWith<NamingSystem> get copyWith =>
      _$NamingSystemCopyWithImpl<NamingSystem>(
        this,
        (value) => value,
      );
}

abstract class $NamingSystemUniqueIdCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NamingSystemIdentifierType? type,
    FhirString? value,
    FhirBoolean? preferred,
    FhirString? comment,
    Period? period,
    FhirBoolean? authoritative,
    bool? disallowExtensions,
  });
}

class _$NamingSystemUniqueIdCopyWithImpl<T>
    implements $NamingSystemUniqueIdCopyWith<T> {
  final NamingSystemUniqueId _value;
  final T Function(NamingSystemUniqueId) _then;

  _$NamingSystemUniqueIdCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? value = fhirSentinel,
    Object? preferred = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? period = fhirSentinel,
    Object? authoritative = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      NamingSystemUniqueId(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as NamingSystemIdentifierType?) ?? _value.type,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        preferred: identical(preferred, fhirSentinel)
            ? _value.preferred
            : preferred as FhirBoolean?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        authoritative: identical(authoritative, fhirSentinel)
            ? _value.authoritative
            : authoritative as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NamingSystemUniqueIdCopyWithExtension on NamingSystemUniqueId {
  $NamingSystemUniqueIdCopyWith<NamingSystemUniqueId> get copyWith =>
      _$NamingSystemUniqueIdCopyWithImpl<NamingSystemUniqueId>(
        this,
        (value) => value,
      );
}
