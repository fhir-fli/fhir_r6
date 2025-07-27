// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_source_material.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstanceSourceMaterialCopyWith<T>
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
    CodeableConcept? sourceMaterialClass,
    CodeableConcept? sourceMaterialType,
    CodeableConcept? sourceMaterialState,
    Identifier? organismId,
    FhirString? organismName,
    List<Identifier>? parentSubstanceId,
    List<FhirString>? parentSubstanceName,
    List<CodeableConcept>? countryOfOrigin,
    List<FhirString>? geographicalLocation,
    CodeableConcept? developmentStage,
    List<SubstanceSourceMaterialFractionDescription>? fractionDescription,
    SubstanceSourceMaterialOrganism? organism,
    List<SubstanceSourceMaterialPartDescription>? partDescription,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialCopyWithImpl<T>
    implements $SubstanceSourceMaterialCopyWith<T> {
  final SubstanceSourceMaterial _value;
  final T Function(SubstanceSourceMaterial) _then;

  _$SubstanceSourceMaterialCopyWithImpl(this._value, this._then);

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
    Object? sourceMaterialClass = fhirSentinel,
    Object? sourceMaterialType = fhirSentinel,
    Object? sourceMaterialState = fhirSentinel,
    Object? organismId = fhirSentinel,
    Object? organismName = fhirSentinel,
    Object? parentSubstanceId = fhirSentinel,
    Object? parentSubstanceName = fhirSentinel,
    Object? countryOfOrigin = fhirSentinel,
    Object? geographicalLocation = fhirSentinel,
    Object? developmentStage = fhirSentinel,
    Object? fractionDescription = fhirSentinel,
    Object? organism = fhirSentinel,
    Object? partDescription = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterial(
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
        sourceMaterialClass: identical(sourceMaterialClass, fhirSentinel)
            ? _value.sourceMaterialClass
            : sourceMaterialClass as CodeableConcept?,
        sourceMaterialType: identical(sourceMaterialType, fhirSentinel)
            ? _value.sourceMaterialType
            : sourceMaterialType as CodeableConcept?,
        sourceMaterialState: identical(sourceMaterialState, fhirSentinel)
            ? _value.sourceMaterialState
            : sourceMaterialState as CodeableConcept?,
        organismId: identical(organismId, fhirSentinel)
            ? _value.organismId
            : organismId as Identifier?,
        organismName: identical(organismName, fhirSentinel)
            ? _value.organismName
            : organismName as FhirString?,
        parentSubstanceId: identical(parentSubstanceId, fhirSentinel)
            ? _value.parentSubstanceId
            : parentSubstanceId as List<Identifier>?,
        parentSubstanceName: identical(parentSubstanceName, fhirSentinel)
            ? _value.parentSubstanceName
            : parentSubstanceName as List<FhirString>?,
        countryOfOrigin: identical(countryOfOrigin, fhirSentinel)
            ? _value.countryOfOrigin
            : countryOfOrigin as List<CodeableConcept>?,
        geographicalLocation: identical(geographicalLocation, fhirSentinel)
            ? _value.geographicalLocation
            : geographicalLocation as List<FhirString>?,
        developmentStage: identical(developmentStage, fhirSentinel)
            ? _value.developmentStage
            : developmentStage as CodeableConcept?,
        fractionDescription: identical(fractionDescription, fhirSentinel)
            ? _value.fractionDescription
            : fractionDescription
                as List<SubstanceSourceMaterialFractionDescription>?,
        organism: identical(organism, fhirSentinel)
            ? _value.organism
            : organism as SubstanceSourceMaterialOrganism?,
        partDescription: identical(partDescription, fhirSentinel)
            ? _value.partDescription
            : partDescription as List<SubstanceSourceMaterialPartDescription>?,
      ),
    );
  }
}

extension SubstanceSourceMaterialCopyWithExtension on SubstanceSourceMaterial {
  $SubstanceSourceMaterialCopyWith<SubstanceSourceMaterial> get copyWith =>
      _$SubstanceSourceMaterialCopyWithImpl<SubstanceSourceMaterial>(
        this,
        (value) => value,
      );
}

