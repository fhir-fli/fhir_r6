// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_nucleic_acid.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceNucleicAcidCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    FhirString? areaOfHybridisation,
    CodeableConcept? oligoNucleotideType,
    List<SubstanceNucleicAcidSubunit>? subunit,
    bool? disallowExtensions,
  });
}

class _$SubstanceNucleicAcidCopyWithImpl<T>
    implements $SubstanceNucleicAcidCopyWith<T> {
  final SubstanceNucleicAcid _value;
  final T Function(SubstanceNucleicAcid) _then;

  _$SubstanceNucleicAcidCopyWithImpl(this._value, this._then);

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
    Object? areaOfHybridisation = fhirSentinel,
    Object? oligoNucleotideType = fhirSentinel,
    Object? subunit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceNucleicAcid(
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
        areaOfHybridisation: identical(areaOfHybridisation, fhirSentinel)
            ? _value.areaOfHybridisation
            : areaOfHybridisation as FhirString?,
        oligoNucleotideType: identical(oligoNucleotideType, fhirSentinel)
            ? _value.oligoNucleotideType
            : oligoNucleotideType as CodeableConcept?,
        subunit: identical(subunit, fhirSentinel)
            ? _value.subunit
            : subunit as List<SubstanceNucleicAcidSubunit>?,
      ),
    );
  }
}

extension SubstanceNucleicAcidCopyWithExtension on SubstanceNucleicAcid {
  $SubstanceNucleicAcidCopyWith<SubstanceNucleicAcid> get copyWith =>
      _$SubstanceNucleicAcidCopyWithImpl<SubstanceNucleicAcid>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceNucleicAcidSubunitCopyWith<T>
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
    CodeableConcept? fivePrime,
    CodeableConcept? threePrime,
    List<SubstanceNucleicAcidLinkage>? linkage,
    List<SubstanceNucleicAcidSugar>? sugar,
    bool? disallowExtensions,
  });
}

class _$SubstanceNucleicAcidSubunitCopyWithImpl<T>
    implements $SubstanceNucleicAcidSubunitCopyWith<T> {
  final SubstanceNucleicAcidSubunit _value;
  final T Function(SubstanceNucleicAcidSubunit) _then;

  _$SubstanceNucleicAcidSubunitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? subunit = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? length = fhirSentinel,
    Object? sequenceAttachment = fhirSentinel,
    Object? fivePrime = fhirSentinel,
    Object? threePrime = fhirSentinel,
    Object? linkage = fhirSentinel,
    Object? sugar = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceNucleicAcidSubunit(
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
        fivePrime: identical(fivePrime, fhirSentinel)
            ? _value.fivePrime
            : fivePrime as CodeableConcept?,
        threePrime: identical(threePrime, fhirSentinel)
            ? _value.threePrime
            : threePrime as CodeableConcept?,
        linkage: identical(linkage, fhirSentinel)
            ? _value.linkage
            : linkage as List<SubstanceNucleicAcidLinkage>?,
        sugar: identical(sugar, fhirSentinel)
            ? _value.sugar
            : sugar as List<SubstanceNucleicAcidSugar>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceNucleicAcidSubunitCopyWithExtension
    on SubstanceNucleicAcidSubunit {
  $SubstanceNucleicAcidSubunitCopyWith<SubstanceNucleicAcidSubunit>
      get copyWith => _$SubstanceNucleicAcidSubunitCopyWithImpl<
              SubstanceNucleicAcidSubunit>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceNucleicAcidLinkageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? connectivity,
    Identifier? identifier,
    FhirString? name,
    FhirString? residueSite,
    bool? disallowExtensions,
  });
}

class _$SubstanceNucleicAcidLinkageCopyWithImpl<T>
    implements $SubstanceNucleicAcidLinkageCopyWith<T> {
  final SubstanceNucleicAcidLinkage _value;
  final T Function(SubstanceNucleicAcidLinkage) _then;

  _$SubstanceNucleicAcidLinkageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? connectivity = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? name = fhirSentinel,
    Object? residueSite = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceNucleicAcidLinkage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        connectivity: identical(connectivity, fhirSentinel)
            ? _value.connectivity
            : connectivity as FhirString?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        residueSite: identical(residueSite, fhirSentinel)
            ? _value.residueSite
            : residueSite as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceNucleicAcidLinkageCopyWithExtension
    on SubstanceNucleicAcidLinkage {
  $SubstanceNucleicAcidLinkageCopyWith<SubstanceNucleicAcidLinkage>
      get copyWith => _$SubstanceNucleicAcidLinkageCopyWithImpl<
              SubstanceNucleicAcidLinkage>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceNucleicAcidSugarCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirString? name,
    FhirString? residueSite,
    bool? disallowExtensions,
  });
}

class _$SubstanceNucleicAcidSugarCopyWithImpl<T>
    implements $SubstanceNucleicAcidSugarCopyWith<T> {
  final SubstanceNucleicAcidSugar _value;
  final T Function(SubstanceNucleicAcidSugar) _then;

  _$SubstanceNucleicAcidSugarCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? name = fhirSentinel,
    Object? residueSite = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceNucleicAcidSugar(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        residueSite: identical(residueSite, fhirSentinel)
            ? _value.residueSite
            : residueSite as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceNucleicAcidSugarCopyWithExtension
    on SubstanceNucleicAcidSugar {
  $SubstanceNucleicAcidSugarCopyWith<SubstanceNucleicAcidSugar> get copyWith =>
      _$SubstanceNucleicAcidSugarCopyWithImpl<SubstanceNucleicAcidSugar>(
        this,
        (value) => value,
      );
}
