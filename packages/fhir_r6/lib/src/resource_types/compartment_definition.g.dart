// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'compartment_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CompartmentDefinitionCopyWith<T>
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
    FhirMarkdown? purpose,
    CompartmentType? code,
    FhirBoolean? search,
    List<CompartmentDefinitionResource>? resource,
    List<CodeableConcept>? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$CompartmentDefinitionCopyWithImpl<T>
    implements $CompartmentDefinitionCopyWith<T> {
  final CompartmentDefinition _value;
  final T Function(CompartmentDefinition) _then;

  _$CompartmentDefinitionCopyWithImpl(this._value, this._then);

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
    Object? purpose = fhirSentinel,
    Object? code = fhirSentinel,
    Object? search = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompartmentDefinition(
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
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
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
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CompartmentType?) ?? _value.code,
        search: identical(search, fhirSentinel)
            ? _value.search
            : (search as FhirBoolean?) ?? _value.search,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as List<CompartmentDefinitionResource>?,
      ),
    );
  }
}

extension CompartmentDefinitionCopyWithExtension on CompartmentDefinition {
  $CompartmentDefinitionCopyWith<CompartmentDefinition> get copyWith =>
      _$CompartmentDefinitionCopyWithImpl<CompartmentDefinition>(
        this,
        (value) => value,
      );
}

abstract class $CompartmentDefinitionResourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    List<FhirString>? param,
    FhirString? documentation,
    FhirUri? startParam,
    FhirUri? endParam,
    bool? disallowExtensions,
  });
}

class _$CompartmentDefinitionResourceCopyWithImpl<T>
    implements $CompartmentDefinitionResourceCopyWith<T> {
  final CompartmentDefinitionResource _value;
  final T Function(CompartmentDefinitionResource) _then;

  _$CompartmentDefinitionResourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? param = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? startParam = fhirSentinel,
    Object? endParam = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompartmentDefinitionResource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as FhirCode?) ?? _value.code,
        param: identical(param, fhirSentinel)
            ? _value.param
            : param as List<FhirString>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        startParam: identical(startParam, fhirSentinel)
            ? _value.startParam
            : startParam as FhirUri?,
        endParam: identical(endParam, fhirSentinel)
            ? _value.endParam
            : endParam as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompartmentDefinitionResourceCopyWithExtension
    on CompartmentDefinitionResource {
  $CompartmentDefinitionResourceCopyWith<CompartmentDefinitionResource>
      get copyWith => _$CompartmentDefinitionResourceCopyWithImpl<
              CompartmentDefinitionResource>(
            this,
            (value) => value,
          );
}
