// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'body_structure.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BodyStructureCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirBoolean? active,
    CodeableConcept? morphology,
    List<BodyStructureIncludedStructure>? includedStructure,
    List<BodyStructureIncludedStructure>? excludedStructure,
    FhirMarkdown? description,
    List<Attachment>? image,
    Reference? patient,
    bool? disallowExtensions,
  });
}

class _$BodyStructureCopyWithImpl<T> implements $BodyStructureCopyWith<T> {
  final BodyStructure _value;
  final T Function(BodyStructure) _then;

  _$BodyStructureCopyWithImpl(this._value, this._then);

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
    Object? active = fhirSentinel,
    Object? morphology = fhirSentinel,
    Object? includedStructure = fhirSentinel,
    Object? excludedStructure = fhirSentinel,
    Object? description = fhirSentinel,
    Object? image = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BodyStructure(
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
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        morphology: identical(morphology, fhirSentinel)
            ? _value.morphology
            : morphology as CodeableConcept?,
        includedStructure: identical(includedStructure, fhirSentinel)
            ? _value.includedStructure
            : (includedStructure as List<BodyStructureIncludedStructure>?) ??
                _value.includedStructure,
        excludedStructure: identical(excludedStructure, fhirSentinel)
            ? _value.excludedStructure
            : excludedStructure as List<BodyStructureIncludedStructure>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        image: identical(image, fhirSentinel)
            ? _value.image
            : image as List<Attachment>?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
      ),
    );
  }
}

extension BodyStructureCopyWithExtension on BodyStructure {
  $BodyStructureCopyWith<BodyStructure> get copyWith =>
      _$BodyStructureCopyWithImpl<BodyStructure>(
        this,
        (value) => value,
      );
}

abstract class $BodyStructureIncludedStructureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? structure,
    CodeableConcept? laterality,
    List<BodyStructureBodyLandmarkOrientation>? bodyLandmarkOrientation,
    List<Reference>? spatialReference,
    List<CodeableConcept>? qualifier,
    bool? disallowExtensions,
  });
}

class _$BodyStructureIncludedStructureCopyWithImpl<T>
    implements $BodyStructureIncludedStructureCopyWith<T> {
  final BodyStructureIncludedStructure _value;
  final T Function(BodyStructureIncludedStructure) _then;

  _$BodyStructureIncludedStructureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? structure = fhirSentinel,
    Object? laterality = fhirSentinel,
    Object? bodyLandmarkOrientation = fhirSentinel,
    Object? spatialReference = fhirSentinel,
    Object? qualifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BodyStructureIncludedStructure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        structure: identical(structure, fhirSentinel)
            ? _value.structure
            : (structure as CodeableConcept?) ?? _value.structure,
        laterality: identical(laterality, fhirSentinel)
            ? _value.laterality
            : laterality as CodeableConcept?,
        bodyLandmarkOrientation:
            identical(bodyLandmarkOrientation, fhirSentinel)
                ? _value.bodyLandmarkOrientation
                : bodyLandmarkOrientation
                    as List<BodyStructureBodyLandmarkOrientation>?,
        spatialReference: identical(spatialReference, fhirSentinel)
            ? _value.spatialReference
            : spatialReference as List<Reference>?,
        qualifier: identical(qualifier, fhirSentinel)
            ? _value.qualifier
            : qualifier as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BodyStructureIncludedStructureCopyWithExtension
    on BodyStructureIncludedStructure {
  $BodyStructureIncludedStructureCopyWith<BodyStructureIncludedStructure>
      get copyWith => _$BodyStructureIncludedStructureCopyWithImpl<
              BodyStructureIncludedStructure>(
            this,
            (value) => value,
          );
}

abstract class $BodyStructureBodyLandmarkOrientationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? landmarkDescription,
    List<CodeableConcept>? clockFacePosition,
    List<BodyStructureDistanceFromLandmark>? distanceFromLandmark,
    List<CodeableConcept>? surfaceOrientation,
    bool? disallowExtensions,
  });
}

class _$BodyStructureBodyLandmarkOrientationCopyWithImpl<T>
    implements $BodyStructureBodyLandmarkOrientationCopyWith<T> {
  final BodyStructureBodyLandmarkOrientation _value;
  final T Function(BodyStructureBodyLandmarkOrientation) _then;

  _$BodyStructureBodyLandmarkOrientationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? landmarkDescription = fhirSentinel,
    Object? clockFacePosition = fhirSentinel,
    Object? distanceFromLandmark = fhirSentinel,
    Object? surfaceOrientation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BodyStructureBodyLandmarkOrientation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        landmarkDescription: identical(landmarkDescription, fhirSentinel)
            ? _value.landmarkDescription
            : landmarkDescription as List<CodeableConcept>?,
        clockFacePosition: identical(clockFacePosition, fhirSentinel)
            ? _value.clockFacePosition
            : clockFacePosition as List<CodeableConcept>?,
        distanceFromLandmark: identical(distanceFromLandmark, fhirSentinel)
            ? _value.distanceFromLandmark
            : distanceFromLandmark as List<BodyStructureDistanceFromLandmark>?,
        surfaceOrientation: identical(surfaceOrientation, fhirSentinel)
            ? _value.surfaceOrientation
            : surfaceOrientation as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BodyStructureBodyLandmarkOrientationCopyWithExtension
    on BodyStructureBodyLandmarkOrientation {
  $BodyStructureBodyLandmarkOrientationCopyWith<
          BodyStructureBodyLandmarkOrientation>
      get copyWith => _$BodyStructureBodyLandmarkOrientationCopyWithImpl<
              BodyStructureBodyLandmarkOrientation>(
            this,
            (value) => value,
          );
}

abstract class $BodyStructureDistanceFromLandmarkCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? device,
    List<Quantity>? value,
    bool? disallowExtensions,
  });
}

class _$BodyStructureDistanceFromLandmarkCopyWithImpl<T>
    implements $BodyStructureDistanceFromLandmarkCopyWith<T> {
  final BodyStructureDistanceFromLandmark _value;
  final T Function(BodyStructureDistanceFromLandmark) _then;

  _$BodyStructureDistanceFromLandmarkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? device = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BodyStructureDistanceFromLandmark(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<CodeableReference>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as List<Quantity>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BodyStructureDistanceFromLandmarkCopyWithExtension
    on BodyStructureDistanceFromLandmark {
  $BodyStructureDistanceFromLandmarkCopyWith<BodyStructureDistanceFromLandmark>
      get copyWith => _$BodyStructureDistanceFromLandmarkCopyWithImpl<
              BodyStructureDistanceFromLandmark>(
            this,
            (value) => value,
          );
}
