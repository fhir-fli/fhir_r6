// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'molecular_sequence.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MolecularSequenceCopyWith<T>
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
    SequenceType? type,
    Reference? subject,
    List<Reference>? focus,
    Reference? specimen,
    Reference? device,
    Reference? performer,
    FhirString? literal,
    List<Attachment>? formatted,
    List<MolecularSequenceRelative>? relative,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceCopyWithImpl<T>
    implements $MolecularSequenceCopyWith<T> {
  final MolecularSequence _value;
  final T Function(MolecularSequence) _then;

  _$MolecularSequenceCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? device = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? literal = fhirSentinel,
    Object? formatted = fhirSentinel,
    Object? relative = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequence(
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
        type:
            identical(type, fhirSentinel) ? _value.type : type as SequenceType?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        literal: identical(literal, fhirSentinel)
            ? _value.literal
            : literal as FhirString?,
        formatted: identical(formatted, fhirSentinel)
            ? _value.formatted
            : formatted as List<Attachment>?,
        relative: identical(relative, fhirSentinel)
            ? _value.relative
            : relative as List<MolecularSequenceRelative>?,
      ),
    );
  }
}

extension MolecularSequenceCopyWithExtension on MolecularSequence {
  $MolecularSequenceCopyWith<MolecularSequence> get copyWith =>
      _$MolecularSequenceCopyWithImpl<MolecularSequence>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceRelativeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? coordinateSystem,
    FhirInteger? ordinalPosition,
    Range? sequenceRange,
    MolecularSequenceStartingSequence? startingSequence,
    List<MolecularSequenceEdit>? edit,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceRelativeCopyWithImpl<T>
    implements $MolecularSequenceRelativeCopyWith<T> {
  final MolecularSequenceRelative _value;
  final T Function(MolecularSequenceRelative) _then;

  _$MolecularSequenceRelativeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
    Object? ordinalPosition = fhirSentinel,
    Object? sequenceRange = fhirSentinel,
    Object? startingSequence = fhirSentinel,
    Object? edit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceRelative(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : (coordinateSystem as CodeableConcept?) ?? _value.coordinateSystem,
        ordinalPosition: identical(ordinalPosition, fhirSentinel)
            ? _value.ordinalPosition
            : ordinalPosition as FhirInteger?,
        sequenceRange: identical(sequenceRange, fhirSentinel)
            ? _value.sequenceRange
            : sequenceRange as Range?,
        startingSequence: identical(startingSequence, fhirSentinel)
            ? _value.startingSequence
            : startingSequence as MolecularSequenceStartingSequence?,
        edit: identical(edit, fhirSentinel)
            ? _value.edit
            : edit as List<MolecularSequenceEdit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceRelativeCopyWithExtension
    on MolecularSequenceRelative {
  $MolecularSequenceRelativeCopyWith<MolecularSequenceRelative> get copyWith =>
      _$MolecularSequenceRelativeCopyWithImpl<MolecularSequenceRelative>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceStartingSequenceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? genomeAssembly,
    CodeableConcept? chromosome,
    CodeableConcept? sequenceX,
    FhirInteger? windowStart,
    FhirInteger? windowEnd,
    OrientationType? orientation,
    StrandType? strand,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceStartingSequenceCopyWithImpl<T>
    implements $MolecularSequenceStartingSequenceCopyWith<T> {
  final MolecularSequenceStartingSequence _value;
  final T Function(MolecularSequenceStartingSequence) _then;

  _$MolecularSequenceStartingSequenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? genomeAssembly = fhirSentinel,
    Object? chromosome = fhirSentinel,
    Object? sequenceX = fhirSentinel,
    Object? windowStart = fhirSentinel,
    Object? windowEnd = fhirSentinel,
    Object? orientation = fhirSentinel,
    Object? strand = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceStartingSequence(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        genomeAssembly: identical(genomeAssembly, fhirSentinel)
            ? _value.genomeAssembly
            : genomeAssembly as CodeableConcept?,
        chromosome: identical(chromosome, fhirSentinel)
            ? _value.chromosome
            : chromosome as CodeableConcept?,
        sequenceX: identical(sequenceX, fhirSentinel)
            ? _value.sequenceX
            : sequenceX as CodeableConcept?,
        windowStart: identical(windowStart, fhirSentinel)
            ? _value.windowStart
            : windowStart as FhirInteger?,
        windowEnd: identical(windowEnd, fhirSentinel)
            ? _value.windowEnd
            : windowEnd as FhirInteger?,
        orientation: identical(orientation, fhirSentinel)
            ? _value.orientation
            : orientation as OrientationType?,
        strand: identical(strand, fhirSentinel)
            ? _value.strand
            : strand as StrandType?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceStartingSequenceCopyWithExtension
    on MolecularSequenceStartingSequence {
  $MolecularSequenceStartingSequenceCopyWith<MolecularSequenceStartingSequence>
      get copyWith => _$MolecularSequenceStartingSequenceCopyWithImpl<
              MolecularSequenceStartingSequence>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceEditCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    FhirString? replacementSequence,
    FhirString? replacedSequence,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceEditCopyWithImpl<T>
    implements $MolecularSequenceEditCopyWith<T> {
  final MolecularSequenceEdit _value;
  final T Function(MolecularSequenceEdit) _then;

  _$MolecularSequenceEditCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? replacementSequence = fhirSentinel,
    Object? replacedSequence = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceEdit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirInteger?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInteger?,
        replacementSequence: identical(replacementSequence, fhirSentinel)
            ? _value.replacementSequence
            : replacementSequence as FhirString?,
        replacedSequence: identical(replacedSequence, fhirSentinel)
            ? _value.replacedSequence
            : replacedSequence as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceEditCopyWithExtension on MolecularSequenceEdit {
  $MolecularSequenceEditCopyWith<MolecularSequenceEdit> get copyWith =>
      _$MolecularSequenceEditCopyWithImpl<MolecularSequenceEdit>(
        this,
        (value) => value,
      );
}
