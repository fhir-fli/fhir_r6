// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'relative_time.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RelativeTimeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? contextReference,
    FhirCanonical? contextDefinition,
    FhirString? contextPath,
    CodeableConcept? contextCode,
    OffsetXRelativeTime? offsetX,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$RelativeTimeCopyWithImpl<T> implements $RelativeTimeCopyWith<T> {
  final RelativeTime _value;
  final T Function(RelativeTime) _then;

  _$RelativeTimeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? contextReference = fhirSentinel,
    Object? contextDefinition = fhirSentinel,
    Object? contextPath = fhirSentinel,
    Object? contextCode = fhirSentinel,
    Object? offsetX = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RelativeTime(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        contextReference: identical(contextReference, fhirSentinel)
            ? _value.contextReference
            : contextReference as Reference?,
        contextDefinition: identical(contextDefinition, fhirSentinel)
            ? _value.contextDefinition
            : contextDefinition as FhirCanonical?,
        contextPath: identical(contextPath, fhirSentinel)
            ? _value.contextPath
            : contextPath as FhirString?,
        contextCode: identical(contextCode, fhirSentinel)
            ? _value.contextCode
            : contextCode as CodeableConcept?,
        offsetX: identical(offsetX, fhirSentinel)
            ? _value.offsetX
            : offsetX as OffsetXRelativeTime?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RelativeTimeCopyWithExtension on RelativeTime {
  $RelativeTimeCopyWith<RelativeTime> get copyWith =>
      _$RelativeTimeCopyWithImpl<RelativeTime>(
        this,
        (value) => value,
      );
}
