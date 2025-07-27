// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'consent.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConsentCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ConsentState? status,
    List<CodeableConcept>? category,
    Reference? subject,
    FhirDate? date,
    Period? period,
    List<Reference>? grantor,
    List<Reference>? grantee,
    List<Reference>? manager,
    List<Reference>? controller,
    List<Attachment>? sourceAttachment,
    List<Reference>? sourceReference,
    List<CodeableConcept>? regulatoryBasis,
    ConsentPolicyBasis? policyBasis,
    List<Reference>? policyText,
    List<ConsentVerification>? verification,
    ConsentProvisionType? decision,
    List<ConsentProvision>? provision,
    bool? disallowExtensions,
  });
}

class _$ConsentCopyWithImpl<T> implements $ConsentCopyWith<T> {
  final Consent _value;
  final T Function(Consent) _then;

  _$ConsentCopyWithImpl(this._value, this._then);

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
    Object? subject = fhirSentinel,
    Object? date = fhirSentinel,
    Object? period = fhirSentinel,
    Object? grantor = fhirSentinel,
    Object? grantee = fhirSentinel,
    Object? manager = fhirSentinel,
    Object? controller = fhirSentinel,
    Object? sourceAttachment = fhirSentinel,
    Object? sourceReference = fhirSentinel,
    Object? regulatoryBasis = fhirSentinel,
    Object? policyBasis = fhirSentinel,
    Object? policyText = fhirSentinel,
    Object? verification = fhirSentinel,
    Object? decision = fhirSentinel,
    Object? provision = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Consent(
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
            : (status as ConsentState?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        grantor: identical(grantor, fhirSentinel)
            ? _value.grantor
            : grantor as List<Reference>?,
        grantee: identical(grantee, fhirSentinel)
            ? _value.grantee
            : grantee as List<Reference>?,
        manager: identical(manager, fhirSentinel)
            ? _value.manager
            : manager as List<Reference>?,
        controller: identical(controller, fhirSentinel)
            ? _value.controller
            : controller as List<Reference>?,
        sourceAttachment: identical(sourceAttachment, fhirSentinel)
            ? _value.sourceAttachment
            : sourceAttachment as List<Attachment>?,
        sourceReference: identical(sourceReference, fhirSentinel)
            ? _value.sourceReference
            : sourceReference as List<Reference>?,
        regulatoryBasis: identical(regulatoryBasis, fhirSentinel)
            ? _value.regulatoryBasis
            : regulatoryBasis as List<CodeableConcept>?,
        policyBasis: identical(policyBasis, fhirSentinel)
            ? _value.policyBasis
            : policyBasis as ConsentPolicyBasis?,
        policyText: identical(policyText, fhirSentinel)
            ? _value.policyText
            : policyText as List<Reference>?,
        verification: identical(verification, fhirSentinel)
            ? _value.verification
            : verification as List<ConsentVerification>?,
        decision: identical(decision, fhirSentinel)
            ? _value.decision
            : decision as ConsentProvisionType?,
        provision: identical(provision, fhirSentinel)
            ? _value.provision
            : provision as List<ConsentProvision>?,
      ),
    );
  }
}

extension ConsentCopyWithExtension on Consent {
  $ConsentCopyWith<Consent> get copyWith => _$ConsentCopyWithImpl<Consent>(
        this,
        (value) => value,
      );
}

abstract class $ConsentPolicyBasisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    FhirUrl? url,
    bool? disallowExtensions,
  });
}

class _$ConsentPolicyBasisCopyWithImpl<T>
    implements $ConsentPolicyBasisCopyWith<T> {
  final ConsentPolicyBasis _value;
  final T Function(ConsentPolicyBasis) _then;

  _$ConsentPolicyBasisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentPolicyBasis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Reference?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUrl?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentPolicyBasisCopyWithExtension on ConsentPolicyBasis {
  $ConsentPolicyBasisCopyWith<ConsentPolicyBasis> get copyWith =>
      _$ConsentPolicyBasisCopyWithImpl<ConsentPolicyBasis>(
        this,
        (value) => value,
      );
}

abstract class $ConsentVerificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? verified,
    CodeableConcept? verificationType,
    Reference? verifiedBy,
    Reference? verifiedWith,
    List<FhirDateTime>? verificationDate,
    bool? disallowExtensions,
  });
}

