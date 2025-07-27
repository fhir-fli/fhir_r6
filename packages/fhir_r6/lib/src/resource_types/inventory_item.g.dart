// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'inventory_item.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InventoryItemCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    InventoryItemStatusCodes? status,
    List<CodeableConcept>? category,
    List<CodeableConcept>? code,
    List<InventoryItemName>? name,
    List<InventoryItemResponsibleOrganization>? responsibleOrganization,
    InventoryItemDescription? description,
    List<CodeableConcept>? inventoryStatus,
    CodeableConcept? baseUnit,
    Quantity? netContent,
    List<InventoryItemAssociation>? association,
    List<InventoryItemCharacteristic>? characteristic,
    InventoryItemInstance? instance,
    Reference? productReference,
    bool? disallowExtensions,
  });
}

class _$InventoryItemCopyWithImpl<T> implements $InventoryItemCopyWith<T> {
  final InventoryItem _value;
  final T Function(InventoryItem) _then;

  _$InventoryItemCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? name = fhirSentinel,
    Object? responsibleOrganization = fhirSentinel,
    Object? description = fhirSentinel,
    Object? inventoryStatus = fhirSentinel,
    Object? baseUnit = fhirSentinel,
    Object? netContent = fhirSentinel,
    Object? association = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? productReference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItem(
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
            : (status as InventoryItemStatusCodes?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<InventoryItemName>?,
        responsibleOrganization:
            identical(responsibleOrganization, fhirSentinel)
                ? _value.responsibleOrganization
                : responsibleOrganization
                    as List<InventoryItemResponsibleOrganization>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as InventoryItemDescription?,
        inventoryStatus: identical(inventoryStatus, fhirSentinel)
            ? _value.inventoryStatus
            : inventoryStatus as List<CodeableConcept>?,
        baseUnit: identical(baseUnit, fhirSentinel)
            ? _value.baseUnit
            : baseUnit as CodeableConcept?,
        netContent: identical(netContent, fhirSentinel)
            ? _value.netContent
            : netContent as Quantity?,
        association: identical(association, fhirSentinel)
            ? _value.association
            : association as List<InventoryItemAssociation>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<InventoryItemCharacteristic>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as InventoryItemInstance?,
        productReference: identical(productReference, fhirSentinel)
            ? _value.productReference
            : productReference as Reference?,
      ),
    );
  }
}

extension InventoryItemCopyWithExtension on InventoryItem {
  $InventoryItemCopyWith<InventoryItem> get copyWith =>
      _$InventoryItemCopyWithImpl<InventoryItem>(
        this,
        (value) => value,
      );
}

abstract class $InventoryItemNameCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? nameType,
    CommonLanguages? language,
    FhirString? name,
    bool? disallowExtensions,
  });
}

class _$InventoryItemNameCopyWithImpl<T>
    implements $InventoryItemNameCopyWith<T> {
  final InventoryItemName _value;
  final T Function(InventoryItemName) _then;

  _$InventoryItemNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? nameType = fhirSentinel,
    Object? language = fhirSentinel,
    Object? name = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        nameType: identical(nameType, fhirSentinel)
            ? _value.nameType
            : (nameType as Coding?) ?? _value.nameType,
        language: identical(language, fhirSentinel)
            ? _value.language
            : (language as CommonLanguages?) ?? _value.language,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemNameCopyWithExtension on InventoryItemName {
  $InventoryItemNameCopyWith<InventoryItemName> get copyWith =>
      _$InventoryItemNameCopyWithImpl<InventoryItemName>(
        this,
        (value) => value,
      );
}

abstract class $InventoryItemResponsibleOrganizationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? organization,
    bool? disallowExtensions,
  });
}

