// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'payment_reconciliation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PaymentReconciliationCopyWith<T>
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
    CodeableConcept? type,
    FinancialResourceStatusCodes? status,
    CodeableConcept? kind,
    Period? period,
    FhirDateTime? created,
    Reference? enterer,
    CodeableConcept? issuerType,
    Reference? paymentIssuer,
    Reference? request,
    Reference? requestor,
    PaymentOutcome? outcome,
    FhirString? disposition,
    FhirDate? date,
    Reference? location,
    CodeableConcept? method,
    FhirString? cardBrand,
    FhirString? accountNumber,
    FhirDate? expirationDate,
    FhirString? processor,
    FhirString? referenceNumber,
    FhirString? authorization,
    Money? tenderedAmount,
    Money? returnedAmount,
    Money? amount,
    Identifier? paymentIdentifier,
    List<PaymentReconciliationAllocation>? allocation,
    CodeableConcept? formCode,
    List<PaymentReconciliationProcessNote>? processNote,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationCopyWithImpl<T>
    implements $PaymentReconciliationCopyWith<T> {
  final PaymentReconciliation _value;
  final T Function(PaymentReconciliation) _then;

  _$PaymentReconciliationCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? period = fhirSentinel,
    Object? created = fhirSentinel,
    Object? enterer = fhirSentinel,
    Object? issuerType = fhirSentinel,
    Object? paymentIssuer = fhirSentinel,
    Object? request = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? date = fhirSentinel,
    Object? location = fhirSentinel,
    Object? method = fhirSentinel,
    Object? cardBrand = fhirSentinel,
    Object? accountNumber = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? processor = fhirSentinel,
    Object? referenceNumber = fhirSentinel,
    Object? authorization = fhirSentinel,
    Object? tenderedAmount = fhirSentinel,
    Object? returnedAmount = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? paymentIdentifier = fhirSentinel,
    Object? allocation = fhirSentinel,
    Object? formCode = fhirSentinel,
    Object? processNote = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliation(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FinancialResourceStatusCodes?) ?? _value.status,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : kind as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        issuerType: identical(issuerType, fhirSentinel)
            ? _value.issuerType
            : issuerType as CodeableConcept?,
        paymentIssuer: identical(paymentIssuer, fhirSentinel)
            ? _value.paymentIssuer
            : paymentIssuer as Reference?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : requestor as Reference?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as PaymentOutcome?,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDate?) ?? _value.date,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        cardBrand: identical(cardBrand, fhirSentinel)
            ? _value.cardBrand
            : cardBrand as FhirString?,
        accountNumber: identical(accountNumber, fhirSentinel)
            ? _value.accountNumber
            : accountNumber as FhirString?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDate?,
        processor: identical(processor, fhirSentinel)
            ? _value.processor
            : processor as FhirString?,
        referenceNumber: identical(referenceNumber, fhirSentinel)
            ? _value.referenceNumber
            : referenceNumber as FhirString?,
        authorization: identical(authorization, fhirSentinel)
            ? _value.authorization
            : authorization as FhirString?,
        tenderedAmount: identical(tenderedAmount, fhirSentinel)
            ? _value.tenderedAmount
            : tenderedAmount as Money?,
        returnedAmount: identical(returnedAmount, fhirSentinel)
            ? _value.returnedAmount
            : returnedAmount as Money?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : (amount as Money?) ?? _value.amount,
        paymentIdentifier: identical(paymentIdentifier, fhirSentinel)
            ? _value.paymentIdentifier
            : paymentIdentifier as Identifier?,
        allocation: identical(allocation, fhirSentinel)
            ? _value.allocation
            : allocation as List<PaymentReconciliationAllocation>?,
        formCode: identical(formCode, fhirSentinel)
            ? _value.formCode
            : formCode as CodeableConcept?,
        processNote: identical(processNote, fhirSentinel)
            ? _value.processNote
            : processNote as List<PaymentReconciliationProcessNote>?,
      ),
    );
  }
}

extension PaymentReconciliationCopyWithExtension on PaymentReconciliation {
  $PaymentReconciliationCopyWith<PaymentReconciliation> get copyWith =>
      _$PaymentReconciliationCopyWithImpl<PaymentReconciliation>(
        this,
        (value) => value,
      );
}

abstract class $PaymentReconciliationAllocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Identifier? predecessor,
    Reference? target,
    FhirString? targetItemX,
    Reference? encounter,
    Reference? account,
    CodeableConcept? type,
    Reference? submitter,
    Reference? response,
    FhirDate? date,
    Reference? responsible,
    Reference? payee,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationAllocationCopyWithImpl<T>
    implements $PaymentReconciliationAllocationCopyWith<T> {
  final PaymentReconciliationAllocation _value;
  final T Function(PaymentReconciliationAllocation) _then;

  _$PaymentReconciliationAllocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? predecessor = fhirSentinel,
    Object? target = fhirSentinel,
    Object? targetItemX = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? account = fhirSentinel,
    Object? type = fhirSentinel,
    Object? submitter = fhirSentinel,
    Object? response = fhirSentinel,
    Object? date = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliationAllocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        predecessor: identical(predecessor, fhirSentinel)
            ? _value.predecessor
            : predecessor as Identifier?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as Reference?,
        targetItemX: identical(targetItemX, fhirSentinel)
            ? _value.targetItemX
            : targetItemX as FhirString?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        submitter: identical(submitter, fhirSentinel)
            ? _value.submitter
            : submitter as Reference?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as Reference?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as Reference?,
        payee:
            identical(payee, fhirSentinel) ? _value.payee : payee as Reference?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PaymentReconciliationAllocationCopyWithExtension
    on PaymentReconciliationAllocation {
  $PaymentReconciliationAllocationCopyWith<PaymentReconciliationAllocation>
      get copyWith => _$PaymentReconciliationAllocationCopyWithImpl<
              PaymentReconciliationAllocation>(
            this,
            (value) => value,
          );
}

abstract class $PaymentReconciliationProcessNoteCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NoteType? type,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationProcessNoteCopyWithImpl<T>
    implements $PaymentReconciliationProcessNoteCopyWith<T> {
  final PaymentReconciliationProcessNote _value;
  final T Function(PaymentReconciliationProcessNote) _then;

  _$PaymentReconciliationProcessNoteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliationProcessNote(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel) ? _value.type : type as NoteType?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PaymentReconciliationProcessNoteCopyWithExtension
    on PaymentReconciliationProcessNote {
  $PaymentReconciliationProcessNoteCopyWith<PaymentReconciliationProcessNote>
      get copyWith => _$PaymentReconciliationProcessNoteCopyWithImpl<
              PaymentReconciliationProcessNote>(
            this,
            (value) => value,
          );
}
