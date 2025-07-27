// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'claim_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClaimResponseCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Identifier>? traceNumber,
    FinancialResourceStatusCodes? status,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Reference? patient,
    FhirDateTime? created,
    Reference? insurer,
    Reference? requestor,
    Reference? request,
    ClaimProcessingCodes? outcome,
    CodeableConcept? decision,
    FhirString? disposition,
    FhirString? preAuthRef,
    Period? preAuthPeriod,
    List<ClaimResponseEvent>? event,
    CodeableConcept? payeeType,
    List<Reference>? encounter,
    CodeableConcept? diagnosisRelatedGroup,
    List<ClaimResponseItem>? item,
    List<ClaimResponseAddItem>? addItem,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseTotal>? total,
    ClaimResponsePayment? payment,
    CodeableConcept? fundsReserve,
    CodeableConcept? formCode,
    Attachment? form,
    List<ClaimResponseProcessNote>? processNote,
    List<Reference>? communicationRequest,
    List<ClaimResponseInsurance>? insurance,
    List<ClaimResponseError>? error,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseCopyWithImpl<T> implements $ClaimResponseCopyWith<T> {
  final ClaimResponse _value;
  final T Function(ClaimResponse) _then;

  _$ClaimResponseCopyWithImpl(this._value, this._then);

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
    Object? traceNumber = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subType = fhirSentinel,
    Object? use = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? created = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? request = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? decision = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? preAuthPeriod = fhirSentinel,
    Object? event = fhirSentinel,
    Object? payeeType = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? diagnosisRelatedGroup = fhirSentinel,
    Object? item = fhirSentinel,
    Object? addItem = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? total = fhirSentinel,
    Object? payment = fhirSentinel,
    Object? fundsReserve = fhirSentinel,
    Object? formCode = fhirSentinel,
    Object? form = fhirSentinel,
    Object? processNote = fhirSentinel,
    Object? communicationRequest = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? error = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponse(
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
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FinancialResourceStatusCodes?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : (use as Use?) ?? _value.use,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : insurer as Reference?,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : requestor as Reference?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : (outcome as ClaimProcessingCodes?) ?? _value.outcome,
        decision: identical(decision, fhirSentinel)
            ? _value.decision
            : decision as CodeableConcept?,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as FhirString?,
        preAuthPeriod: identical(preAuthPeriod, fhirSentinel)
            ? _value.preAuthPeriod
            : preAuthPeriod as Period?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<ClaimResponseEvent>?,
        payeeType: identical(payeeType, fhirSentinel)
            ? _value.payeeType
            : payeeType as CodeableConcept?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as List<Reference>?,
        diagnosisRelatedGroup: identical(diagnosisRelatedGroup, fhirSentinel)
            ? _value.diagnosisRelatedGroup
            : diagnosisRelatedGroup as CodeableConcept?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<ClaimResponseItem>?,
        addItem: identical(addItem, fhirSentinel)
            ? _value.addItem
            : addItem as List<ClaimResponseAddItem>?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        total: identical(total, fhirSentinel)
            ? _value.total
            : total as List<ClaimResponseTotal>?,
        payment: identical(payment, fhirSentinel)
            ? _value.payment
            : payment as ClaimResponsePayment?,
        fundsReserve: identical(fundsReserve, fhirSentinel)
            ? _value.fundsReserve
            : fundsReserve as CodeableConcept?,
        formCode: identical(formCode, fhirSentinel)
            ? _value.formCode
            : formCode as CodeableConcept?,
        form: identical(form, fhirSentinel) ? _value.form : form as Attachment?,
        processNote: identical(processNote, fhirSentinel)
            ? _value.processNote
            : processNote as List<ClaimResponseProcessNote>?,
        communicationRequest: identical(communicationRequest, fhirSentinel)
            ? _value.communicationRequest
            : communicationRequest as List<Reference>?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<ClaimResponseInsurance>?,
        error: identical(error, fhirSentinel)
            ? _value.error
            : error as List<ClaimResponseError>?,
      ),
    );
  }
}