class _$InventoryItemResponsibleOrganizationCopyWithImpl<T>
    implements $InventoryItemResponsibleOrganizationCopyWith<T> {
  final InventoryItemResponsibleOrganization _value;
  final T Function(InventoryItemResponsibleOrganization) _then;

  _$InventoryItemResponsibleOrganizationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemResponsibleOrganization(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : (role as CodeableConcept?) ?? _value.role,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : (organization as Reference?) ?? _value.organization,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemResponsibleOrganizationCopyWithExtension
    on InventoryItemResponsibleOrganization {
  $InventoryItemResponsibleOrganizationCopyWith<
          InventoryItemResponsibleOrganization>
      get copyWith => _$InventoryItemResponsibleOrganizationCopyWithImpl<
              InventoryItemResponsibleOrganization>(
            this,
            (value) => value,
          );
}

abstract class $InventoryItemDescriptionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$InventoryItemDescriptionCopyWithImpl<T>
    implements $InventoryItemDescriptionCopyWith<T> {
  final InventoryItemDescription _value;
  final T Function(InventoryItemDescription) _then;

  _$InventoryItemDescriptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? language = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemDescription(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemDescriptionCopyWithExtension
    on InventoryItemDescription {
  $InventoryItemDescriptionCopyWith<InventoryItemDescription> get copyWith =>
      _$InventoryItemDescriptionCopyWithImpl<InventoryItemDescription>(
        this,
        (value) => value,
      );
}

abstract class $InventoryItemAssociationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? associationType,
    Reference? relatedItem,
    Ratio? quantity,
    bool? disallowExtensions,
  });
}

class _$InventoryItemAssociationCopyWithImpl<T>
    implements $InventoryItemAssociationCopyWith<T> {
  final InventoryItemAssociation _value;
  final T Function(InventoryItemAssociation) _then;

  _$InventoryItemAssociationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? associationType = fhirSentinel,
    Object? relatedItem = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemAssociation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        associationType: identical(associationType, fhirSentinel)
            ? _value.associationType
            : (associationType as CodeableConcept?) ?? _value.associationType,
        relatedItem: identical(relatedItem, fhirSentinel)
            ? _value.relatedItem
            : (relatedItem as Reference?) ?? _value.relatedItem,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Ratio?) ?? _value.quantity,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemAssociationCopyWithExtension
    on InventoryItemAssociation {
  $InventoryItemAssociationCopyWith<InventoryItemAssociation> get copyWith =>
      _$InventoryItemAssociationCopyWithImpl<InventoryItemAssociation>(
        this,
        (value) => value,
      );
}

abstract class $InventoryItemCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? characteristicType,
    FhirString? valueX,
    bool? disallowExtensions,
  });
}

class _$InventoryItemCharacteristicCopyWithImpl<T>
    implements $InventoryItemCharacteristicCopyWith<T> {
  final InventoryItemCharacteristic _value;
  final T Function(InventoryItemCharacteristic) _then;

  _$InventoryItemCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? characteristicType = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        characteristicType: identical(characteristicType, fhirSentinel)
            ? _value.characteristicType
            : (characteristicType as CodeableConcept?) ??
                _value.characteristicType,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirString?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemCharacteristicCopyWithExtension
    on InventoryItemCharacteristic {
  $InventoryItemCharacteristicCopyWith<InventoryItemCharacteristic>
      get copyWith => _$InventoryItemCharacteristicCopyWithImpl<
              InventoryItemCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $InventoryItemInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? lotNumber,
    FhirDateTime? expiry,
    Reference? subject,
    Reference? location,
    bool? disallowExtensions,
  });
}

class _$InventoryItemInstanceCopyWithImpl<T>
    implements $InventoryItemInstanceCopyWith<T> {
  final InventoryItemInstance _value;
  final T Function(InventoryItemInstance) _then;

  _$InventoryItemInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? expiry = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? location = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryItemInstance(
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
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        expiry: identical(expiry, fhirSentinel)
            ? _value.expiry
            : expiry as FhirDateTime?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryItemInstanceCopyWithExtension on InventoryItemInstance {
  $InventoryItemInstanceCopyWith<InventoryItemInstance> get copyWith =>
      _$InventoryItemInstanceCopyWithImpl<InventoryItemInstance>(
        this,
        (value) => value,
      );
}