class _$ConsentVerificationCopyWithImpl<T>
    implements $ConsentVerificationCopyWith<T> {
  final ConsentVerification _value;
  final T Function(ConsentVerification) _then;

  _$ConsentVerificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? verified = fhirSentinel,
    Object? verificationType = fhirSentinel,
    Object? verifiedBy = fhirSentinel,
    Object? verifiedWith = fhirSentinel,
    Object? verificationDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentVerification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        verified: identical(verified, fhirSentinel)
            ? _value.verified
            : (verified as FhirBoolean?) ?? _value.verified,
        verificationType: identical(verificationType, fhirSentinel)
            ? _value.verificationType
            : verificationType as CodeableConcept?,
        verifiedBy: identical(verifiedBy, fhirSentinel)
            ? _value.verifiedBy
            : verifiedBy as Reference?,
        verifiedWith: identical(verifiedWith, fhirSentinel)
            ? _value.verifiedWith
            : verifiedWith as Reference?,
        verificationDate: identical(verificationDate, fhirSentinel)
            ? _value.verificationDate
            : verificationDate as List<FhirDateTime>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentVerificationCopyWithExtension on ConsentVerification {
  $ConsentVerificationCopyWith<ConsentVerification> get copyWith =>
      _$ConsentVerificationCopyWithImpl<ConsentVerification>(
        this,
        (value) => value,
      );
}

abstract class $ConsentProvisionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Period? period,
    List<ConsentActor>? actor,
    List<CodeableConcept>? action,
    List<Coding>? securityLabel,
    List<Coding>? purpose,
    List<Coding>? documentType,
    List<Coding>? resourceType,
    List<CodeableConcept>? code,
    Period? dataPeriod,
    List<ConsentData>? data,
    FhirExpression? expression,
    List<ConsentProvision>? provision,
    bool? disallowExtensions,
  });
}

class _$ConsentProvisionCopyWithImpl<T>
    implements $ConsentProvisionCopyWith<T> {
  final ConsentProvision _value;
  final T Function(ConsentProvision) _then;

  _$ConsentProvisionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? period = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? action = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? documentType = fhirSentinel,
    Object? resourceType = fhirSentinel,
    Object? code = fhirSentinel,
    Object? dataPeriod = fhirSentinel,
    Object? data = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? provision = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentProvision(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<ConsentActor>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<CodeableConcept>?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<Coding>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as List<Coding>?,
        documentType: identical(documentType, fhirSentinel)
            ? _value.documentType
            : documentType as List<Coding>?,
        resourceType: identical(resourceType, fhirSentinel)
            ? _value.resourceType
            : resourceType as List<Coding>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        dataPeriod: identical(dataPeriod, fhirSentinel)
            ? _value.dataPeriod
            : dataPeriod as Period?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as List<ConsentData>?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        provision: identical(provision, fhirSentinel)
            ? _value.provision
            : provision as List<ConsentProvision>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentProvisionCopyWithExtension on ConsentProvision {
  $ConsentProvisionCopyWith<ConsentProvision> get copyWith =>
      _$ConsentProvisionCopyWithImpl<ConsentProvision>(
        this,
        (value) => value,
      );
}

abstract class $ConsentActorCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConsentActorCopyWithImpl<T> implements $ConsentActorCopyWith<T> {
  final ConsentActor _value;
  final T Function(ConsentActor) _then;

  _$ConsentActorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentActor(
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
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentActorCopyWithExtension on ConsentActor {
  $ConsentActorCopyWith<ConsentActor> get copyWith =>
      _$ConsentActorCopyWithImpl<ConsentActor>(
        this,
        (value) => value,
      );
}

abstract class $ConsentDataCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentDataMeaning? meaning,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConsentDataCopyWithImpl<T> implements $ConsentDataCopyWith<T> {
  final ConsentData _value;
  final T Function(ConsentData) _then;

  _$ConsentDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? meaning = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        meaning: identical(meaning, fhirSentinel)
            ? _value.meaning
            : (meaning as ConsentDataMeaning?) ?? _value.meaning,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentDataCopyWithExtension on ConsentData {
  $ConsentDataCopyWith<ConsentData> get copyWith =>
      _$ConsentDataCopyWithImpl<ConsentData>(
        this,
        (value) => value,
      );
}
