// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'formulary_item.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FormularyItemCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? code,
    FormularyItemStatusCodes? status,
    bool? disallowExtensions,
  });
}

class _$FormularyItemCopyWithImpl<T> implements $FormularyItemCopyWith<T> {
  final FormularyItem _value;
  final T Function(FormularyItem) _then;

  _$FormularyItemCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? status = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FormularyItem(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as FormularyItemStatusCodes?,
      ),
    );
  }
}

extension FormularyItemCopyWithExtension on FormularyItem {
  $FormularyItemCopyWith<FormularyItem> get copyWith =>
      _$FormularyItemCopyWithImpl<FormularyItem>(
        this,
        (value) => value,
      );
}
