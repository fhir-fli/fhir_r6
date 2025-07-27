// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'virtual_service_detail.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $VirtualServiceDetailCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? channelType,
    FhirUrl? addressX,
    List<FhirUrl>? additionalInfo,
    FhirPositiveInt? maxParticipants,
    FhirString? sessionKey,
    bool? disallowExtensions,
  });
}

class _$VirtualServiceDetailCopyWithImpl<T>
    implements $VirtualServiceDetailCopyWith<T> {
  final VirtualServiceDetail _value;
  final T Function(VirtualServiceDetail) _then;

  _$VirtualServiceDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? channelType = fhirSentinel,
    Object? addressX = fhirSentinel,
    Object? additionalInfo = fhirSentinel,
    Object? maxParticipants = fhirSentinel,
    Object? sessionKey = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VirtualServiceDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        channelType: identical(channelType, fhirSentinel)
            ? _value.channelType
            : channelType as Coding?,
        addressX: identical(addressX, fhirSentinel)
            ? _value.addressX
            : addressX as FhirUrl?,
        additionalInfo: identical(additionalInfo, fhirSentinel)
            ? _value.additionalInfo
            : additionalInfo as List<FhirUrl>?,
        maxParticipants: identical(maxParticipants, fhirSentinel)
            ? _value.maxParticipants
            : maxParticipants as FhirPositiveInt?,
        sessionKey: identical(sessionKey, fhirSentinel)
            ? _value.sessionKey
            : sessionKey as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VirtualServiceDetailCopyWithExtension on VirtualServiceDetail {
  $VirtualServiceDetailCopyWith<VirtualServiceDetail> get copyWith =>
      _$VirtualServiceDetailCopyWithImpl<VirtualServiceDetail>(
        this,
        (value) => value,
      );
}
