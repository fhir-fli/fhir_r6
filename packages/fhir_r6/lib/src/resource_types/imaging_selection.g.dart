// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'imaging_selection.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImagingSelectionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ImagingSelectionStatus? status,
    Reference? subject,
    FhirInstant? issued,
    List<ImagingSelectionPerformer>? performer,
    List<Reference>? basedOn,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    FhirId? studyUid,
    List<Reference>? derivedFrom,
    List<Reference>? endpoint,
    FhirId? seriesUid,
    FhirUnsignedInt? seriesNumber,
    FhirId? frameOfReferenceUid,
    CodeableReference? bodySite,
    List<Reference>? focus,
    List<ImagingSelectionInstance>? instance,
    bool? disallowExtensions,
  });
}

class _$ImagingSelectionCopyWithImpl<T>
    implements $ImagingSelectionCopyWith<T> {
  final ImagingSelection _value;
  final T Function(ImagingSelection) _then;

  _$ImagingSelectionCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? studyUid = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? seriesUid = fhirSentinel,
    Object? seriesNumber = fhirSentinel,
    Object? frameOfReferenceUid = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingSelection(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ImagingSelectionStatus?) ?? _value.status,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirInstant?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ImagingSelectionPerformer>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        studyUid: identical(studyUid, fhirSentinel)
            ? _value.studyUid
            : studyUid as FhirId?,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        seriesUid: identical(seriesUid, fhirSentinel)
            ? _value.seriesUid
            : seriesUid as FhirId?,
        seriesNumber: identical(seriesNumber, fhirSentinel)
            ? _value.seriesNumber
            : seriesNumber as FhirUnsignedInt?,
        frameOfReferenceUid: identical(frameOfReferenceUid, fhirSentinel)
            ? _value.frameOfReferenceUid
            : frameOfReferenceUid as FhirId?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableReference?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<ImagingSelectionInstance>?,
      ),
    );
  }
}

extension ImagingSelectionCopyWithExtension on ImagingSelection {
  $ImagingSelectionCopyWith<ImagingSelection> get copyWith =>
      _$ImagingSelectionCopyWithImpl<ImagingSelection>(
        this,
        (value) => value,
      );
}

abstract class $ImagingSelectionPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$ImagingSelectionPerformerCopyWithImpl<T>
    implements $ImagingSelectionPerformerCopyWith<T> {
  final ImagingSelectionPerformer _value;
  final T Function(ImagingSelectionPerformer) _then;

  _$ImagingSelectionPerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingSelectionPerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingSelectionPerformerCopyWithExtension
    on ImagingSelectionPerformer {
  $ImagingSelectionPerformerCopyWith<ImagingSelectionPerformer> get copyWith =>
      _$ImagingSelectionPerformerCopyWithImpl<ImagingSelectionPerformer>(
        this,
        (value) => value,
      );
}

abstract class $ImagingSelectionInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    FhirUnsignedInt? number,
    Coding? sopClass,
    List<FhirString>? subset,
    List<ImagingSelectionImageRegion2D>? imageRegion2D,
    List<ImagingSelectionImageRegion3D>? imageRegion3D,
    bool? disallowExtensions,
  });
}

class _$ImagingSelectionInstanceCopyWithImpl<T>
    implements $ImagingSelectionInstanceCopyWith<T> {
  final ImagingSelectionInstance _value;
  final T Function(ImagingSelectionInstance) _then;

  _$ImagingSelectionInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? uid = fhirSentinel,
    Object? number = fhirSentinel,
    Object? sopClass = fhirSentinel,
    Object? subset = fhirSentinel,
    Object? imageRegion2D = fhirSentinel,
    Object? imageRegion3D = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingSelectionInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        uid: identical(uid, fhirSentinel)
            ? _value.uid
            : (uid as FhirId?) ?? _value.uid,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirUnsignedInt?,
        sopClass: identical(sopClass, fhirSentinel)
            ? _value.sopClass
            : sopClass as Coding?,
        subset: identical(subset, fhirSentinel)
            ? _value.subset
            : subset as List<FhirString>?,
        imageRegion2D: identical(imageRegion2D, fhirSentinel)
            ? _value.imageRegion2D
            : imageRegion2D as List<ImagingSelectionImageRegion2D>?,
        imageRegion3D: identical(imageRegion3D, fhirSentinel)
            ? _value.imageRegion3D
            : imageRegion3D as List<ImagingSelectionImageRegion3D>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingSelectionInstanceCopyWithExtension
    on ImagingSelectionInstance {
  $ImagingSelectionInstanceCopyWith<ImagingSelectionInstance> get copyWith =>
      _$ImagingSelectionInstanceCopyWithImpl<ImagingSelectionInstance>(
        this,
        (value) => value,
      );
}

abstract class $ImagingSelectionImageRegion2DCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ImagingSelection2DGraphicType? regionType,
    List<FhirDecimal>? coordinate,
    bool? disallowExtensions,
  });
}

class _$ImagingSelectionImageRegion2DCopyWithImpl<T>
    implements $ImagingSelectionImageRegion2DCopyWith<T> {
  final ImagingSelectionImageRegion2D _value;
  final T Function(ImagingSelectionImageRegion2D) _then;

  _$ImagingSelectionImageRegion2DCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? regionType = fhirSentinel,
    Object? coordinate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingSelectionImageRegion2D(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        regionType: identical(regionType, fhirSentinel)
            ? _value.regionType
            : (regionType as ImagingSelection2DGraphicType?) ??
                _value.regionType,
        coordinate: identical(coordinate, fhirSentinel)
            ? _value.coordinate
            : (coordinate as List<FhirDecimal>?) ?? _value.coordinate,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingSelectionImageRegion2DCopyWithExtension
    on ImagingSelectionImageRegion2D {
  $ImagingSelectionImageRegion2DCopyWith<ImagingSelectionImageRegion2D>
      get copyWith => _$ImagingSelectionImageRegion2DCopyWithImpl<
              ImagingSelectionImageRegion2D>(
            this,
            (value) => value,
          );
}

abstract class $ImagingSelectionImageRegion3DCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ImagingSelection3DGraphicType? regionType,
    List<FhirDecimal>? coordinate,
    bool? disallowExtensions,
  });
}

class _$ImagingSelectionImageRegion3DCopyWithImpl<T>
    implements $ImagingSelectionImageRegion3DCopyWith<T> {
  final ImagingSelectionImageRegion3D _value;
  final T Function(ImagingSelectionImageRegion3D) _then;

  _$ImagingSelectionImageRegion3DCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? regionType = fhirSentinel,
    Object? coordinate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingSelectionImageRegion3D(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        regionType: identical(regionType, fhirSentinel)
            ? _value.regionType
            : (regionType as ImagingSelection3DGraphicType?) ??
                _value.regionType,
        coordinate: identical(coordinate, fhirSentinel)
            ? _value.coordinate
            : (coordinate as List<FhirDecimal>?) ?? _value.coordinate,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingSelectionImageRegion3DCopyWithExtension
    on ImagingSelectionImageRegion3D {
  $ImagingSelectionImageRegion3DCopyWith<ImagingSelectionImageRegion3D>
      get copyWith => _$ImagingSelectionImageRegion3DCopyWithImpl<
              ImagingSelectionImageRegion3D>(
            this,
            (value) => value,
          );
}
