// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'molecular_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MolecularDefinitionCopyWith<T>
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
    List<Identifier>? identifier,
    FhirMarkdown? description,
    CodeableConcept? moleculeType,
    List<CodeableConcept>? type,
    List<CodeableConcept>? topology,
    List<Reference>? member,
    List<MolecularDefinitionLocation>? location,
    List<MolecularDefinitionRepresentation>? representation,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCopyWithImpl<T>
    implements $MolecularDefinitionCopyWith<T> {
  final MolecularDefinition _value;
  final T Function(MolecularDefinition) _then;

  _$MolecularDefinitionCopyWithImpl(this._value, this._then);

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
    Object? description = fhirSentinel,
    Object? moleculeType = fhirSentinel,
    Object? type = fhirSentinel,
    Object? topology = fhirSentinel,
    Object? member = fhirSentinel,
    Object? location = fhirSentinel,
    Object? representation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinition(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        moleculeType: identical(moleculeType, fhirSentinel)
            ? _value.moleculeType
            : moleculeType as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        topology: identical(topology, fhirSentinel)
            ? _value.topology
            : topology as List<CodeableConcept>?,
        member: identical(member, fhirSentinel)
            ? _value.member
            : member as List<Reference>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<MolecularDefinitionLocation>?,
        representation: identical(representation, fhirSentinel)
            ? _value.representation
            : representation as List<MolecularDefinitionRepresentation>?,
      ),
    );
  }
}

extension MolecularDefinitionCopyWithExtension on MolecularDefinition {
  $MolecularDefinitionCopyWith<MolecularDefinition> get copyWith =>
      _$MolecularDefinitionCopyWithImpl<MolecularDefinition>(
        this,
        (value) => value,
      );
}

