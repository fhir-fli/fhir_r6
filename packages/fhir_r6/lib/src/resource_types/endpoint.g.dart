// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'endpoint.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirEndpointCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    EndpointStatus? status,
    List<CodeableConcept>? connectionType,
    FhirString? name,
    FhirString? description,
    List<CodeableConcept>? environmentType,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    List<EndpointPayload>? payload,
    FhirUrl? address,
    List<FhirString>? header,
    bool? disallowExtensions,
  });
}

class _$FhirEndpointCopyWithImpl<T> implements $FhirEndpointCopyWith<T> {
  final FhirEndpoint _value;
  final T Function(FhirEndpoint) _then;

  _$FhirEndpointCopyWithImpl(this._value, this._then);

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
    Object? connectionType = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? environmentType = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? period = fhirSentinel,
    Object? payload = fhirSentinel,
    Object? address = fhirSentinel,
    Object? header = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirEndpoint(
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
            : (status as EndpointStatus?) ?? _value.status,
        connectionType: identical(connectionType, fhirSentinel)
            ? _value.connectionType
            : (connectionType as List<CodeableConcept>?) ??
                _value.connectionType,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        environmentType: identical(environmentType, fhirSentinel)
            ? _value.environmentType
            : environmentType as List<CodeableConcept>?,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        payload: identical(payload, fhirSentinel)
            ? _value.payload
            : payload as List<EndpointPayload>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : (address as FhirUrl?) ?? _value.address,
        header: identical(header, fhirSentinel)
            ? _value.header
            : header as List<FhirString>?,
      ),
    );
  }
}

extension FhirEndpointCopyWithExtension on FhirEndpoint {
  $FhirEndpointCopyWith<FhirEndpoint> get copyWith =>
      _$FhirEndpointCopyWithImpl<FhirEndpoint>(
        this,
        (value) => value,
      );
}

abstract class $EndpointPayloadCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    List<FhirCode>? mimeType,
    bool? disallowExtensions,
  });
}

class _$EndpointPayloadCopyWithImpl<T> implements $EndpointPayloadCopyWith<T> {
  final EndpointPayload _value;
  final T Function(EndpointPayload) _then;

  _$EndpointPayloadCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? mimeType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EndpointPayload(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        mimeType: identical(mimeType, fhirSentinel)
            ? _value.mimeType
            : mimeType as List<FhirCode>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EndpointPayloadCopyWithExtension on EndpointPayload {
  $EndpointPayloadCopyWith<EndpointPayload> get copyWith =>
      _$EndpointPayloadCopyWithImpl<EndpointPayload>(
        this,
        (value) => value,
      );
}
