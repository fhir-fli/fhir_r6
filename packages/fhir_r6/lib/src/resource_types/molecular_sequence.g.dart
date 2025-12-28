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
    List<MolecularSequenceLiteral>? literal,
    List<Attachment>? file,
    List<MolecularSequenceRelative>? relative,
    List<MolecularSequenceExtracted>? extracted,
    List<MolecularSequenceRepeated>? repeated,
    MolecularSequenceConcatenated? concatenated,
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
    Object? literal = fhirSentinel,
    Object? file = fhirSentinel,
    Object? relative = fhirSentinel,
    Object? extracted = fhirSentinel,
    Object? repeated = fhirSentinel,
    Object? concatenated = fhirSentinel,
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
        literal: identical(literal, fhirSentinel)
            ? _value.literal
            : literal as List<MolecularSequenceLiteral>?,
        file: identical(file, fhirSentinel)
            ? _value.file
            : file as List<Attachment>?,
        relative: identical(relative, fhirSentinel)
            ? _value.relative
            : relative as List<MolecularSequenceRelative>?,
        extracted: identical(extracted, fhirSentinel)
            ? _value.extracted
            : extracted as List<MolecularSequenceExtracted>?,
        repeated: identical(repeated, fhirSentinel)
            ? _value.repeated
            : repeated as List<MolecularSequenceRepeated>?,
        concatenated: identical(concatenated, fhirSentinel)
            ? _value.concatenated
            : concatenated as MolecularSequenceConcatenated?,
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

abstract class $MolecularSequenceLiteralCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? sequenceValue,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceLiteralCopyWithImpl<T>
    implements $MolecularSequenceLiteralCopyWith<T> {
  final MolecularSequenceLiteral _value;
  final T Function(MolecularSequenceLiteral) _then;

  _$MolecularSequenceLiteralCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceValue = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceLiteral(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceValue: identical(sequenceValue, fhirSentinel)
            ? _value.sequenceValue
            : (sequenceValue as FhirString?) ?? _value.sequenceValue,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceLiteralCopyWithExtension
    on MolecularSequenceLiteral {
  $MolecularSequenceLiteralCopyWith<MolecularSequenceLiteral> get copyWith =>
      _$MolecularSequenceLiteralCopyWithImpl<MolecularSequenceLiteral>(
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
    Reference? startingSequence,
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
        startingSequence: identical(startingSequence, fhirSentinel)
            ? _value.startingSequence
            : (startingSequence as Reference?) ?? _value.startingSequence,
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

abstract class $MolecularSequenceEditCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? editOrder,
    CodeableConcept? coordinateSystem,
    FhirInteger? start,
    FhirInteger? end,
    Reference? replacementSequence,
    Reference? replacedSequence,
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
    Object? editOrder = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
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
        editOrder: identical(editOrder, fhirSentinel)
            ? _value.editOrder
            : editOrder as FhirInteger?,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : (coordinateSystem as CodeableConcept?) ?? _value.coordinateSystem,
        start: identical(start, fhirSentinel)
            ? _value.start
            : (start as FhirInteger?) ?? _value.start,
        end: identical(end, fhirSentinel)
            ? _value.end
            : (end as FhirInteger?) ?? _value.end,
        replacementSequence: identical(replacementSequence, fhirSentinel)
            ? _value.replacementSequence
            : (replacementSequence as Reference?) ?? _value.replacementSequence,
        replacedSequence: identical(replacedSequence, fhirSentinel)
            ? _value.replacedSequence
            : replacedSequence as Reference?,
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

abstract class $MolecularSequenceExtractedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? startingSequence,
    FhirInteger? start,
    FhirInteger? end,
    CodeableConcept? coordinateSystem,
    FhirBoolean? reverseComplement,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceExtractedCopyWithImpl<T>
    implements $MolecularSequenceExtractedCopyWith<T> {
  final MolecularSequenceExtracted _value;
  final T Function(MolecularSequenceExtracted) _then;

  _$MolecularSequenceExtractedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? startingSequence = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? coordinateSystem = fhirSentinel,
    Object? reverseComplement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceExtracted(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        startingSequence: identical(startingSequence, fhirSentinel)
            ? _value.startingSequence
            : (startingSequence as Reference?) ?? _value.startingSequence,
        start: identical(start, fhirSentinel)
            ? _value.start
            : (start as FhirInteger?) ?? _value.start,
        end: identical(end, fhirSentinel)
            ? _value.end
            : (end as FhirInteger?) ?? _value.end,
        coordinateSystem: identical(coordinateSystem, fhirSentinel)
            ? _value.coordinateSystem
            : (coordinateSystem as CodeableConcept?) ?? _value.coordinateSystem,
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

extension MolecularSequenceExtractedCopyWithExtension
    on MolecularSequenceExtracted {
  $MolecularSequenceExtractedCopyWith<MolecularSequenceExtracted>
      get copyWith =>
          _$MolecularSequenceExtractedCopyWithImpl<MolecularSequenceExtracted>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceRepeatedCopyWith<T>
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

class _$MolecularSequenceRepeatedCopyWithImpl<T>
    implements $MolecularSequenceRepeatedCopyWith<T> {
  final MolecularSequenceRepeated _value;
  final T Function(MolecularSequenceRepeated) _then;

  _$MolecularSequenceRepeatedCopyWithImpl(this._value, this._then);

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
      MolecularSequenceRepeated(
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

extension MolecularSequenceRepeatedCopyWithExtension
    on MolecularSequenceRepeated {
  $MolecularSequenceRepeatedCopyWith<MolecularSequenceRepeated> get copyWith =>
      _$MolecularSequenceRepeatedCopyWithImpl<MolecularSequenceRepeated>(
        this,
        (value) => value,
      );
}

abstract class $MolecularSequenceConcatenatedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<MolecularSequenceSequenceElement>? sequenceElement,
    bool? disallowExtensions,
  });
}

class _$MolecularSequenceConcatenatedCopyWithImpl<T>
    implements $MolecularSequenceConcatenatedCopyWith<T> {
  final MolecularSequenceConcatenated _value;
  final T Function(MolecularSequenceConcatenated) _then;

  _$MolecularSequenceConcatenatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequenceElement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MolecularSequenceConcatenated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequenceElement: identical(sequenceElement, fhirSentinel)
            ? _value.sequenceElement
            : (sequenceElement as List<MolecularSequenceSequenceElement>?) ??
                _value.sequenceElement,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MolecularSequenceConcatenatedCopyWithExtension
    on MolecularSequenceConcatenated {
  $MolecularSequenceConcatenatedCopyWith<MolecularSequenceConcatenated>
      get copyWith => _$MolecularSequenceConcatenatedCopyWithImpl<
              MolecularSequenceConcatenated>(
            this,
            (value) => value,
          );
}

abstract class $MolecularSequenceSequenceElementCopyWith<T>
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

class _$MolecularSequenceSequenceElementCopyWithImpl<T>
    implements $MolecularSequenceSequenceElementCopyWith<T> {
  final MolecularSequenceSequenceElement _value;
  final T Function(MolecularSequenceSequenceElement) _then;

  _$MolecularSequenceSequenceElementCopyWithImpl(this._value, this._then);

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
      MolecularSequenceSequenceElement(
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

extension MolecularSequenceSequenceElementCopyWithExtension
    on MolecularSequenceSequenceElement {
  $MolecularSequenceSequenceElementCopyWith<MolecularSequenceSequenceElement>
      get copyWith => _$MolecularSequenceSequenceElementCopyWithImpl<
              MolecularSequenceSequenceElement>(
            this,
            (value) => value,
          );
}