extension ClaimResponseCopyWithExtension on ClaimResponse {
  $ClaimResponseCopyWith<ClaimResponse> get copyWith =>
      _$ClaimResponseCopyWithImpl<ClaimResponse>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseEventCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? whenX,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseEventCopyWithImpl<T>
    implements $ClaimResponseEventCopyWith<T> {
  final ClaimResponseEvent _value;
  final T Function(ClaimResponseEvent) _then;

  _$ClaimResponseEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? whenX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseEvent(
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
        whenX: identical(whenX, fhirSentinel)
            ? _value.whenX
            : (whenX as FhirDateTime?) ?? _value.whenX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseEventCopyWithExtension on ClaimResponseEvent {
  $ClaimResponseEventCopyWith<ClaimResponseEvent> get copyWith =>
      _$ClaimResponseEventCopyWithImpl<ClaimResponseEvent>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    List<Identifier>? traceNumber,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseItemCopyWithImpl<T>
    implements $ClaimResponseItemCopyWith<T> {
  final ClaimResponseItem _value;
  final T Function(ClaimResponseItem) _then;

  _$ClaimResponseItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemSequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemSequence: identical(itemSequence, fhirSentinel)
            ? _value.itemSequence
            : (itemSequence as FhirPositiveInt?) ?? _value.itemSequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ClaimResponseDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseItemCopyWithExtension on ClaimResponseItem {
  $ClaimResponseItemCopyWith<ClaimResponseItem> get copyWith =>
      _$ClaimResponseItemCopyWithImpl<ClaimResponseItem>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseReviewOutcomeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? decision,
    List<CodeableConcept>? reason,
    FhirString? preAuthRef,
    Period? preAuthPeriod,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseReviewOutcomeCopyWithImpl<T>
    implements $ClaimResponseReviewOutcomeCopyWith<T> {
  final ClaimResponseReviewOutcome _value;
  final T Function(ClaimResponseReviewOutcome) _then;

  _$ClaimResponseReviewOutcomeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? decision = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? preAuthPeriod = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseReviewOutcome(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        decision: identical(decision, fhirSentinel)
            ? _value.decision
            : decision as CodeableConcept?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableConcept>?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as FhirString?,
        preAuthPeriod: identical(preAuthPeriod, fhirSentinel)
            ? _value.preAuthPeriod
            : preAuthPeriod as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseReviewOutcomeCopyWithExtension
    on ClaimResponseReviewOutcome {
  $ClaimResponseReviewOutcomeCopyWith<ClaimResponseReviewOutcome>
      get copyWith =>
          _$ClaimResponseReviewOutcomeCopyWithImpl<ClaimResponseReviewOutcome>(
            this,
            (value) => value,
          );
}

abstract class $ClaimResponseAdjudicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    Quantity? quantity,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseAdjudicationCopyWithImpl<T>
    implements $ClaimResponseAdjudicationCopyWith<T> {
  final ClaimResponseAdjudication _value;
  final T Function(ClaimResponseAdjudication) _then;

  _$ClaimResponseAdjudicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseAdjudication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseAdjudicationCopyWithExtension
    on ClaimResponseAdjudication {
  $ClaimResponseAdjudicationCopyWith<ClaimResponseAdjudication> get copyWith =>
      _$ClaimResponseAdjudicationCopyWithImpl<ClaimResponseAdjudication>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? detailSequence,
    List<Identifier>? traceNumber,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseDetailCopyWithImpl<T>
    implements $ClaimResponseDetailCopyWith<T> {
  final ClaimResponseDetail _value;
  final T Function(ClaimResponseDetail) _then;

  _$ClaimResponseDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? detailSequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        detailSequence: identical(detailSequence, fhirSentinel)
            ? _value.detailSequence
            : (detailSequence as FhirPositiveInt?) ?? _value.detailSequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ClaimResponseSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseDetailCopyWithExtension on ClaimResponseDetail {
  $ClaimResponseDetailCopyWith<ClaimResponseDetail> get copyWith =>
      _$ClaimResponseDetailCopyWithImpl<ClaimResponseDetail>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseSubDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? subDetailSequence,
    List<Identifier>? traceNumber,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseSubDetailCopyWithImpl<T>
    implements $ClaimResponseSubDetailCopyWith<T> {
  final ClaimResponseSubDetail _value;
  final T Function(ClaimResponseSubDetail) _then;

  _$ClaimResponseSubDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? subDetailSequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseSubDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        subDetailSequence: identical(subDetailSequence, fhirSentinel)
            ? _value.subDetailSequence
            : (subDetailSequence as FhirPositiveInt?) ??
                _value.subDetailSequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseSubDetailCopyWithExtension on ClaimResponseSubDetail {
  $ClaimResponseSubDetailCopyWith<ClaimResponseSubDetail> get copyWith =>
      _$ClaimResponseSubDetailCopyWithImpl<ClaimResponseSubDetail>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseAddItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<FhirPositiveInt>? detailSequence,
    List<FhirPositiveInt>? subdetailSequence,
    List<Identifier>? traceNumber,
    List<Reference>? provider,
    CodeableConcept? revenue,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<Reference>? request,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedX,
    CodeableConcept? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<ClaimResponseBodySite>? bodySite,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseAddItemCopyWithImpl<T>
    implements $ClaimResponseAddItemCopyWith<T> {
  final ClaimResponseAddItem _value;
  final T Function(ClaimResponseAddItem) _then;

  _$ClaimResponseAddItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemSequence = fhirSentinel,
    Object? detailSequence = fhirSentinel,
    Object? subdetailSequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? request = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseAddItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemSequence: identical(itemSequence, fhirSentinel)
            ? _value.itemSequence
            : itemSequence as List<FhirPositiveInt>?,
        detailSequence: identical(detailSequence, fhirSentinel)
            ? _value.detailSequence
            : detailSequence as List<FhirPositiveInt>?,
        subdetailSequence: identical(subdetailSequence, fhirSentinel)
            ? _value.subdetailSequence
            : subdetailSequence as List<FhirPositiveInt>?,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as List<Reference>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as List<Reference>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as FhirDate?,
        locationX: identical(locationX, fhirSentinel)
            ? _value.locationX
            : locationX as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<ClaimResponseBodySite>?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ClaimResponseDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseAddItemCopyWithExtension on ClaimResponseAddItem {
  $ClaimResponseAddItemCopyWith<ClaimResponseAddItem> get copyWith =>
      _$ClaimResponseAddItemCopyWithImpl<ClaimResponseAddItem>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseBodySiteCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? site,
    List<CodeableConcept>? subSite,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseBodySiteCopyWithImpl<T>
    implements $ClaimResponseBodySiteCopyWith<T> {
  final ClaimResponseBodySite _value;
  final T Function(ClaimResponseBodySite) _then;

  _$ClaimResponseBodySiteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? site = fhirSentinel,
    Object? subSite = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseBodySite(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : (site as List<CodeableReference>?) ?? _value.site,
        subSite: identical(subSite, fhirSentinel)
            ? _value.subSite
            : subSite as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseBodySiteCopyWithExtension on ClaimResponseBodySite {
  $ClaimResponseBodySiteCopyWith<ClaimResponseBodySite> get copyWith =>
      _$ClaimResponseBodySiteCopyWithImpl<ClaimResponseBodySite>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseDetail1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? traceNumber,
    CodeableConcept? revenue,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseDetail1CopyWithImpl<T>
    implements $ClaimResponseDetail1CopyWith<T> {
  final ClaimResponseDetail1 _value;
  final T Function(ClaimResponseDetail1) _then;

  _$ClaimResponseDetail1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseDetail1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ClaimResponseSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseDetail1CopyWithExtension on ClaimResponseDetail1 {
  $ClaimResponseDetail1CopyWith<ClaimResponseDetail1> get copyWith =>
      _$ClaimResponseDetail1CopyWithImpl<ClaimResponseDetail1>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseSubDetail1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? traceNumber,
    CodeableConcept? revenue,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    ClaimResponseReviewOutcome? reviewOutcome,
    List<ClaimResponseAdjudication>? adjudication,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseSubDetail1CopyWithImpl<T>
    implements $ClaimResponseSubDetail1CopyWith<T> {
  final ClaimResponseSubDetail1 _value;
  final T Function(ClaimResponseSubDetail1) _then;

  _$ClaimResponseSubDetail1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? noteNumber = fhirSentinel,
    Object? reviewOutcome = fhirSentinel,
    Object? adjudication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseSubDetail1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        noteNumber: identical(noteNumber, fhirSentinel)
            ? _value.noteNumber
            : noteNumber as List<FhirPositiveInt>?,
        reviewOutcome: identical(reviewOutcome, fhirSentinel)
            ? _value.reviewOutcome
            : reviewOutcome as ClaimResponseReviewOutcome?,
        adjudication: identical(adjudication, fhirSentinel)
            ? _value.adjudication
            : adjudication as List<ClaimResponseAdjudication>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseSubDetail1CopyWithExtension on ClaimResponseSubDetail1 {
  $ClaimResponseSubDetail1CopyWith<ClaimResponseSubDetail1> get copyWith =>
      _$ClaimResponseSubDetail1CopyWithImpl<ClaimResponseSubDetail1>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseTotalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseTotalCopyWithImpl<T>
    implements $ClaimResponseTotalCopyWith<T> {
  final ClaimResponseTotal _value;
  final T Function(ClaimResponseTotal) _then;

  _$ClaimResponseTotalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseTotal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : (amount as Money?) ?? _value.amount,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseTotalCopyWithExtension on ClaimResponseTotal {
  $ClaimResponseTotalCopyWith<ClaimResponseTotal> get copyWith =>
      _$ClaimResponseTotalCopyWithImpl<ClaimResponseTotal>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponsePaymentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Money? amount,
    Identifier? identifier,
    bool? disallowExtensions,
  });
}

class _$ClaimResponsePaymentCopyWithImpl<T>
    implements $ClaimResponsePaymentCopyWith<T> {
  final ClaimResponsePayment _value;
  final T Function(ClaimResponsePayment) _then;

  _$ClaimResponsePaymentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? adjustment = fhirSentinel,
    Object? adjustmentReason = fhirSentinel,
    Object? date = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponsePayment(
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
        adjustment: identical(adjustment, fhirSentinel)
            ? _value.adjustment
            : adjustment as Money?,
        adjustmentReason: identical(adjustmentReason, fhirSentinel)
            ? _value.adjustmentReason
            : adjustmentReason as CodeableConcept?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        amount: identical(amount, fhirSentinel)
            ? _value.amount
            : (amount as Money?) ?? _value.amount,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponsePaymentCopyWithExtension on ClaimResponsePayment {
  $ClaimResponsePaymentCopyWith<ClaimResponsePayment> get copyWith =>
      _$ClaimResponsePaymentCopyWithImpl<ClaimResponsePayment>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseProcessNoteCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    CodeableConcept? type,
    FhirString? text,
    CodeableConcept? language,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseProcessNoteCopyWithImpl<T>
    implements $ClaimResponseProcessNoteCopyWith<T> {
  final ClaimResponseProcessNote _value;
  final T Function(ClaimResponseProcessNote) _then;

  _$ClaimResponseProcessNoteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? number = fhirSentinel,
    Object? type = fhirSentinel,
    Object? text = fhirSentinel,
    Object? language = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseProcessNote(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirPositiveInt?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        text: identical(text, fhirSentinel)
            ? _value.text
            : (text as FhirString?) ?? _value.text,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseProcessNoteCopyWithExtension
    on ClaimResponseProcessNote {
  $ClaimResponseProcessNoteCopyWith<ClaimResponseProcessNote> get copyWith =>
      _$ClaimResponseProcessNoteCopyWithImpl<ClaimResponseProcessNote>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseInsuranceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirBoolean? focal,
    Reference? coverage,
    FhirString? businessArrangement,
    Reference? claimResponse,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseInsuranceCopyWithImpl<T>
    implements $ClaimResponseInsuranceCopyWith<T> {
  final ClaimResponseInsurance _value;
  final T Function(ClaimResponseInsurance) _then;

  _$ClaimResponseInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? focal = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? businessArrangement = fhirSentinel,
    Object? claimResponse = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        focal: identical(focal, fhirSentinel)
            ? _value.focal
            : (focal as FhirBoolean?) ?? _value.focal,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        businessArrangement: identical(businessArrangement, fhirSentinel)
            ? _value.businessArrangement
            : businessArrangement as FhirString?,
        claimResponse: identical(claimResponse, fhirSentinel)
            ? _value.claimResponse
            : claimResponse as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseInsuranceCopyWithExtension on ClaimResponseInsurance {
  $ClaimResponseInsuranceCopyWith<ClaimResponseInsurance> get copyWith =>
      _$ClaimResponseInsuranceCopyWithImpl<ClaimResponseInsurance>(
        this,
        (value) => value,
      );
}

abstract class $ClaimResponseErrorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    FhirPositiveInt? detailSequence,
    FhirPositiveInt? subDetailSequence,
    CodeableConcept? code,
    List<FhirString>? expression,
    bool? disallowExtensions,
  });
}

class _$ClaimResponseErrorCopyWithImpl<T>
    implements $ClaimResponseErrorCopyWith<T> {
  final ClaimResponseError _value;
  final T Function(ClaimResponseError) _then;

  _$ClaimResponseErrorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? itemSequence = fhirSentinel,
    Object? detailSequence = fhirSentinel,
    Object? subDetailSequence = fhirSentinel,
    Object? code = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimResponseError(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        itemSequence: identical(itemSequence, fhirSentinel)
            ? _value.itemSequence
            : itemSequence as FhirPositiveInt?,
        detailSequence: identical(detailSequence, fhirSentinel)
            ? _value.detailSequence
            : detailSequence as FhirPositiveInt?,
        subDetailSequence: identical(subDetailSequence, fhirSentinel)
            ? _value.subDetailSequence
            : subDetailSequence as FhirPositiveInt?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as List<FhirString>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimResponseErrorCopyWithExtension on ClaimResponseError {
  $ClaimResponseErrorCopyWith<ClaimResponseError> get copyWith =>
      _$ClaimResponseErrorCopyWithImpl<ClaimResponseError>(
        this,
        (value) => value,
      );
}
