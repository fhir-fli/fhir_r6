// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'supply_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SupplyRequestCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    SupplyRequestStatus? status,
    List<Reference>? basedOn,
    CodeableConcept? category,
    RequestPriority? priority,
    Reference? deliverFor,
    CodeableReference? item,
    Quantity? quantity,
    List<SupplyRequestParameter>? parameter,
    FhirDateTime? occurrenceX,
    FhirDateTime? authoredOn,
    Reference? requester,
    List<Reference>? supplier,
    List<CodeableReference>? reason,
    Reference? deliverFrom,
    Reference? deliverTo,
    bool? disallowExtensions,
  });
}

class _$SupplyRequestCopyWithImpl<T> implements $SupplyRequestCopyWith<T> {
  final SupplyRequest _value;
  final T Function(SupplyRequest) _then;

  _$SupplyRequestCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? deliverFor = fhirSentinel,
    Object? item = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? supplier = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? deliverFrom = fhirSentinel,
    Object? deliverTo = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyRequest(
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
            : status as SupplyRequestStatus?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        deliverFor: identical(deliverFor, fhirSentinel)
            ? _value.deliverFor
            : deliverFor as Reference?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as CodeableReference?) ?? _value.item,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Quantity?) ?? _value.quantity,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<SupplyRequestParameter>?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as FhirDateTime?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        supplier: identical(supplier, fhirSentinel)
            ? _value.supplier
            : supplier as List<Reference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        deliverFrom: identical(deliverFrom, fhirSentinel)
            ? _value.deliverFrom
            : deliverFrom as Reference?,
        deliverTo: identical(deliverTo, fhirSentinel)
            ? _value.deliverTo
            : deliverTo as Reference?,
      ),
    );
  }
}

extension SupplyRequestCopyWithExtension on SupplyRequest {
  $SupplyRequestCopyWith<SupplyRequest> get copyWith =>
      _$SupplyRequestCopyWithImpl<SupplyRequest>(
        this,
        (value) => value,
      );
}

abstract class $SupplyRequestParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$SupplyRequestParameterCopyWithImpl<T>
    implements $SupplyRequestParameterCopyWith<T> {
  final SupplyRequestParameter _value;
  final T Function(SupplyRequestParameter) _then;

  _$SupplyRequestParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyRequestParameter(
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

extension SupplyRequestParameterCopyWithExtension on SupplyRequestParameter {
  $SupplyRequestParameterCopyWith<SupplyRequestParameter> get copyWith =>
      _$SupplyRequestParameterCopyWithImpl<SupplyRequestParameter>(
        this,
        (value) => value,
      );
}
