// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_reference_information.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceReferenceInformationCopyWith<T>
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
    FhirString? comment,
    List<SubstanceReferenceInformationGene>? gene,
    List<SubstanceReferenceInformationGeneElement>? geneElement,
    List<SubstanceReferenceInformationTarget>? target,
    bool? disallowExtensions,
  });
}

class _$SubstanceReferenceInformationCopyWithImpl<T>
    implements $SubstanceReferenceInformationCopyWith<T> {
  final SubstanceReferenceInformation _value;
  final T Function(SubstanceReferenceInformation) _then;

  _$SubstanceReferenceInformationCopyWithImpl(this._value, this._then);

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
    Object? comment = fhirSentinel,
    Object? gene = fhirSentinel,
    Object? geneElement = fhirSentinel,
    Object? target = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceReferenceInformation(
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
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        gene: identical(gene, fhirSentinel)
            ? _value.gene
            : gene as List<SubstanceReferenceInformationGene>?,
        geneElement: identical(geneElement, fhirSentinel)
            ? _value.geneElement
            : geneElement as List<SubstanceReferenceInformationGeneElement>?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<SubstanceReferenceInformationTarget>?,
      ),
    );
  }
}

extension SubstanceReferenceInformationCopyWithExtension
    on SubstanceReferenceInformation {
  $SubstanceReferenceInformationCopyWith<SubstanceReferenceInformation>
      get copyWith => _$SubstanceReferenceInformationCopyWithImpl<
              SubstanceReferenceInformation>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceReferenceInformationGeneCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? geneSequenceOrigin,
    CodeableConcept? gene,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceReferenceInformationGeneCopyWithImpl<T>
    implements $SubstanceReferenceInformationGeneCopyWith<T> {
  final SubstanceReferenceInformationGene _value;
  final T Function(SubstanceReferenceInformationGene) _then;

  _$SubstanceReferenceInformationGeneCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? geneSequenceOrigin = fhirSentinel,
    Object? gene = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceReferenceInformationGene(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        geneSequenceOrigin: identical(geneSequenceOrigin, fhirSentinel)
            ? _value.geneSequenceOrigin
            : geneSequenceOrigin as CodeableConcept?,
        gene: identical(gene, fhirSentinel)
            ? _value.gene
            : gene as CodeableConcept?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceReferenceInformationGeneCopyWithExtension
    on SubstanceReferenceInformationGene {
  $SubstanceReferenceInformationGeneCopyWith<SubstanceReferenceInformationGene>
      get copyWith => _$SubstanceReferenceInformationGeneCopyWithImpl<
              SubstanceReferenceInformationGene>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceReferenceInformationGeneElementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? element,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceReferenceInformationGeneElementCopyWithImpl<T>
    implements $SubstanceReferenceInformationGeneElementCopyWith<T> {
  final SubstanceReferenceInformationGeneElement _value;
  final T Function(SubstanceReferenceInformationGeneElement) _then;

  _$SubstanceReferenceInformationGeneElementCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? element = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceReferenceInformationGeneElement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Identifier?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceReferenceInformationGeneElementCopyWithExtension
    on SubstanceReferenceInformationGeneElement {
  $SubstanceReferenceInformationGeneElementCopyWith<
          SubstanceReferenceInformationGeneElement>
      get copyWith => _$SubstanceReferenceInformationGeneElementCopyWithImpl<
              SubstanceReferenceInformationGeneElement>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceReferenceInformationTargetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? target,
    CodeableConcept? type,
    CodeableConcept? interaction,
    CodeableConcept? organism,
    CodeableConcept? organismType,
    Quantity? amountX,
    CodeableConcept? amountType,
    List<Reference>? source,
    bool? disallowExtensions,
  });
}

class _$SubstanceReferenceInformationTargetCopyWithImpl<T>
    implements $SubstanceReferenceInformationTargetCopyWith<T> {
  final SubstanceReferenceInformationTarget _value;
  final T Function(SubstanceReferenceInformationTarget) _then;

  _$SubstanceReferenceInformationTargetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? target = fhirSentinel,
    Object? type = fhirSentinel,
    Object? interaction = fhirSentinel,
    Object? organism = fhirSentinel,
    Object? organismType = fhirSentinel,
    Object? amountX = fhirSentinel,
    Object? amountType = fhirSentinel,
    Object? source = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceReferenceInformationTarget(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as Identifier?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        interaction: identical(interaction, fhirSentinel)
            ? _value.interaction
            : interaction as CodeableConcept?,
        organism: identical(organism, fhirSentinel)
            ? _value.organism
            : organism as CodeableConcept?,
        organismType: identical(organismType, fhirSentinel)
            ? _value.organismType
            : organismType as CodeableConcept?,
        amountX: identical(amountX, fhirSentinel)
            ? _value.amountX
            : amountX as Quantity?,
        amountType: identical(amountType, fhirSentinel)
            ? _value.amountType
            : amountType as CodeableConcept?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceReferenceInformationTargetCopyWithExtension
    on SubstanceReferenceInformationTarget {
  $SubstanceReferenceInformationTargetCopyWith<
          SubstanceReferenceInformationTarget>
      get copyWith => _$SubstanceReferenceInformationTargetCopyWithImpl<
              SubstanceReferenceInformationTarget>(
            this,
            (value) => value,
          );
}
