// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'invoice.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InvoiceCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    InvoiceStatus? status,
    FhirString? cancelledReason,
    CodeableConcept? type,
    Reference? subject,
    Reference? recipient,
    FhirDateTime? date,
    FhirDateTime? creation,
    FhirDate? periodX,
    List<InvoiceParticipant>? participant,
    Reference? issuer,
    Reference? account,
    List<InvoiceLineItem>? lineItem,
    List<MonetaryComponent>? totalPriceComponent,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$InvoiceCopyWithImpl<T> implements $InvoiceCopyWith<T> {
  final Invoice _value;
  final T Function(Invoice) _then;

  _$InvoiceCopyWithImpl(this._value, this._then);

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
    Object? cancelledReason = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? date = fhirSentinel,
    Object? creation = fhirSentinel,
    Object? periodX = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? account = fhirSentinel,
    Object? lineItem = fhirSentinel,
    Object? totalPriceComponent = fhirSentinel,
    Object? totalNet = fhirSentinel,
    Object? totalGross = fhirSentinel,
    Object? paymentTerms = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Invoice(
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
            : (status as InvoiceStatus?) ?? _value.status,
        cancelledReason: identical(cancelledReason, fhirSentinel)
            ? _value.cancelledReason
            : cancelledReason as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        recipient: identical(recipient, fhirSentinel)
            ? _value.recipient
            : recipient as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        creation: identical(creation, fhirSentinel)
            ? _value.creation
            : creation as FhirDateTime?,
        periodX: identical(periodX, fhirSentinel)
            ? _value.periodX
            : periodX as FhirDate?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<InvoiceParticipant>?,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : issuer as Reference?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as Reference?,
        lineItem: identical(lineItem, fhirSentinel)
            ? _value.lineItem
            : lineItem as List<InvoiceLineItem>?,
        totalPriceComponent: identical(totalPriceComponent, fhirSentinel)
            ? _value.totalPriceComponent
            : totalPriceComponent as List<MonetaryComponent>?,
        totalNet: identical(totalNet, fhirSentinel)
            ? _value.totalNet
            : totalNet as Money?,
        totalGross: identical(totalGross, fhirSentinel)
            ? _value.totalGross
            : totalGross as Money?,
        paymentTerms: identical(paymentTerms, fhirSentinel)
            ? _value.paymentTerms
            : paymentTerms as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension InvoiceCopyWithExtension on Invoice {
  $InvoiceCopyWith<Invoice> get copyWith => _$InvoiceCopyWithImpl<Invoice>(
        this,
        (value) => value,
      );
}

abstract class $InvoiceParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$InvoiceParticipantCopyWithImpl<T>
    implements $InvoiceParticipantCopyWith<T> {
  final InvoiceParticipant _value;
  final T Function(InvoiceParticipant) _then;

  _$InvoiceParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InvoiceParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InvoiceParticipantCopyWithExtension on InvoiceParticipant {
  $InvoiceParticipantCopyWith<InvoiceParticipant> get copyWith =>
      _$InvoiceParticipantCopyWithImpl<InvoiceParticipant>(
        this,
        (value) => value,
      );
}

abstract class $InvoiceLineItemCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirDate? servicedX,
    Reference? chargeItemX,
    List<MonetaryComponent>? priceComponent,
    bool? disallowExtensions,
  });
}

class _$InvoiceLineItemCopyWithImpl<T> implements $InvoiceLineItemCopyWith<T> {
  final InvoiceLineItem _value;
  final T Function(InvoiceLineItem) _then;

  _$InvoiceLineItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? chargeItemX = fhirSentinel,
    Object? priceComponent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InvoiceLineItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : sequence as FhirPositiveInt?,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as FhirDate?,
        chargeItemX: identical(chargeItemX, fhirSentinel)
            ? _value.chargeItemX
            : (chargeItemX as Reference?) ?? _value.chargeItemX,
        priceComponent: identical(priceComponent, fhirSentinel)
            ? _value.priceComponent
            : priceComponent as List<MonetaryComponent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InvoiceLineItemCopyWithExtension on InvoiceLineItem {
  $InvoiceLineItemCopyWith<InvoiceLineItem> get copyWith =>
      _$InvoiceLineItemCopyWithImpl<InvoiceLineItem>(
        this,
        (value) => value,
      );
}
