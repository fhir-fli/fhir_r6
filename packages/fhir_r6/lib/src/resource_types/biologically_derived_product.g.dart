// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'biologically_derived_product.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BiologicallyDerivedProductCopyWith<T>
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
    Coding? productCategory,
    CodeableConcept? productCode,
    List<Reference>? parent,
    List<Reference>? request,
    List<Identifier>? identifier,
    Identifier? biologicalSourceEvent,
    List<Reference>? processingFacility,
    FhirString? division,
    Coding? productStatus,
    FhirDateTime? expirationDate,
    BiologicallyDerivedProductCollection? collection,
    Range? storageTempRequirements,
    List<BiologicallyDerivedProductProperty>? property,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductCopyWithImpl<T>
    implements $BiologicallyDerivedProductCopyWith<T> {
  final BiologicallyDerivedProduct _value;
  final T Function(BiologicallyDerivedProduct) _then;

  _$BiologicallyDerivedProductCopyWithImpl(this._value, this._then);

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
    Object? productCategory = fhirSentinel,
    Object? productCode = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? request = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? biologicalSourceEvent = fhirSentinel,
    Object? processingFacility = fhirSentinel,
    Object? division = fhirSentinel,
    Object? productStatus = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? collection = fhirSentinel,
    Object? storageTempRequirements = fhirSentinel,
    Object? property = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProduct(
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
        productCategory: identical(productCategory, fhirSentinel)
            ? _value.productCategory
            : productCategory as Coding?,
        productCode: identical(productCode, fhirSentinel)
            ? _value.productCode
            : productCode as CodeableConcept?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as List<Reference>?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as List<Reference>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        biologicalSourceEvent: identical(biologicalSourceEvent, fhirSentinel)
            ? _value.biologicalSourceEvent
            : biologicalSourceEvent as Identifier?,
        processingFacility: identical(processingFacility, fhirSentinel)
            ? _value.processingFacility
            : processingFacility as List<Reference>?,
        division: identical(division, fhirSentinel)
            ? _value.division
            : division as FhirString?,
        productStatus: identical(productStatus, fhirSentinel)
            ? _value.productStatus
            : productStatus as Coding?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDateTime?,
        collection: identical(collection, fhirSentinel)
            ? _value.collection
            : collection as BiologicallyDerivedProductCollection?,
        storageTempRequirements:
            identical(storageTempRequirements, fhirSentinel)
                ? _value.storageTempRequirements
                : storageTempRequirements as Range?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<BiologicallyDerivedProductProperty>?,
      ),
    );
  }
}

extension BiologicallyDerivedProductCopyWithExtension
    on BiologicallyDerivedProduct {
  $BiologicallyDerivedProductCopyWith<BiologicallyDerivedProduct>
      get copyWith =>
          _$BiologicallyDerivedProductCopyWithImpl<BiologicallyDerivedProduct>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductCollectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    Reference? source,
    FhirDateTime? collectedX,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductCollectionCopyWithImpl<T>
    implements $BiologicallyDerivedProductCollectionCopyWith<T> {
  final BiologicallyDerivedProductCollection _value;
  final T Function(BiologicallyDerivedProductCollection) _then;

  _$BiologicallyDerivedProductCollectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? collector = fhirSentinel,
    Object? source = fhirSentinel,
    Object? collectedX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductCollection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        collector: identical(collector, fhirSentinel)
            ? _value.collector
            : collector as Reference?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        collectedX: identical(collectedX, fhirSentinel)
            ? _value.collectedX
            : collectedX as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductCollectionCopyWithExtension
    on BiologicallyDerivedProductCollection {
  $BiologicallyDerivedProductCollectionCopyWith<
          BiologicallyDerivedProductCollection>
      get copyWith => _$BiologicallyDerivedProductCollectionCopyWithImpl<
              BiologicallyDerivedProductCollection>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBoolean? valueX,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductPropertyCopyWithImpl<T>
    implements $BiologicallyDerivedProductPropertyCopyWith<T> {
  final BiologicallyDerivedProductProperty _value;
  final T Function(BiologicallyDerivedProductProperty) _then;

  _$BiologicallyDerivedProductPropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductProperty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirBoolean?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductPropertyCopyWithExtension
    on BiologicallyDerivedProductProperty {
  $BiologicallyDerivedProductPropertyCopyWith<
          BiologicallyDerivedProductProperty>
      get copyWith => _$BiologicallyDerivedProductPropertyCopyWithImpl<
              BiologicallyDerivedProductProperty>(
            this,
            (value) => value,
          );
}
