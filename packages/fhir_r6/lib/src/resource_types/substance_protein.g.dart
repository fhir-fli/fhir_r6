// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_protein.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceProteinCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? sequenceType,
    FhirInteger? numberOfSubunits,
    List<FhirString>? disulfideLinkage,
    List<SubstanceProteinSubunit>? subunit,
    bool? disallowExtensions,
  });
}

class _$SubstanceProteinCopyWithImpl<T>
    implements $SubstanceProteinCopyWith<T> {
  final SubstanceProtein _value;
  final T Function(SubstanceProtein) _then;

  _$SubstanceProteinCopyWithImpl(this._value, this._then);

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
    Object? sequenceType = fhirSentinel,
    Object? numberOfSubunits = fhirSentinel,
    Object? disulfideLinkage = fhirSentinel,
    Object? subunit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceProtein(
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
        sequenceType: identical(sequenceType, fhirSentinel)
            ? _value.sequenceType
            : sequenceType as CodeableConcept?,
        numberOfSubunits: identical(numberOfSubunits, fhirSentinel)
            ? _value.numberOfSubunits
            : numberOfSubunits as FhirInteger?,
        disulfideLinkage: identical(disulfideLinkage, fhirSentinel)
            ? _value.disulfideLinkage
            : disulfideLinkage as List<FhirString>?,
        subunit: identical(subunit, fhirSentinel)
            ? _value.subunit
            : subunit as List<SubstanceProteinSubunit>?,
      ),
    );
  }
}

extension SubstanceProteinCopyWithExtension on SubstanceProtein {
  $SubstanceProteinCopyWith<SubstanceProtein> get copyWith =>
      _$SubstanceProteinCopyWithImpl<SubstanceProtein>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceProteinSubunitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? subunit,
    FhirString? sequence,
    FhirInteger? length,
    Attachment? sequenceAttachment,
    Identifier? nTerminalModificationId,
    FhirString? nTerminalModification,
    Identifier? cTerminalModificationId,
    FhirString? cTerminalModification,
    bool? disallowExtensions,
  });
}

class _$SubstanceProteinSubunitCopyWithImpl<T>
    implements $SubstanceProteinSubunitCopyWith<T> {
  final SubstanceProteinSubunit _value;
  final T Function(SubstanceProteinSubunit) _then;

  _$SubstanceProteinSubunitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? subunit = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? length = fhirSentinel,
    Object? sequenceAttachment = fhirSentinel,
    Object? nTerminalModificationId = fhirSentinel,
    Object? nTerminalModification = fhirSentinel,
    Object? cTerminalModificationId = fhirSentinel,
    Object? cTerminalModification = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceProteinSubunit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        subunit: identical(subunit, fhirSentinel)
            ? _value.subunit
            : subunit as FhirInteger?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : sequence as FhirString?,
        length: identical(length, fhirSentinel)
            ? _value.length
            : length as FhirInteger?,
        sequenceAttachment: identical(sequenceAttachment, fhirSentinel)
            ? _value.sequenceAttachment
            : sequenceAttachment as Attachment?,
        nTerminalModificationId:
            identical(nTerminalModificationId, fhirSentinel)
                ? _value.nTerminalModificationId
                : nTerminalModificationId as Identifier?,
        nTerminalModification: identical(nTerminalModification, fhirSentinel)
            ? _value.nTerminalModification
            : nTerminalModification as FhirString?,
        cTerminalModificationId:
            identical(cTerminalModificationId, fhirSentinel)
                ? _value.cTerminalModificationId
                : cTerminalModificationId as Identifier?,
        cTerminalModification: identical(cTerminalModification, fhirSentinel)
            ? _value.cTerminalModification
            : cTerminalModification as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceProteinSubunitCopyWithExtension on SubstanceProteinSubunit {
  $SubstanceProteinSubunitCopyWith<SubstanceProteinSubunit> get copyWith =>
      _$SubstanceProteinSubunitCopyWithImpl<SubstanceProteinSubunit>(
        this,
        (value) => value,
      );
}
