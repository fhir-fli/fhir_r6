// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'practitioner.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PractitionerCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<PractitionerCommunication>? communication,
    bool? disallowExtensions,
  });
}

class _$PractitionerCopyWithImpl<T> implements $PractitionerCopyWith<T> {
  final Practitioner _value;
  final T Function(Practitioner) _then;

  _$PractitionerCopyWithImpl(this._value, this._then);

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
    Object? photo = fhirSentinel,
    Object? qualification = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Practitioner(
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
        photo: identical(photo, fhirSentinel)
            ? _value.photo
            : photo as List<Attachment>?,
        qualification: identical(qualification, fhirSentinel)
            ? _value.qualification
            : qualification as List<PractitionerQualification>?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<PractitionerCommunication>?,
      ),
    );
  }
}

extension PractitionerCopyWithExtension on Practitioner {
  $PractitionerCopyWith<Practitioner> get copyWith =>
      _$PractitionerCopyWithImpl<Practitioner>(
        this,
        (value) => value,
      );
}

abstract class $PractitionerQualificationCopyWith<T>
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

class _$PractitionerQualificationCopyWithImpl<T>
    implements $PractitionerQualificationCopyWith<T> {
  final PractitionerQualification _value;
  final T Function(PractitionerQualification) _then;

  _$PractitionerQualificationCopyWithImpl(this._value, this._then);

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
      PractitionerQualification(
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

extension PractitionerQualificationCopyWithExtension
    on PractitionerQualification {
  $PractitionerQualificationCopyWith<PractitionerQualification> get copyWith =>
      _$PractitionerQualificationCopyWithImpl<PractitionerQualification>(
        this,
        (value) => value,
      );
}

abstract class $PractitionerCommunicationCopyWith<T>
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

class _$PractitionerCommunicationCopyWithImpl<T>
    implements $PractitionerCommunicationCopyWith<T> {
  final PractitionerCommunication _value;
  final T Function(PractitionerCommunication) _then;

  _$PractitionerCommunicationCopyWithImpl(this._value, this._then);

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
      PractitionerCommunication(
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

extension PractitionerCommunicationCopyWithExtension
    on PractitionerCommunication {
  $PractitionerCommunicationCopyWith<PractitionerCommunication> get copyWith =>
      _$PractitionerCommunicationCopyWithImpl<PractitionerCommunication>(
        this,
        (value) => value,
      );
}
