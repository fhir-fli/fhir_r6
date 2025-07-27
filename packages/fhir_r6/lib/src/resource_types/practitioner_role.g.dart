// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'practitioner_role.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PractitionerRoleCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Period? period,
    Reference? practitioner,
    Reference? organization,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ExtendedContactDetail>? contact,
    List<CodeableConcept>? characteristic,
    List<CodeableConcept>? communication,
    List<Availability>? availability,
    List<Reference>? endpoint,
    bool? disallowExtensions,
  });
}

class _$PractitionerRoleCopyWithImpl<T>
    implements $PractitionerRoleCopyWith<T> {
  final PractitionerRole _value;
  final T Function(PractitionerRole) _then;

  _$PractitionerRoleCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? practitioner = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? code = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? location = fhirSentinel,
    Object? healthcareService = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? communication = fhirSentinel,
    Object? availability = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PractitionerRole(
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
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        practitioner: identical(practitioner, fhirSentinel)
            ? _value.practitioner
            : practitioner as Reference?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as List<CodeableConcept>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<Reference>?,
        healthcareService: identical(healthcareService, fhirSentinel)
            ? _value.healthcareService
            : healthcareService as List<Reference>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ExtendedContactDetail>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<CodeableConcept>?,
        communication: identical(communication, fhirSentinel)
            ? _value.communication
            : communication as List<CodeableConcept>?,
        availability: identical(availability, fhirSentinel)
            ? _value.availability
            : availability as List<Availability>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
      ),
    );
  }
}

extension PractitionerRoleCopyWithExtension on PractitionerRole {
  $PractitionerRoleCopyWith<PractitionerRole> get copyWith =>
      _$PractitionerRoleCopyWithImpl<PractitionerRole>(
        this,
        (value) => value,
      );
}
