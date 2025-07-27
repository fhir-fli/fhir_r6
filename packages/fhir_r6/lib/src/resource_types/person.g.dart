// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'person.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PersonCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    AdministrativeGender? gender,
    FhirDate? birthDate,
    FhirBoolean? deceasedX,
    List<Address>? address,
    CodeableConcept? maritalStatus,
    List<Attachment>? photo,
    List<PersonCommunication>? communication,
    Reference? managingOrganization,
    List<PersonLink>? link,
    bool? disallowExtensions,
  });
}

class _$PersonCopyWithImpl<T> implements $PersonCopyWith<T> {
  final Person _value;
  final T Function(Person) _then;

  _$PersonCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? birthDate = fhirSentinel,
    Object? deceasedX = fhirSentinel,
    Object? address = fhirSentinel,
    Object? maritalStatus = fhirSentinel,
    Object? photo = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? managingOrganization = fhirSentinel,
    Object? link = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Person(
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
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<HumanName>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as AdministrativeGender?,
        birthDate: identical(birthDate, fhirSentinel)
            ? _value.birthDate
            : birthDate as FhirDate?,
        deceasedX: identical(deceasedX, fhirSentinel)
            ? _value.deceasedX
            : deceasedX as FhirBoolean?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as List<Address>?,
        maritalStatus: identical(maritalStatus, fhirSentinel)
            ? _value.maritalStatus
            : maritalStatus as CodeableConcept?,
        photo: identical(photo, fhirSentinel)
            ? _value.photo
            : photo as List<Attachment>?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<PersonCommunication>?,
        managingOrganization: identical(managingOrganization, fhirSentinel)
            ? _value.managingOrganization
            : managingOrganization as Reference?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<PersonLink>?,
      ),
    );
  }
}

extension PersonCopyWithExtension on Person {
  $PersonCopyWith<Person> get copyWith => _$PersonCopyWithImpl<Person>(
        this,
        (value) => value,
      );
}

abstract class $PersonCommunicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? language,
    FhirBoolean? preferred,
    bool? disallowExtensions,
  });
}

class _$PersonCommunicationCopyWithImpl<T>
    implements $PersonCommunicationCopyWith<T> {
  final PersonCommunication _value;
  final T Function(PersonCommunication) _then;

  _$PersonCommunicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? preferred = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PersonCommunication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : (language as CodeableConcept?) ?? _value.language,
        preferred: identical(preferred, fhirSentinel)
            ? _value.preferred
            : preferred as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PersonCommunicationCopyWithExtension on PersonCommunication {
  $PersonCommunicationCopyWith<PersonCommunication> get copyWith =>
      _$PersonCommunicationCopyWithImpl<PersonCommunication>(
        this,
        (value) => value,
      );
}

abstract class $PersonLinkCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? target,
    IdentityAssuranceLevel? assurance,
    bool? disallowExtensions,
  });
}

class _$PersonLinkCopyWithImpl<T> implements $PersonLinkCopyWith<T> {
  final PersonLink _value;
  final T Function(PersonLink) _then;

  _$PersonLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? target = fhirSentinel,
    Object? assurance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PersonLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : (target as Reference?) ?? _value.target,
        assurance: identical(assurance, fhirSentinel)
            ? _value.assurance
            : assurance as IdentityAssuranceLevel?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PersonLinkCopyWithExtension on PersonLink {
  $PersonLinkCopyWith<PersonLink> get copyWith =>
      _$PersonLinkCopyWithImpl<PersonLink>(
        this,
        (value) => value,
      );
}
