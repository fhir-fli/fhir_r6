// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'extended_contact_detail.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ExtendedContactDetailCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? purpose,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    Address? address,
    Reference? organization,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$ExtendedContactDetailCopyWithImpl<T>
    implements $ExtendedContactDetailCopyWith<T> {
  final ExtendedContactDetail _value;
  final T Function(ExtendedContactDetail) _then;

  _$ExtendedContactDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? address = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ExtendedContactDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as CodeableConcept?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<HumanName>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as Address?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ExtendedContactDetailCopyWithExtension on ExtendedContactDetail {
  $ExtendedContactDetailCopyWith<ExtendedContactDetail> get copyWith =>
      _$ExtendedContactDetailCopyWithImpl<ExtendedContactDetail>(
        this,
        (value) => value,
      );
}
