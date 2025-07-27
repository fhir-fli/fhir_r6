// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'message_header.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MessageHeaderCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Coding? eventX,
    List<MessageHeaderDestination>? destination,
    Reference? sender,
    Reference? author,
    MessageHeaderSource? source,
    Reference? responsible,
    CodeableConcept? reason,
    MessageHeaderResponse? response,
    List<Reference>? focus,
    FhirCanonical? definition,
    bool? disallowExtensions,
  });
}

class _$MessageHeaderCopyWithImpl<T> implements $MessageHeaderCopyWith<T> {
  final MessageHeader _value;
  final T Function(MessageHeader) _then;

  _$MessageHeaderCopyWithImpl(this._value, this._then);

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
    Object? eventX = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? sender = fhirSentinel,
    Object? author = fhirSentinel,
    Object? source = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? response = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageHeader(
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
        eventX: identical(eventX, fhirSentinel)
            ? _value.eventX
            : (eventX as Coding?) ?? _value.eventX,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as List<MessageHeaderDestination>?,
        sender: identical(sender, fhirSentinel)
            ? _value.sender
            : sender as Reference?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : (source as MessageHeaderSource?) ?? _value.source,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as MessageHeaderResponse?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirCanonical?,
      ),
    );
  }
}

extension MessageHeaderCopyWithExtension on MessageHeader {
  $MessageHeaderCopyWith<MessageHeader> get copyWith =>
      _$MessageHeaderCopyWithImpl<MessageHeader>(
        this,
        (value) => value,
      );
}

abstract class $MessageHeaderDestinationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? endpointX,
    FhirString? name,
    Reference? target,
    Reference? receiver,
    bool? disallowExtensions,
  });
}

class _$MessageHeaderDestinationCopyWithImpl<T>
    implements $MessageHeaderDestinationCopyWith<T> {
  final MessageHeaderDestination _value;
  final T Function(MessageHeaderDestination) _then;

  _$MessageHeaderDestinationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? endpointX = fhirSentinel,
    Object? name = fhirSentinel,
    Object? target = fhirSentinel,
    Object? receiver = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageHeaderDestination(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        endpointX: identical(endpointX, fhirSentinel)
            ? _value.endpointX
            : endpointX as FhirUrl?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as Reference?,
        receiver: identical(receiver, fhirSentinel)
            ? _value.receiver
            : receiver as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MessageHeaderDestinationCopyWithExtension
    on MessageHeaderDestination {
  $MessageHeaderDestinationCopyWith<MessageHeaderDestination> get copyWith =>
      _$MessageHeaderDestinationCopyWithImpl<MessageHeaderDestination>(
        this,
        (value) => value,
      );
}

abstract class $MessageHeaderSourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? endpointX,
    FhirString? name,
    FhirString? software,
    FhirString? version,
    ContactPoint? contact,
    bool? disallowExtensions,
  });
}

class _$MessageHeaderSourceCopyWithImpl<T>
    implements $MessageHeaderSourceCopyWith<T> {
  final MessageHeaderSource _value;
  final T Function(MessageHeaderSource) _then;

  _$MessageHeaderSourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? endpointX = fhirSentinel,
    Object? name = fhirSentinel,
    Object? software = fhirSentinel,
    Object? version = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageHeaderSource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        endpointX: identical(endpointX, fhirSentinel)
            ? _value.endpointX
            : endpointX as FhirUrl?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        software: identical(software, fhirSentinel)
            ? _value.software
            : software as FhirString?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as ContactPoint?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MessageHeaderSourceCopyWithExtension on MessageHeaderSource {
  $MessageHeaderSourceCopyWith<MessageHeaderSource> get copyWith =>
      _$MessageHeaderSourceCopyWithImpl<MessageHeaderSource>(
        this,
        (value) => value,
      );
}

abstract class $MessageHeaderResponseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    ResponseType? code,
    Reference? details,
    bool? disallowExtensions,
  });
}

class _$MessageHeaderResponseCopyWithImpl<T>
    implements $MessageHeaderResponseCopyWith<T> {
  final MessageHeaderResponse _value;
  final T Function(MessageHeaderResponse) _then;

  _$MessageHeaderResponseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? code = fhirSentinel,
    Object? details = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MessageHeaderResponse(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : (identifier as Identifier?) ?? _value.identifier,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as ResponseType?) ?? _value.code,
        details: identical(details, fhirSentinel)
            ? _value.details
            : details as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MessageHeaderResponseCopyWithExtension on MessageHeaderResponse {
  $MessageHeaderResponseCopyWith<MessageHeaderResponse> get copyWith =>
      _$MessageHeaderResponseCopyWithImpl<MessageHeaderResponse>(
        this,
        (value) => value,
      );
}