abstract class $MolecularDefinitionLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MolecularDefinitionSequenceLocation? sequenceLocation,
    MolecularDefinitionCytobandLocation? cytobandLocation,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionLocationCopyWithImpl<T>
    implements $MolecularDefinitionLocationCopyWith<T> {
  final MolecularDefinitionLocation _value;
  final T Function(MolecularDefinitionLocation) _then;

  _$MolecularDefinitionLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceLocation = fhirSentinel,
    Object? cytobandLocation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceLocation: identical(sequenceLocation, fhirSentinel)
            ? _value.sequenceLocation
            : sequenceLocation as MolecularDefinitionSequenceLocation?,
        cytobandLocation: identical(cytobandLocation, fhirSentinel)
            ? _value.cytobandLocation
            : cytobandLocation as MolecularDefinitionCytobandLocation?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionLocationCopyWithExtension
    on MolecularDefinitionLocation {
  $MolecularDefinitionLocationCopyWith<MolecularDefinitionLocation>
      get copyWith => _$MolecularDefinitionLocationCopyWithImpl<
              MolecularDefinitionLocation>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionSequenceLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? sequenceContext,
    MolecularDefinitionCoordinateInterval? coordinateInterval,
    CodeableConcept? strand,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionSequenceLocationCopyWithImpl<T>
    implements $MolecularDefinitionSequenceLocationCopyWith<T> {
  final MolecularDefinitionSequenceLocation _value;
  final T Function(MolecularDefinitionSequenceLocation) _then;

  _$MolecularDefinitionSequenceLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceContext = fhirSentinel,
    Object? coordinateInterval = fhirSentinel,
    Object? strand = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionSequenceLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceContext: identical(sequenceContext, fhirSentinel)
            ? _value.sequenceContext
            : (sequenceContext as Reference?) ?? _value.sequenceContext,
        coordinateInterval: identical(coordinateInterval, fhirSentinel)
            ? _value.coordinateInterval
            : coordinateInterval as MolecularDefinitionCoordinateInterval?,
        strand: identical(strand, fhirSentinel)
            ? _value.strand
            : strand as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionSequenceLocationCopyWithExtension
    on MolecularDefinitionSequenceLocation {
  $MolecularDefinitionSequenceLocationCopyWith<
          MolecularDefinitionSequenceLocation>
      get copyWith => _$MolecularDefinitionSequenceLocationCopyWithImpl<
              MolecularDefinitionSequenceLocation>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCoordinateIntervalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MolecularDefinitionCoordinateSystem? coordinateSystem,
    StartXMolecularDefinitionLocationSequenceLocationCoordinateInterval? startX,
    EndXMolecularDefinitionLocationSequenceLocationCoordinateInterval? endX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateIntervalCopyWithImpl<T>
    implements $MolecularDefinitionCoordinateIntervalCopyWith<T> {
  final MolecularDefinitionCoordinateInterval _value;
  final T Function(MolecularDefinitionCoordinateInterval) _then;

  _$MolecularDefinitionCoordinateIntervalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
    Object? startX = fhirSentinel,
    Object? endX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateInterval(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : coordinateSystem as MolecularDefinitionCoordinateSystem?,
        startX: identical(startX, fhirSentinel)
            ? _value.startX
            : startX
                as StartXMolecularDefinitionLocationSequenceLocationCoordinateInterval?,
        endX: identical(endX, fhirSentinel)
            ? _value.endX
            : endX
                as EndXMolecularDefinitionLocationSequenceLocationCoordinateInterval?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateIntervalCopyWithExtension
    on MolecularDefinitionCoordinateInterval {
  $MolecularDefinitionCoordinateIntervalCopyWith<
          MolecularDefinitionCoordinateInterval>
      get copyWith => _$MolecularDefinitionCoordinateIntervalCopyWithImpl<
              MolecularDefinitionCoordinateInterval>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCoordinateSystemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? system,
    CodeableConcept? origin,
    CodeableConcept? normalizationMethod,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateSystemCopyWithImpl<T>
    implements $MolecularDefinitionCoordinateSystemCopyWith<T> {
  final MolecularDefinitionCoordinateSystem _value;
  final T Function(MolecularDefinitionCoordinateSystem) _then;

  _$MolecularDefinitionCoordinateSystemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? system = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? normalizationMethod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateSystem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as CodeableConcept?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as CodeableConcept?,
        normalizationMethod: identical(normalizationMethod, fhirSentinel)
            ? _value.normalizationMethod
            : normalizationMethod as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateSystemCopyWithExtension
    on MolecularDefinitionCoordinateSystem {
  $MolecularDefinitionCoordinateSystemCopyWith<
          MolecularDefinitionCoordinateSystem>
      get copyWith => _$MolecularDefinitionCoordinateSystemCopyWithImpl<
              MolecularDefinitionCoordinateSystem>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCytobandLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MolecularDefinitionGenomeAssembly? genomeAssembly,
    MolecularDefinitionCytobandInterval? cytobandInterval,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCytobandLocationCopyWithImpl<T>
    implements $MolecularDefinitionCytobandLocationCopyWith<T> {
  final MolecularDefinitionCytobandLocation _value;
  final T Function(MolecularDefinitionCytobandLocation) _then;

  _$MolecularDefinitionCytobandLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? genomeAssembly = fhirSentinel,
    Object? cytobandInterval = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCytobandLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        genomeAssembly: identical(genomeAssembly, fhirSentinel)
            ? _value.genomeAssembly
            : (genomeAssembly as MolecularDefinitionGenomeAssembly?) ??
                _value.genomeAssembly,
        cytobandInterval: identical(cytobandInterval, fhirSentinel)
            ? _value.cytobandInterval
            : (cytobandInterval as MolecularDefinitionCytobandInterval?) ??
                _value.cytobandInterval,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCytobandLocationCopyWithExtension
    on MolecularDefinitionCytobandLocation {
  $MolecularDefinitionCytobandLocationCopyWith<
          MolecularDefinitionCytobandLocation>
      get copyWith => _$MolecularDefinitionCytobandLocationCopyWithImpl<
              MolecularDefinitionCytobandLocation>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionGenomeAssemblyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? organism,
    CodeableConcept? build,
    CodeableConcept? accession,
    DescriptionXMolecularDefinitionGenomeAssembly? descriptionX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionGenomeAssemblyCopyWithImpl<T>
    implements $MolecularDefinitionGenomeAssemblyCopyWith<T> {
  final MolecularDefinitionGenomeAssembly _value;
  final T Function(MolecularDefinitionGenomeAssembly) _then;

  _$MolecularDefinitionGenomeAssemblyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? organism = fhirSentinel,
    Object? build = fhirSentinel,
    Object? accession = fhirSentinel,
    Object? descriptionX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionGenomeAssembly(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        organism: identical(organism, fhirSentinel)
            ? _value.organism
            : organism as CodeableConcept?,
        build: identical(build, fhirSentinel)
            ? _value.build
            : build as CodeableConcept?,
        accession: identical(accession, fhirSentinel)
            ? _value.accession
            : accession as CodeableConcept?,
        descriptionX: identical(descriptionX, fhirSentinel)
            ? _value.descriptionX
            : descriptionX as DescriptionXMolecularDefinitionGenomeAssembly?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionGenomeAssemblyCopyWithExtension
    on MolecularDefinitionGenomeAssembly {
  $MolecularDefinitionGenomeAssemblyCopyWith<MolecularDefinitionGenomeAssembly>
      get copyWith => _$MolecularDefinitionGenomeAssemblyCopyWithImpl<
              MolecularDefinitionGenomeAssembly>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCytobandIntervalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? chromosome,
    MolecularDefinitionStartCytoband? startCytoband,
    MolecularDefinitionEndCytoband? endCytoband,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCytobandIntervalCopyWithImpl<T>
    implements $MolecularDefinitionCytobandIntervalCopyWith<T> {
  final MolecularDefinitionCytobandInterval _value;
  final T Function(MolecularDefinitionCytobandInterval) _then;

  _$MolecularDefinitionCytobandIntervalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? chromosome = fhirSentinel,
    Object? startCytoband = fhirSentinel,
    Object? endCytoband = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCytobandInterval(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        chromosome: identical(chromosome, fhirSentinel)
            ? _value.chromosome
            : (chromosome as CodeableConcept?) ?? _value.chromosome,
        startCytoband: identical(startCytoband, fhirSentinel)
            ? _value.startCytoband
            : startCytoband as MolecularDefinitionStartCytoband?,
        endCytoband: identical(endCytoband, fhirSentinel)
            ? _value.endCytoband
            : endCytoband as MolecularDefinitionEndCytoband?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCytobandIntervalCopyWithExtension
    on MolecularDefinitionCytobandInterval {
  $MolecularDefinitionCytobandIntervalCopyWith<
          MolecularDefinitionCytobandInterval>
      get copyWith => _$MolecularDefinitionCytobandIntervalCopyWithImpl<
              MolecularDefinitionCytobandInterval>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionStartCytobandCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ArmXMolecularDefinitionStartCytoband? armX,
    RegionXMolecularDefinitionStartCytoband? regionX,
    BandXMolecularDefinitionStartCytoband? bandX,
    SubBandXMolecularDefinitionStartCytoband? subBandX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionStartCytobandCopyWithImpl<T>
    implements $MolecularDefinitionStartCytobandCopyWith<T> {
  final MolecularDefinitionStartCytoband _value;
  final T Function(MolecularDefinitionStartCytoband) _then;

  _$MolecularDefinitionStartCytobandCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? armX = fhirSentinel,
    Object? regionX = fhirSentinel,
    Object? bandX = fhirSentinel,
    Object? subBandX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionStartCytoband(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        armX: identical(armX, fhirSentinel)
            ? _value.armX
            : armX as ArmXMolecularDefinitionStartCytoband?,
        regionX: identical(regionX, fhirSentinel)
            ? _value.regionX
            : regionX as RegionXMolecularDefinitionStartCytoband?,
        bandX: identical(bandX, fhirSentinel)
            ? _value.bandX
            : bandX as BandXMolecularDefinitionStartCytoband?,
        subBandX: identical(subBandX, fhirSentinel)
            ? _value.subBandX
            : subBandX as SubBandXMolecularDefinitionStartCytoband?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionStartCytobandCopyWithExtension
    on MolecularDefinitionStartCytoband {
  $MolecularDefinitionStartCytobandCopyWith<MolecularDefinitionStartCytoband>
      get copyWith => _$MolecularDefinitionStartCytobandCopyWithImpl<
              MolecularDefinitionStartCytoband>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionEndCytobandCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ArmXMolecularDefinitionEndCytoband? armX,
    RegionXMolecularDefinitionEndCytoband? regionX,
    BandXMolecularDefinitionEndCytoband? bandX,
    SubBandXMolecularDefinitionEndCytoband? subBandX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionEndCytobandCopyWithImpl<T>
    implements $MolecularDefinitionEndCytobandCopyWith<T> {
  final MolecularDefinitionEndCytoband _value;
  final T Function(MolecularDefinitionEndCytoband) _then;

  _$MolecularDefinitionEndCytobandCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? armX = fhirSentinel,
    Object? regionX = fhirSentinel,
    Object? bandX = fhirSentinel,
    Object? subBandX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionEndCytoband(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        armX: identical(armX, fhirSentinel)
            ? _value.armX
            : armX as ArmXMolecularDefinitionEndCytoband?,
        regionX: identical(regionX, fhirSentinel)
            ? _value.regionX
            : regionX as RegionXMolecularDefinitionEndCytoband?,
        bandX: identical(bandX, fhirSentinel)
            ? _value.bandX
            : bandX as BandXMolecularDefinitionEndCytoband?,
        subBandX: identical(subBandX, fhirSentinel)
            ? _value.subBandX
            : subBandX as SubBandXMolecularDefinitionEndCytoband?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionEndCytobandCopyWithExtension
    on MolecularDefinitionEndCytoband {
  $MolecularDefinitionEndCytobandCopyWith<MolecularDefinitionEndCytoband>
      get copyWith => _$MolecularDefinitionEndCytobandCopyWithImpl<
              MolecularDefinitionEndCytoband>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionRepresentationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? focus,
    List<CodeableConcept>? code,
    MolecularDefinitionLiteral? literal,
    Reference? resolvable,
    MolecularDefinitionExtracted? extracted,
    MolecularDefinitionRepeated? repeated,
    MolecularDefinitionConcatenated? concatenated,
    MolecularDefinitionRelative? relative,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionRepresentationCopyWithImpl<T>
    implements $MolecularDefinitionRepresentationCopyWith<T> {
  final MolecularDefinitionRepresentation _value;
  final T Function(MolecularDefinitionRepresentation) _then;

  _$MolecularDefinitionRepresentationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? code = fhirSentinel,
    Object? literal = fhirSentinel,
    Object? resolvable = fhirSentinel,
    Object? extracted = fhirSentinel,
    Object? repeated = fhirSentinel,
    Object? concatenated = fhirSentinel,
    Object? relative = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionRepresentation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as CodeableConcept?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        literal: identical(literal, fhirSentinel)
            ? _value.literal
            : literal as MolecularDefinitionLiteral?,
        resolvable: identical(resolvable, fhirSentinel)
            ? _value.resolvable
            : resolvable as Reference?,
        extracted: identical(extracted, fhirSentinel)
            ? _value.extracted
            : extracted as MolecularDefinitionExtracted?,
        repeated: identical(repeated, fhirSentinel)
            ? _value.repeated
            : repeated as MolecularDefinitionRepeated?,
        concatenated: identical(concatenated, fhirSentinel)
            ? _value.concatenated
            : concatenated as MolecularDefinitionConcatenated?,
        relative: identical(relative, fhirSentinel)
            ? _value.relative
            : relative as MolecularDefinitionRelative?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionRepresentationCopyWithExtension
    on MolecularDefinitionRepresentation {
  $MolecularDefinitionRepresentationCopyWith<MolecularDefinitionRepresentation>
      get copyWith => _$MolecularDefinitionRepresentationCopyWithImpl<
              MolecularDefinitionRepresentation>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionLiteralCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? encoding,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionLiteralCopyWithImpl<T>
    implements $MolecularDefinitionLiteralCopyWith<T> {
  final MolecularDefinitionLiteral _value;
  final T Function(MolecularDefinitionLiteral) _then;

  _$MolecularDefinitionLiteralCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? encoding = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionLiteral(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        encoding: identical(encoding, fhirSentinel)
            ? _value.encoding
            : encoding as CodeableConcept?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionLiteralCopyWithExtension
    on MolecularDefinitionLiteral {
  $MolecularDefinitionLiteralCopyWith<MolecularDefinitionLiteral>
      get copyWith =>
          _$MolecularDefinitionLiteralCopyWithImpl<MolecularDefinitionLiteral>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionExtractedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? startingMolecule,
    MolecularDefinitionCoordinateInterval? coordinateInterval,
    FhirBoolean? reverseComplement,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionExtractedCopyWithImpl<T>
    implements $MolecularDefinitionExtractedCopyWith<T> {
  final MolecularDefinitionExtracted _value;
  final T Function(MolecularDefinitionExtracted) _then;

  _$MolecularDefinitionExtractedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? startingMolecule = fhirSentinel,
    Object? coordinateInterval = fhirSentinel,
    Object? reverseComplement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionExtracted(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        startingMolecule: identical(startingMolecule, fhirSentinel)
            ? _value.startingMolecule
            : (startingMolecule as Reference?) ?? _value.startingMolecule,
        coordinateInterval: identical(coordinateInterval, fhirSentinel)
            ? _value.coordinateInterval
            : coordinateInterval as MolecularDefinitionCoordinateInterval?,
        reverseComplement: identical(reverseComplement, fhirSentinel)
            ? _value.reverseComplement
            : reverseComplement as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionExtractedCopyWithExtension
    on MolecularDefinitionExtracted {
  $MolecularDefinitionExtractedCopyWith<MolecularDefinitionExtracted>
      get copyWith => _$MolecularDefinitionExtractedCopyWithImpl<
              MolecularDefinitionExtracted>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCoordinateInterval1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MolecularDefinitionCoordinateSystem? coordinateSystem,
    StartXMolecularDefinitionRepresentationExtractedCoordinateInterval? startX,
    EndXMolecularDefinitionRepresentationExtractedCoordinateInterval? endX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateInterval1CopyWithImpl<T>
    implements $MolecularDefinitionCoordinateInterval1CopyWith<T> {
  final MolecularDefinitionCoordinateInterval1 _value;
  final T Function(MolecularDefinitionCoordinateInterval1) _then;

  _$MolecularDefinitionCoordinateInterval1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
    Object? startX = fhirSentinel,
    Object? endX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateInterval1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : coordinateSystem as MolecularDefinitionCoordinateSystem?,
        startX: identical(startX, fhirSentinel)
            ? _value.startX
            : startX
                as StartXMolecularDefinitionRepresentationExtractedCoordinateInterval?,
        endX: identical(endX, fhirSentinel)
            ? _value.endX
            : endX
                as EndXMolecularDefinitionRepresentationExtractedCoordinateInterval?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateInterval1CopyWithExtension
    on MolecularDefinitionCoordinateInterval1 {
  $MolecularDefinitionCoordinateInterval1CopyWith<
          MolecularDefinitionCoordinateInterval1>
      get copyWith => _$MolecularDefinitionCoordinateInterval1CopyWithImpl<
              MolecularDefinitionCoordinateInterval1>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCoordinateSystem1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? system,
    CodeableConcept? origin,
    CodeableConcept? normalizationMethod,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateSystem1CopyWithImpl<T>
    implements $MolecularDefinitionCoordinateSystem1CopyWith<T> {
  final MolecularDefinitionCoordinateSystem1 _value;
  final T Function(MolecularDefinitionCoordinateSystem1) _then;

  _$MolecularDefinitionCoordinateSystem1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? system = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? normalizationMethod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateSystem1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as CodeableConcept?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as CodeableConcept?,
        normalizationMethod: identical(normalizationMethod, fhirSentinel)
            ? _value.normalizationMethod
            : normalizationMethod as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateSystem1CopyWithExtension
    on MolecularDefinitionCoordinateSystem1 {
  $MolecularDefinitionCoordinateSystem1CopyWith<
          MolecularDefinitionCoordinateSystem1>
      get copyWith => _$MolecularDefinitionCoordinateSystem1CopyWithImpl<
              MolecularDefinitionCoordinateSystem1>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionRepeatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? sequenceMotif,
    FhirInteger? copyCount,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionRepeatedCopyWithImpl<T>
    implements $MolecularDefinitionRepeatedCopyWith<T> {
  final MolecularDefinitionRepeated _value;
  final T Function(MolecularDefinitionRepeated) _then;

  _$MolecularDefinitionRepeatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceMotif = fhirSentinel,
    Object? copyCount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionRepeated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceMotif: identical(sequenceMotif, fhirSentinel)
            ? _value.sequenceMotif
            : (sequenceMotif as Reference?) ?? _value.sequenceMotif,
        copyCount: identical(copyCount, fhirSentinel)
            ? _value.copyCount
            : (copyCount as FhirInteger?) ?? _value.copyCount,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionRepeatedCopyWithExtension
    on MolecularDefinitionRepeated {
  $MolecularDefinitionRepeatedCopyWith<MolecularDefinitionRepeated>
      get copyWith => _$MolecularDefinitionRepeatedCopyWithImpl<
              MolecularDefinitionRepeated>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionConcatenatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MolecularDefinitionSequenceElement>? sequenceElement,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionConcatenatedCopyWithImpl<T>
    implements $MolecularDefinitionConcatenatedCopyWith<T> {
  final MolecularDefinitionConcatenated _value;
  final T Function(MolecularDefinitionConcatenated) _then;

  _$MolecularDefinitionConcatenatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceElement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionConcatenated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceElement: identical(sequenceElement, fhirSentinel)
            ? _value.sequenceElement
            : (sequenceElement as List<MolecularDefinitionSequenceElement>?) ??
                _value.sequenceElement,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionConcatenatedCopyWithExtension
    on MolecularDefinitionConcatenated {
  $MolecularDefinitionConcatenatedCopyWith<MolecularDefinitionConcatenated>
      get copyWith => _$MolecularDefinitionConcatenatedCopyWithImpl<
              MolecularDefinitionConcatenated>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionSequenceElementCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? sequence,
    FhirInteger? ordinalIndex,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionSequenceElementCopyWithImpl<T>
    implements $MolecularDefinitionSequenceElementCopyWith<T> {
  final MolecularDefinitionSequenceElement _value;
  final T Function(MolecularDefinitionSequenceElement) _then;

  _$MolecularDefinitionSequenceElementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? ordinalIndex = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionSequenceElement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as Reference?) ?? _value.sequence,
        ordinalIndex: identical(ordinalIndex, fhirSentinel)
            ? _value.ordinalIndex
            : (ordinalIndex as FhirInteger?) ?? _value.ordinalIndex,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionSequenceElementCopyWithExtension
    on MolecularDefinitionSequenceElement {
  $MolecularDefinitionSequenceElementCopyWith<
          MolecularDefinitionSequenceElement>
      get copyWith => _$MolecularDefinitionSequenceElementCopyWithImpl<
              MolecularDefinitionSequenceElement>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionRelativeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? startingMolecule,
    List<MolecularDefinitionEdit>? edit,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionRelativeCopyWithImpl<T>
    implements $MolecularDefinitionRelativeCopyWith<T> {
  final MolecularDefinitionRelative _value;
  final T Function(MolecularDefinitionRelative) _then;

  _$MolecularDefinitionRelativeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? startingMolecule = fhirSentinel,
    Object? edit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionRelative(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        startingMolecule: identical(startingMolecule, fhirSentinel)
            ? _value.startingMolecule
            : (startingMolecule as Reference?) ?? _value.startingMolecule,
        edit: identical(edit, fhirSentinel)
            ? _value.edit
            : edit as List<MolecularDefinitionEdit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionRelativeCopyWithExtension
    on MolecularDefinitionRelative {
  $MolecularDefinitionRelativeCopyWith<MolecularDefinitionRelative>
      get copyWith => _$MolecularDefinitionRelativeCopyWithImpl<
              MolecularDefinitionRelative>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionEditCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? editOrder,
    MolecularDefinitionCoordinateInterval? coordinateInterval,
    Reference? replacementMolecule,
    Reference? replacedMolecule,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionEditCopyWithImpl<T>
    implements $MolecularDefinitionEditCopyWith<T> {
  final MolecularDefinitionEdit _value;
  final T Function(MolecularDefinitionEdit) _then;

  _$MolecularDefinitionEditCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? editOrder = fhirSentinel,
    Object? coordinateInterval = fhirSentinel,
    Object? replacementMolecule = fhirSentinel,
    Object? replacedMolecule = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionEdit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        editOrder: identical(editOrder, fhirSentinel)
            ? _value.editOrder
            : editOrder as FhirInteger?,
        coordinateInterval: identical(coordinateInterval, fhirSentinel)
            ? _value.coordinateInterval
            : coordinateInterval as MolecularDefinitionCoordinateInterval?,
        replacementMolecule: identical(replacementMolecule, fhirSentinel)
            ? _value.replacementMolecule
            : (replacementMolecule as Reference?) ?? _value.replacementMolecule,
        replacedMolecule: identical(replacedMolecule, fhirSentinel)
            ? _value.replacedMolecule
            : replacedMolecule as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionEditCopyWithExtension on MolecularDefinitionEdit {
  $MolecularDefinitionEditCopyWith<MolecularDefinitionEdit> get copyWith =>
      _$MolecularDefinitionEditCopyWithImpl<MolecularDefinitionEdit>(
        this,
        (value) => value,
      );
}

abstract class $MolecularDefinitionCoordinateInterval2CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MolecularDefinitionCoordinateSystem? coordinateSystem,
    StartXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?
        startX,
    EndXMolecularDefinitionRepresentationRelativeEditCoordinateInterval? endX,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateInterval2CopyWithImpl<T>
    implements $MolecularDefinitionCoordinateInterval2CopyWith<T> {
  final MolecularDefinitionCoordinateInterval2 _value;
  final T Function(MolecularDefinitionCoordinateInterval2) _then;

  _$MolecularDefinitionCoordinateInterval2CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
    Object? startX = fhirSentinel,
    Object? endX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateInterval2(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : coordinateSystem as MolecularDefinitionCoordinateSystem?,
        startX: identical(startX, fhirSentinel)
            ? _value.startX
            : startX
                as StartXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?,
        endX: identical(endX, fhirSentinel)
            ? _value.endX
            : endX
                as EndXMolecularDefinitionRepresentationRelativeEditCoordinateInterval?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateInterval2CopyWithExtension
    on MolecularDefinitionCoordinateInterval2 {
  $MolecularDefinitionCoordinateInterval2CopyWith<
          MolecularDefinitionCoordinateInterval2>
      get copyWith => _$MolecularDefinitionCoordinateInterval2CopyWithImpl<
              MolecularDefinitionCoordinateInterval2>(
            this,
            (value) => value,
          );
}

abstract class $MolecularDefinitionCoordinateSystem2CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? system,
    CodeableConcept? origin,
    CodeableConcept? normalizationMethod,
    bool? disallowExtensions,
  });
}

class _$MolecularDefinitionCoordinateSystem2CopyWithImpl<T>
    implements $MolecularDefinitionCoordinateSystem2CopyWith<T> {
  final MolecularDefinitionCoordinateSystem2 _value;
  final T Function(MolecularDefinitionCoordinateSystem2) _then;

  _$MolecularDefinitionCoordinateSystem2CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? system = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? normalizationMethod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularDefinitionCoordinateSystem2(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as CodeableConcept?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as CodeableConcept?,
        normalizationMethod: identical(normalizationMethod, fhirSentinel)
            ? _value.normalizationMethod
            : normalizationMethod as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularDefinitionCoordinateSystem2CopyWithExtension
    on MolecularDefinitionCoordinateSystem2 {
  $MolecularDefinitionCoordinateSystem2CopyWith<
          MolecularDefinitionCoordinateSystem2>
      get copyWith => _$MolecularDefinitionCoordinateSystem2CopyWithImpl<
              MolecularDefinitionCoordinateSystem2>(
            this,
            (value) => value,
          );
}
