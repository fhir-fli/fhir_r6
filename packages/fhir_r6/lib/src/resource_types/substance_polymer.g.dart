// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'substance_polymer.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubstancePolymerCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? identifier,
    CodeableConcept? class_,
    CodeableConcept? geometry,
    List<CodeableConcept>? copolymerConnectivity,
    FhirString? modification,
    List<SubstancePolymerMonomerSet>? monomerSet,
    List<SubstancePolymerRepeat>? repeat,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerCopyWithImpl<T>
    implements $SubstancePolymerCopyWith<T> {
  final SubstancePolymer _value;
  final T Function(SubstancePolymer) _then;

  _$SubstancePolymerCopyWithImpl(this._value, this._then);

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
    Object? class_ = fhirSentinel,
    Object? geometry = fhirSentinel,
    Object? copolymerConnectivity = fhirSentinel,
    Object? modification = fhirSentinel,
    Object? monomerSet = fhirSentinel,
    Object? repeat = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymer(
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
            : identifier as Identifier?,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as CodeableConcept?,
        geometry: identical(geometry, fhirSentinel)
            ? _value.geometry
            : geometry as CodeableConcept?,
        copolymerConnectivity: identical(copolymerConnectivity, fhirSentinel)
            ? _value.copolymerConnectivity
            : copolymerConnectivity as List<CodeableConcept>?,
        modification: identical(modification, fhirSentinel)
            ? _value.modification
            : modification as FhirString?,
        monomerSet: identical(monomerSet, fhirSentinel)
            ? _value.monomerSet
            : monomerSet as List<SubstancePolymerMonomerSet>?,
        repeat: identical(repeat, fhirSentinel)
            ? _value.repeat
            : repeat as List<SubstancePolymerRepeat>?,
      ),
    );
  }
}

extension SubstancePolymerCopyWithExtension on SubstancePolymer {
  $SubstancePolymerCopyWith<SubstancePolymer> get copyWith =>
      _$SubstancePolymerCopyWithImpl<SubstancePolymer>(
        this,
        (value) => value,
      );
}

abstract class $SubstancePolymerMonomerSetCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? ratioType,
    List<SubstancePolymerStartingMaterial>? startingMaterial,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerMonomerSetCopyWithImpl<T>
    implements $SubstancePolymerMonomerSetCopyWith<T> {
  final SubstancePolymerMonomerSet _value;
  final T Function(SubstancePolymerMonomerSet) _then;

  _$SubstancePolymerMonomerSetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? ratioType = fhirSentinel,
    Object? startingMaterial = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerMonomerSet(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        ratioType: identical(ratioType, fhirSentinel)
            ? _value.ratioType
            : ratioType as CodeableConcept?,
        startingMaterial: identical(startingMaterial, fhirSentinel)
            ? _value.startingMaterial
            : startingMaterial as List<SubstancePolymerStartingMaterial>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerMonomerSetCopyWithExtension
    on SubstancePolymerMonomerSet {
  $SubstancePolymerMonomerSetCopyWith<SubstancePolymerMonomerSet>
      get copyWith =>
          _$SubstancePolymerMonomerSetCopyWithImpl<SubstancePolymerMonomerSet>(
            this,
            (value) => value,
          );
}

abstract class $SubstancePolymerStartingMaterialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? category,
    FhirBoolean? isDefining,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerStartingMaterialCopyWithImpl<T>
    implements $SubstancePolymerStartingMaterialCopyWith<T> {
  final SubstancePolymerStartingMaterial _value;
  final T Function(SubstancePolymerStartingMaterial) _then;

  _$SubstancePolymerStartingMaterialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? category = fhirSentinel,
    Object? isDefining = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerStartingMaterial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        isDefining: identical(isDefining, fhirSentinel)
            ? _value.isDefining
            : isDefining as FhirBoolean?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerStartingMaterialCopyWithExtension
    on SubstancePolymerStartingMaterial {
  $SubstancePolymerStartingMaterialCopyWith<SubstancePolymerStartingMaterial>
      get copyWith => _$SubstancePolymerStartingMaterialCopyWithImpl<
              SubstancePolymerStartingMaterial>(
            this,
            (value) => value,
          );
}

abstract class $SubstancePolymerRepeatCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? averageMolecularFormula,
    CodeableConcept? repeatUnitAmountType,
    List<SubstancePolymerRepeatUnit>? repeatUnit,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerRepeatCopyWithImpl<T>
    implements $SubstancePolymerRepeatCopyWith<T> {
  final SubstancePolymerRepeat _value;
  final T Function(SubstancePolymerRepeat) _then;

  _$SubstancePolymerRepeatCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? averageMolecularFormula = fhirSentinel,
    Object? repeatUnitAmountType = fhirSentinel,
    Object? repeatUnit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerRepeat(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        averageMolecularFormula:
            identical(averageMolecularFormula, fhirSentinel)
                ? _value.averageMolecularFormula
                : averageMolecularFormula as FhirString?,
        repeatUnitAmountType: identical(repeatUnitAmountType, fhirSentinel)
            ? _value.repeatUnitAmountType
            : repeatUnitAmountType as CodeableConcept?,
        repeatUnit: identical(repeatUnit, fhirSentinel)
            ? _value.repeatUnit
            : repeatUnit as List<SubstancePolymerRepeatUnit>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerRepeatCopyWithExtension on SubstancePolymerRepeat {
  $SubstancePolymerRepeatCopyWith<SubstancePolymerRepeat> get copyWith =>
      _$SubstancePolymerRepeatCopyWithImpl<SubstancePolymerRepeat>(
        this,
        (value) => value,
      );
}

abstract class $SubstancePolymerRepeatUnitCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? unit,
    CodeableConcept? orientation,
    FhirInteger? amount,
    List<SubstancePolymerDegreeOfPolymerisation>? degreeOfPolymerisation,
    List<SubstancePolymerStructuralRepresentation>? structuralRepresentation,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerRepeatUnitCopyWithImpl<T>
    implements $SubstancePolymerRepeatUnitCopyWith<T> {
  final SubstancePolymerRepeatUnit _value;
  final T Function(SubstancePolymerRepeatUnit) _then;

  _$SubstancePolymerRepeatUnitCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? orientation = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? degreeOfPolymerisation = fhirSentinel,
    Object? structuralRepresentation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerRepeatUnit(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        unit: identical(unit, fhirSentinel) ? _value.unit : unit as FhirString?,
        orientation: identical(orientation, fhirSentinel)
            ? _value.orientation
            : orientation as CodeableConcept?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as FhirInteger?,
        degreeOfPolymerisation: identical(degreeOfPolymerisation, fhirSentinel)
            ? _value.degreeOfPolymerisation
            : degreeOfPolymerisation
                as List<SubstancePolymerDegreeOfPolymerisation>?,
        structuralRepresentation:
            identical(structuralRepresentation, fhirSentinel)
                ? _value.structuralRepresentation
                : structuralRepresentation
                    as List<SubstancePolymerStructuralRepresentation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerRepeatUnitCopyWithExtension
    on SubstancePolymerRepeatUnit {
  $SubstancePolymerRepeatUnitCopyWith<SubstancePolymerRepeatUnit>
      get copyWith =>
          _$SubstancePolymerRepeatUnitCopyWithImpl<SubstancePolymerRepeatUnit>(
            this,
            (value) => value,
          );
}

abstract class $SubstancePolymerDegreeOfPolymerisationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirInteger? average,
    FhirInteger? low,
    FhirInteger? high,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerDegreeOfPolymerisationCopyWithImpl<T>
    implements $SubstancePolymerDegreeOfPolymerisationCopyWith<T> {
  final SubstancePolymerDegreeOfPolymerisation _value;
  final T Function(SubstancePolymerDegreeOfPolymerisation) _then;

  _$SubstancePolymerDegreeOfPolymerisationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? average = fhirSentinel,
    Object? low = fhirSentinel,
    Object? high = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerDegreeOfPolymerisation(
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
        average: identical(average, fhirSentinel)
            ? _value.average
            : average as FhirInteger?,
        low: identical(low, fhirSentinel) ? _value.low : low as FhirInteger?,
        high:
            identical(high, fhirSentinel) ? _value.high : high as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerDegreeOfPolymerisationCopyWithExtension
    on SubstancePolymerDegreeOfPolymerisation {
  $SubstancePolymerDegreeOfPolymerisationCopyWith<
          SubstancePolymerDegreeOfPolymerisation>
      get copyWith => _$SubstancePolymerDegreeOfPolymerisationCopyWithImpl<
              SubstancePolymerDegreeOfPolymerisation>(
            this,
            (value) => value,
          );
}

abstract class $SubstancePolymerStructuralRepresentationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? representation,
    CodeableConcept? format,
    Attachment? attachment,
    bool? disallowExtensions,
  });
}

class _$SubstancePolymerStructuralRepresentationCopyWithImpl<T>
    implements $SubstancePolymerStructuralRepresentationCopyWith<T> {
  final SubstancePolymerStructuralRepresentation _value;
  final T Function(SubstancePolymerStructuralRepresentation) _then;

  _$SubstancePolymerStructuralRepresentationCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? representation = fhirSentinel,
    Object? format = fhirSentinel,
    Object? attachment = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubstancePolymerStructuralRepresentation(
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
        representation: identical(representation, fhirSentinel)
            ? _value.representation
            : representation as FhirString?,
        format: identical(format, fhirSentinel)
            ? _value.format
            : format as CodeableConcept?,
        attachment: identical(attachment, fhirSentinel)
            ? _value.attachment
            : attachment as Attachment?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubstancePolymerStructuralRepresentationCopyWithExtension
    on SubstancePolymerStructuralRepresentation {
  $SubstancePolymerStructuralRepresentationCopyWith<
          SubstancePolymerStructuralRepresentation>
      get copyWith => _$SubstancePolymerStructuralRepresentationCopyWithImpl<
              SubstancePolymerStructuralRepresentation>(
            this,
            (value) => value,
          );
}
