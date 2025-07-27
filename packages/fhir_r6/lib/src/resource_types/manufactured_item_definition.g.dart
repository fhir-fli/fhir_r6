// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'manufactured_item_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ManufacturedItemDefinitionCopyWith<T>
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
    PublicationStatus? status,
    FhirString? name,
    CodeableConcept? manufacturedDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? manufacturer,
    List<MarketingStatus>? marketingStatus,
    List<CodeableConcept>? ingredient,
    List<ManufacturedItemDefinitionProperty>? property,
    List<ManufacturedItemDefinitionComponent>? component,
    bool? disallowExtensions,
  });
}

class _$ManufacturedItemDefinitionCopyWithImpl<T>
    implements $ManufacturedItemDefinitionCopyWith<T> {
  final ManufacturedItemDefinition _value;
  final T Function(ManufacturedItemDefinition) _then;

  _$ManufacturedItemDefinitionCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? manufacturedDoseForm = fhirSentinel,
    Object? unitOfPresentation = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? marketingStatus = fhirSentinel,
    Object? ingredient = fhirSentinel,
    Object? property = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ManufacturedItemDefinition(
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
            : (status as PublicationStatus?) ?? _value.status,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        manufacturedDoseForm: identical(manufacturedDoseForm, fhirSentinel)
            ? _value.manufacturedDoseForm
            : (manufacturedDoseForm as CodeableConcept?) ??
                _value.manufacturedDoseForm,
        unitOfPresentation: identical(unitOfPresentation, fhirSentinel)
            ? _value.unitOfPresentation
            : unitOfPresentation as CodeableConcept?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as List<Reference>?,
        marketingStatus: identical(marketingStatus, fhirSentinel)
            ? _value.marketingStatus
            : marketingStatus as List<MarketingStatus>?,
        ingredient: identical(ingredient, fhirSentinel)
            ? _value.ingredient
            : ingredient as List<CodeableConcept>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ManufacturedItemDefinitionProperty>?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<ManufacturedItemDefinitionComponent>?,
      ),
    );
  }
}

extension ManufacturedItemDefinitionCopyWithExtension
    on ManufacturedItemDefinition {
  $ManufacturedItemDefinitionCopyWith<ManufacturedItemDefinition>
      get copyWith =>
          _$ManufacturedItemDefinitionCopyWithImpl<ManufacturedItemDefinition>(
            this,
            (value) => value,
          );
}

abstract class $ManufacturedItemDefinitionPropertyCopyWith<T>
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

class _$ManufacturedItemDefinitionPropertyCopyWithImpl<T>
    implements $ManufacturedItemDefinitionPropertyCopyWith<T> {
  final ManufacturedItemDefinitionProperty _value;
  final T Function(ManufacturedItemDefinitionProperty) _then;

  _$ManufacturedItemDefinitionPropertyCopyWithImpl(this._value, this._then);

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
      ManufacturedItemDefinitionProperty(
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

extension ManufacturedItemDefinitionPropertyCopyWithExtension
    on ManufacturedItemDefinitionProperty {
  $ManufacturedItemDefinitionPropertyCopyWith<
          ManufacturedItemDefinitionProperty>
      get copyWith => _$ManufacturedItemDefinitionPropertyCopyWithImpl<
              ManufacturedItemDefinitionProperty>(
            this,
            (value) => value,
          );
}

abstract class $ManufacturedItemDefinitionComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? function_,
    List<Quantity>? amount,
    List<ManufacturedItemDefinitionConstituent>? constituent,
    List<ManufacturedItemDefinitionProperty>? property,
    List<ManufacturedItemDefinitionComponent>? component,
    bool? disallowExtensions,
  });
}

class _$ManufacturedItemDefinitionComponentCopyWithImpl<T>
    implements $ManufacturedItemDefinitionComponentCopyWith<T> {
  final ManufacturedItemDefinitionComponent _value;
  final T Function(ManufacturedItemDefinitionComponent) _then;

  _$ManufacturedItemDefinitionComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? constituent = fhirSentinel,
    Object? property = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ManufacturedItemDefinitionComponent(
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
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as List<CodeableConcept>?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as List<Quantity>?,
        constituent: identical(constituent, fhirSentinel)
            ? _value.constituent
            : constituent as List<ManufacturedItemDefinitionConstituent>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<ManufacturedItemDefinitionProperty>?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<ManufacturedItemDefinitionComponent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ManufacturedItemDefinitionComponentCopyWithExtension
    on ManufacturedItemDefinitionComponent {
  $ManufacturedItemDefinitionComponentCopyWith<
          ManufacturedItemDefinitionComponent>
      get copyWith => _$ManufacturedItemDefinitionComponentCopyWithImpl<
              ManufacturedItemDefinitionComponent>(
            this,
            (value) => value,
          );
}

abstract class $ManufacturedItemDefinitionConstituentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Quantity>? amount,
    List<CodeableConcept>? location,
    List<CodeableConcept>? function_,
    List<CodeableReference>? hasIngredient,
    bool? disallowExtensions,
  });
}

class _$ManufacturedItemDefinitionConstituentCopyWithImpl<T>
    implements $ManufacturedItemDefinitionConstituentCopyWith<T> {
  final ManufacturedItemDefinitionConstituent _value;
  final T Function(ManufacturedItemDefinitionConstituent) _then;

  _$ManufacturedItemDefinitionConstituentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? location = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? hasIngredient = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ManufacturedItemDefinitionConstituent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : amount as List<Quantity>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<CodeableConcept>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as List<CodeableConcept>?,
        hasIngredient: identical(hasIngredient, fhirSentinel)
            ? _value.hasIngredient
            : hasIngredient as List<CodeableReference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ManufacturedItemDefinitionConstituentCopyWithExtension
    on ManufacturedItemDefinitionConstituent {
  $ManufacturedItemDefinitionConstituentCopyWith<
          ManufacturedItemDefinitionConstituent>
      get copyWith => _$ManufacturedItemDefinitionConstituentCopyWithImpl<
              ManufacturedItemDefinitionConstituent>(
            this,
            (value) => value,
          );
}
