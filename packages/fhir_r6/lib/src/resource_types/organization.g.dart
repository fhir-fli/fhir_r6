// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'organization.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $OrganizationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirBoolean? active,
    List<CodeableConcept>? type,
    FhirString? name,
    List<FhirString>? alias,
    FhirMarkdown? description,
    List<ExtendedContactDetail>? contact,
    Reference? partOf,
    List<Reference>? endpoint,
    List<OrganizationQualification>? qualification,
    bool? disallowExtensions,
  });
}

class _$OrganizationCopyWithImpl<T> implements $OrganizationCopyWith<T> {
  final Organization _value;
  final T Function(Organization) _then;

  _$OrganizationCopyWithImpl(this._value, this._then);

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
    Object? active = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? description = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? qualification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Organization(
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
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ExtendedContactDetail>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as Reference?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        qualification: identical(qualification, fhirSentinel)
            ? _value.qualification
            : qualification as List<OrganizationQualification>?,
      ),
    );
  }
}

extension OrganizationCopyWithExtension on Organization {
  $OrganizationCopyWith<Organization> get copyWith =>
      _$OrganizationCopyWithImpl<Organization>(
        this,
        (value) => value,
      );
}

abstract class $OrganizationQualificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    Period? period,
    Reference? issuer,
    bool? disallowExtensions,
  });
}

class _$OrganizationQualificationCopyWithImpl<T>
    implements $OrganizationQualificationCopyWith<T> {
  final OrganizationQualification _value;
  final T Function(OrganizationQualification) _then;

  _$OrganizationQualificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? code = fhirSentinel,
    Object? period = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      OrganizationQualification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : issuer as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension OrganizationQualificationCopyWithExtension
    on OrganizationQualification {
  $OrganizationQualificationCopyWith<OrganizationQualification> get copyWith =>
      _$OrganizationQualificationCopyWithImpl<OrganizationQualification>(
        this,
        (value) => value,
      );
}