abstract class $SubstanceSourceMaterialFractionDescriptionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? fraction,
    CodeableConcept? materialType,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialFractionDescriptionCopyWithImpl<T>
    implements $SubstanceSourceMaterialFractionDescriptionCopyWith<T> {
  final SubstanceSourceMaterialFractionDescription _value;
  final T Function(SubstanceSourceMaterialFractionDescription) _then;

  _$SubstanceSourceMaterialFractionDescriptionCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? fraction = fhirSentinel,
    Object? materialType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialFractionDescription(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        fraction: identical(fraction, fhirSentinel)
            ? _value.fraction
            : fraction as FhirString?,
        materialType: identical(materialType, fhirSentinel)
            ? _value.materialType
            : materialType as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialFractionDescriptionCopyWithExtension
    on SubstanceSourceMaterialFractionDescription {
  $SubstanceSourceMaterialFractionDescriptionCopyWith<
          SubstanceSourceMaterialFractionDescription>
      get copyWith => _$SubstanceSourceMaterialFractionDescriptionCopyWithImpl<
              SubstanceSourceMaterialFractionDescription>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceSourceMaterialOrganismCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? family,
    CodeableConcept? genus,
    CodeableConcept? species,
    CodeableConcept? intraspecificType,
    FhirString? intraspecificDescription,
    List<SubstanceSourceMaterialAuthor>? author,
    SubstanceSourceMaterialHybrid? hybrid,
    SubstanceSourceMaterialOrganismGeneral? organismGeneral,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialOrganismCopyWithImpl<T>
    implements $SubstanceSourceMaterialOrganismCopyWith<T> {
  final SubstanceSourceMaterialOrganism _value;
  final T Function(SubstanceSourceMaterialOrganism) _then;

  _$SubstanceSourceMaterialOrganismCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? family = fhirSentinel,
    Object? genus = fhirSentinel,
    Object? species = fhirSentinel,
    Object? intraspecificType = fhirSentinel,
    Object? intraspecificDescription = fhirSentinel,
    Object? author = fhirSentinel,
    Object? hybrid = fhirSentinel,
    Object? organismGeneral = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialOrganism(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        family: identical(family, fhirSentinel)
            ? _value.family
            : family as CodeableConcept?,
        genus: identical(genus, fhirSentinel)
            ? _value.genus
            : genus as CodeableConcept?,
        species: identical(species, fhirSentinel)
            ? _value.species
            : species as CodeableConcept?,
        intraspecificType: identical(intraspecificType, fhirSentinel)
            ? _value.intraspecificType
            : intraspecificType as CodeableConcept?,
        intraspecificDescription:
            identical(intraspecificDescription, fhirSentinel)
                ? _value.intraspecificDescription
                : intraspecificDescription as FhirString?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<SubstanceSourceMaterialAuthor>?,
        hybrid: identical(hybrid, fhirSentinel)
            ? _value.hybrid
            : hybrid as SubstanceSourceMaterialHybrid?,
        organismGeneral: identical(organismGeneral, fhirSentinel)
            ? _value.organismGeneral
            : organismGeneral as SubstanceSourceMaterialOrganismGeneral?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialOrganismCopyWithExtension
    on SubstanceSourceMaterialOrganism {
  $SubstanceSourceMaterialOrganismCopyWith<SubstanceSourceMaterialOrganism>
      get copyWith => _$SubstanceSourceMaterialOrganismCopyWithImpl<
              SubstanceSourceMaterialOrganism>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceSourceMaterialAuthorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? authorType,
    FhirString? authorDescription,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialAuthorCopyWithImpl<T>
    implements $SubstanceSourceMaterialAuthorCopyWith<T> {
  final SubstanceSourceMaterialAuthor _value;
  final T Function(SubstanceSourceMaterialAuthor) _then;

  _$SubstanceSourceMaterialAuthorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? authorType = fhirSentinel,
    Object? authorDescription = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialAuthor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        authorType: identical(authorType, fhirSentinel)
            ? _value.authorType
            : authorType as CodeableConcept?,
        authorDescription: identical(authorDescription, fhirSentinel)
            ? _value.authorDescription
            : authorDescription as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialAuthorCopyWithExtension
    on SubstanceSourceMaterialAuthor {
  $SubstanceSourceMaterialAuthorCopyWith<SubstanceSourceMaterialAuthor>
      get copyWith => _$SubstanceSourceMaterialAuthorCopyWithImpl<
              SubstanceSourceMaterialAuthor>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceSourceMaterialHybridCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? maternalOrganismId,
    FhirString? maternalOrganismName,
    FhirString? paternalOrganismId,
    FhirString? paternalOrganismName,
    CodeableConcept? hybridType,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialHybridCopyWithImpl<T>
    implements $SubstanceSourceMaterialHybridCopyWith<T> {
  final SubstanceSourceMaterialHybrid _value;
  final T Function(SubstanceSourceMaterialHybrid) _then;

  _$SubstanceSourceMaterialHybridCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? maternalOrganismId = fhirSentinel,
    Object? maternalOrganismName = fhirSentinel,
    Object? paternalOrganismId = fhirSentinel,
    Object? paternalOrganismName = fhirSentinel,
    Object? hybridType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialHybrid(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        maternalOrganismId: identical(maternalOrganismId, fhirSentinel)
            ? _value.maternalOrganismId
            : maternalOrganismId as FhirString?,
        maternalOrganismName: identical(maternalOrganismName, fhirSentinel)
            ? _value.maternalOrganismName
            : maternalOrganismName as FhirString?,
        paternalOrganismId: identical(paternalOrganismId, fhirSentinel)
            ? _value.paternalOrganismId
            : paternalOrganismId as FhirString?,
        paternalOrganismName: identical(paternalOrganismName, fhirSentinel)
            ? _value.paternalOrganismName
            : paternalOrganismName as FhirString?,
        hybridType: identical(hybridType, fhirSentinel)
            ? _value.hybridType
            : hybridType as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialHybridCopyWithExtension
    on SubstanceSourceMaterialHybrid {
  $SubstanceSourceMaterialHybridCopyWith<SubstanceSourceMaterialHybrid>
      get copyWith => _$SubstanceSourceMaterialHybridCopyWithImpl<
              SubstanceSourceMaterialHybrid>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceSourceMaterialOrganismGeneralCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? kingdom,
    CodeableConcept? phylum,
    CodeableConcept? class_,
    CodeableConcept? order,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialOrganismGeneralCopyWithImpl<T>
    implements $SubstanceSourceMaterialOrganismGeneralCopyWith<T> {
  final SubstanceSourceMaterialOrganismGeneral _value;
  final T Function(SubstanceSourceMaterialOrganismGeneral) _then;

  _$SubstanceSourceMaterialOrganismGeneralCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? kingdom = fhirSentinel,
    Object? phylum = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? order = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialOrganismGeneral(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        kingdom: identical(kingdom, fhirSentinel)
            ? _value.kingdom
            : kingdom as CodeableConcept?,
        phylum: identical(phylum, fhirSentinel)
            ? _value.phylum
            : phylum as CodeableConcept?,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as CodeableConcept?,
        order: identical(order, fhirSentinel)
            ? _value.order
            : order as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialOrganismGeneralCopyWithExtension
    on SubstanceSourceMaterialOrganismGeneral {
  $SubstanceSourceMaterialOrganismGeneralCopyWith<
          SubstanceSourceMaterialOrganismGeneral>
      get copyWith => _$SubstanceSourceMaterialOrganismGeneralCopyWithImpl<
              SubstanceSourceMaterialOrganismGeneral>(
            this,
            (value) => value,
          );
}

abstract class $SubstanceSourceMaterialPartDescriptionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? part_,
    CodeableConcept? partLocation,
    bool? disallowExtensions,
  });
}

class _$SubstanceSourceMaterialPartDescriptionCopyWithImpl<T>
    implements $SubstanceSourceMaterialPartDescriptionCopyWith<T> {
  final SubstanceSourceMaterialPartDescription _value;
  final T Function(SubstanceSourceMaterialPartDescription) _then;

  _$SubstanceSourceMaterialPartDescriptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? partLocation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstanceSourceMaterialPartDescription(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : part_ as CodeableConcept?,
        partLocation: identical(partLocation, fhirSentinel)
            ? _value.partLocation
            : partLocation as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstanceSourceMaterialPartDescriptionCopyWithExtension
    on SubstanceSourceMaterialPartDescription {
  $SubstanceSourceMaterialPartDescriptionCopyWith<
          SubstanceSourceMaterialPartDescription>
      get copyWith => _$SubstanceSourceMaterialPartDescriptionCopyWithImpl<
              SubstanceSourceMaterialPartDescription>(
            this,
            (value) => value,
          );
}
