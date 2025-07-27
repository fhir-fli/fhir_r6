// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'packaged_product_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PackagedProductDefinitionCopyWith<T>
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
    FhirString? name,
    CodeableConcept? type,
    List<Reference>? packageFor,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    List<Quantity>? containedItemQuantity,
    FhirMarkdown? description,
    List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
    List<MarketingStatus>? marketingStatus,
    FhirBoolean? copackagedIndicator,
    List<Reference>? manufacturer,
    List<Reference>? attachedDocument,
    PackagedProductDefinitionPackaging? packaging,
    List<PackagedProductDefinitionProperty>? characteristic,
    bool? disallowExtensions,
  });
}

class _$PackagedProductDefinitionCopyWithImpl<T>
    implements $PackagedProductDefinitionCopyWith<T> {
  final PackagedProductDefinition _value;
  final T Function(PackagedProductDefinition) _then;

  _$PackagedProductDefinitionCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? packageFor = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? containedItemQuantity = fhirSentinel,
    Object? description = fhirSentinel,
    Object? legalStatusOfSupply = fhirSentinel,
    Object? marketingStatus = fhirSentinel,
    Object? copackagedIndicator = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? attachedDocument = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PackagedProductDefinition(
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
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        packageFor: identical(packageFor, fhirSentinel)
            ? _value.packageFor
            : packageFor as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDateTime?,
        containedItemQuantity: identical(containedItemQuantity, fhirSentinel)
            ? _value.containedItemQuantity
            : containedItemQuantity as List<Quantity>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        legalStatusOfSupply: identical(legalStatusOfSupply, fhirSentinel)
            ? _value.legalStatusOfSupply
            : legalStatusOfSupply
                as List<PackagedProductDefinitionLegalStatusOfSupply>?,
        marketingStatus: identical(marketingStatus, fhirSentinel)
            ? _value.marketingStatus
            : marketingStatus as List<MarketingStatus>?,
        copackagedIndicator: identical(copackagedIndicator, fhirSentinel)
            ? _value.copackagedIndicator
            : copackagedIndicator as FhirBoolean?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        attachedDocument: identical(attachedDocument, fhirSentinel)
            ? _value.attachedDocument
            : attachedDocument as List<Reference>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as PackagedProductDefinitionPackaging?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<PackagedProductDefinitionProperty>?,
      ),
    );
  }
}

extension PackagedProductDefinitionCopyWithExtension
    on PackagedProductDefinition {
  $PackagedProductDefinitionCopyWith<PackagedProductDefinition> get copyWith =>
      _$PackagedProductDefinitionCopyWithImpl<PackagedProductDefinition>(
        this,
        (value) => value,
      );
}

abstract class $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<T>
    implements $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<T> {
  final PackagedProductDefinitionLegalStatusOfSupply _value;
  final T Function(PackagedProductDefinitionLegalStatusOfSupply) _then;

  _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl(
    this._value,
    this._then,
  );

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PackagedProductDefinitionLegalStatusOfSupply(
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
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PackagedProductDefinitionLegalStatusOfSupplyCopyWithExtension
    on PackagedProductDefinitionLegalStatusOfSupply {
  $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<
          PackagedProductDefinitionLegalStatusOfSupply>
      get copyWith =>
          _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<
              PackagedProductDefinitionLegalStatusOfSupply>(
            this,
            (value) => value,
          );
}

abstract class $PackagedProductDefinitionPackagingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    FhirBoolean? componentPart,
    FhirInteger? quantity,
    List<CodeableConcept>? material,
    List<CodeableConcept>? alternateMaterial,
    List<ProductShelfLife>? shelfLifeStorage,
    List<Reference>? manufacturer,
    List<PackagedProductDefinitionProperty>? property,
    List<PackagedProductDefinitionContainedItem>? containedItem,
    List<PackagedProductDefinitionPackaging>? packaging,
    bool? disallowExtensions,
  });
}

class _$PackagedProductDefinitionPackagingCopyWithImpl<T>
    implements $PackagedProductDefinitionPackagingCopyWith<T> {
  final PackagedProductDefinitionPackaging _value;
  final T Function(PackagedProductDefinitionPackaging) _then;

  _$PackagedProductDefinitionPackagingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? componentPart = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? material = fhirSentinel,
    Object? alternateMaterial = fhirSentinel,
    Object? shelfLifeStorage = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? property = fhirSentinel,
    Object? containedItem = fhirSentinel,
    Object? packaging = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PackagedProductDefinitionPackaging(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        componentPart: identical(componentPart, fhirSentinel)
            ? _value.componentPart
            : componentPart as FhirBoolean?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as FhirInteger?,
        material: identical(material, fhirSentinel)
            ? _value.material
            : material as List<CodeableConcept>?,
        alternateMaterial: identical(alternateMaterial, fhirSentinel)
            ? _value.alternateMaterial
            : alternateMaterial as List<CodeableConcept>?,
        shelfLifeStorage: identical(shelfLifeStorage, fhirSentinel)
            ? _value.shelfLifeStorage
            : shelfLifeStorage as List<ProductShelfLife>?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<PackagedProductDefinitionProperty>?,
        containedItem: identical(containedItem, fhirSentinel)
            ? _value.containedItem
            : containedItem as List<PackagedProductDefinitionContainedItem>?,
        packaging: identical(packaging, fhirSentinel)
            ? _value.packaging
            : packaging as List<PackagedProductDefinitionPackaging>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PackagedProductDefinitionPackagingCopyWithExtension
    on PackagedProductDefinitionPackaging {
  $PackagedProductDefinitionPackagingCopyWith<
          PackagedProductDefinitionPackaging>
      get copyWith => _$PackagedProductDefinitionPackagingCopyWithImpl<
              PackagedProductDefinitionPackaging>(
            this,
            (value) => value,
          );
}

abstract class $PackagedProductDefinitionPropertyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$PackagedProductDefinitionPropertyCopyWithImpl<T>
    implements $PackagedProductDefinitionPropertyCopyWith<T> {
  final PackagedProductDefinitionProperty _value;
  final T Function(PackagedProductDefinitionProperty) _then;

  _$PackagedProductDefinitionPropertyCopyWithImpl(this._value, this._then);

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
      PackagedProductDefinitionProperty(
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
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PackagedProductDefinitionPropertyCopyWithExtension
    on PackagedProductDefinitionProperty {
  $PackagedProductDefinitionPropertyCopyWith<PackagedProductDefinitionProperty>
      get copyWith => _$PackagedProductDefinitionPropertyCopyWithImpl<
              PackagedProductDefinitionProperty>(
            this,
            (value) => value,
          );
}

abstract class $PackagedProductDefinitionContainedItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    Quantity? amount,
    bool? disallowExtensions,
  });
}

class _$PackagedProductDefinitionContainedItemCopyWithImpl<T>
    implements $PackagedProductDefinitionContainedItemCopyWith<T> {
  final PackagedProductDefinitionContainedItem _value;
  final T Function(PackagedProductDefinitionContainedItem) _then;

  _$PackagedProductDefinitionContainedItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PackagedProductDefinitionContainedItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as CodeableReference?) ?? _value.item,
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

extension PackagedProductDefinitionContainedItemCopyWithExtension
    on PackagedProductDefinitionContainedItem {
  $PackagedProductDefinitionContainedItemCopyWith<
          PackagedProductDefinitionContainedItem>
      get copyWith => _$PackagedProductDefinitionContainedItemCopyWithImpl<
              PackagedProductDefinitionContainedItem>(
            this,
            (value) => value,
          );
}
