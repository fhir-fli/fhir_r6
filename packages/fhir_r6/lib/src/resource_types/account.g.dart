// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'account.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AccountCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    AccountStatus? status,
    CodeableConcept? billingStatus,
    CodeableConcept? type,
    FhirString? name,
    List<Reference>? subject,
    Period? servicePeriod,
    List<AccountCoverage>? coverage,
    Reference? owner,
    FhirMarkdown? description,
    List<AccountGuarantor>? guarantor,
    List<AccountDiagnosis>? diagnosis,
    List<AccountProcedure>? procedure,
    List<AccountRelatedAccount>? relatedAccount,
    CodeableConcept? currency,
    List<AccountBalance>? balance,
    FhirInstant? calculatedAt,
    bool? disallowExtensions,
  });
}

class _$AccountCopyWithImpl<T> implements $AccountCopyWith<T> {
  final Account _value;
  final T Function(Account) _then;

  _$AccountCopyWithImpl(this._value, this._then);

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
    Object? billingStatus = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? servicePeriod = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? description = fhirSentinel,
    Object? guarantor = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? relatedAccount = fhirSentinel,
    Object? currency = fhirSentinel,
    Object? balance = fhirSentinel,
    Object? calculatedAt = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Account(
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
            : (status as AccountStatus?) ?? _value.status,
        billingStatus: identical(billingStatus, fhirSentinel)
            ? _value.billingStatus
            : billingStatus as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        servicePeriod: identical(servicePeriod, fhirSentinel)
            ? _value.servicePeriod
            : servicePeriod as Period?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : coverage as List<AccountCoverage>?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        guarantor: identical(guarantor, fhirSentinel)
            ? _value.guarantor
            : guarantor as List<AccountGuarantor>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<AccountDiagnosis>?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<AccountProcedure>?,
        relatedAccount: identical(relatedAccount, fhirSentinel)
            ? _value.relatedAccount
            : relatedAccount as List<AccountRelatedAccount>?,
        currency: identical(currency, fhirSentinel)
            ? _value.currency
            : currency as CodeableConcept?,
        balance: identical(balance, fhirSentinel)
            ? _value.balance
            : balance as List<AccountBalance>?,
        calculatedAt: identical(calculatedAt, fhirSentinel)
            ? _value.calculatedAt
            : calculatedAt as FhirInstant?,
      ),
    );
  }
}

extension AccountCopyWithExtension on Account {
  $AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(
        this,
        (value) => value,
      );
}

abstract class $AccountCoverageCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    bool? disallowExtensions,
  });
}

class _$AccountCoverageCopyWithImpl<T> implements $AccountCoverageCopyWith<T> {
  final AccountCoverage _value;
  final T Function(AccountCoverage) _then;

  _$AccountCoverageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountCoverage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountCoverageCopyWithExtension on AccountCoverage {
  $AccountCoverageCopyWith<AccountCoverage> get copyWith =>
      _$AccountCoverageCopyWithImpl<AccountCoverage>(
        this,
        (value) => value,
      );
}

abstract class $AccountGuarantorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$AccountGuarantorCopyWithImpl<T>
    implements $AccountGuarantorCopyWith<T> {
  final AccountGuarantor _value;
  final T Function(AccountGuarantor) _then;

  _$AccountGuarantorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? party = fhirSentinel,
    Object? onHold = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountGuarantor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        party: identical(party, fhirSentinel)
            ? _value.party
            : (party as Reference?) ?? _value.party,
        onHold: identical(onHold, fhirSentinel)
            ? _value.onHold
            : onHold as FhirBoolean?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountGuarantorCopyWithExtension on AccountGuarantor {
  $AccountGuarantorCopyWith<AccountGuarantor> get copyWith =>
      _$AccountGuarantorCopyWithImpl<AccountGuarantor>(
        this,
        (value) => value,
      );
}

abstract class $AccountDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableReference? condition,
    FhirDateTime? dateOfDiagnosis,
    List<CodeableConcept>? type,
    FhirBoolean? onAdmission,
    List<CodeableConcept>? packageCode,
    bool? disallowExtensions,
  });
}

class _$AccountDiagnosisCopyWithImpl<T>
    implements $AccountDiagnosisCopyWith<T> {
  final AccountDiagnosis _value;
  final T Function(AccountDiagnosis) _then;

  _$AccountDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? dateOfDiagnosis = fhirSentinel,
    Object? type = fhirSentinel,
    Object? onAdmission = fhirSentinel,
    Object? packageCode = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountDiagnosis(
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
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : (condition as CodeableReference?) ?? _value.condition,
        dateOfDiagnosis: identical(dateOfDiagnosis, fhirSentinel)
            ? _value.dateOfDiagnosis
            : dateOfDiagnosis as FhirDateTime?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        onAdmission: identical(onAdmission, fhirSentinel)
            ? _value.onAdmission
            : onAdmission as FhirBoolean?,
        packageCode: identical(packageCode, fhirSentinel)
            ? _value.packageCode
            : packageCode as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountDiagnosisCopyWithExtension on AccountDiagnosis {
  $AccountDiagnosisCopyWith<AccountDiagnosis> get copyWith =>
      _$AccountDiagnosisCopyWithImpl<AccountDiagnosis>(
        this,
        (value) => value,
      );
}

abstract class $AccountProcedureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableReference? code,
    FhirDateTime? dateOfService,
    List<CodeableConcept>? type,
    List<CodeableConcept>? packageCode,
    List<Reference>? device,
    bool? disallowExtensions,
  });
}

class _$AccountProcedureCopyWithImpl<T>
    implements $AccountProcedureCopyWith<T> {
  final AccountProcedure _value;
  final T Function(AccountProcedure) _then;

  _$AccountProcedureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? code = fhirSentinel,
    Object? dateOfService = fhirSentinel,
    Object? type = fhirSentinel,
    Object? packageCode = fhirSentinel,
    Object? device = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountProcedure(
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
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableReference?) ?? _value.code,
        dateOfService: identical(dateOfService, fhirSentinel)
            ? _value.dateOfService
            : dateOfService as FhirDateTime?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        packageCode: identical(packageCode, fhirSentinel)
            ? _value.packageCode
            : packageCode as List<CodeableConcept>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountProcedureCopyWithExtension on AccountProcedure {
  $AccountProcedureCopyWith<AccountProcedure> get copyWith =>
      _$AccountProcedureCopyWithImpl<AccountProcedure>(
        this,
        (value) => value,
      );
}

abstract class $AccountRelatedAccountCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationship,
    Reference? account,
    bool? disallowExtensions,
  });
}

class _$AccountRelatedAccountCopyWithImpl<T>
    implements $AccountRelatedAccountCopyWith<T> {
  final AccountRelatedAccount _value;
  final T Function(AccountRelatedAccount) _then;

  _$AccountRelatedAccountCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? account = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountRelatedAccount(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as CodeableConcept?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : (account as Reference?) ?? _value.account,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AccountRelatedAccountCopyWithExtension on AccountRelatedAccount {
  $AccountRelatedAccountCopyWith<AccountRelatedAccount> get copyWith =>
      _$AccountRelatedAccountCopyWithImpl<AccountRelatedAccount>(
        this,
        (value) => value,
      );
}

abstract class $AccountBalanceCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? aggregate,
    CodeableConcept? term,
    FhirBoolean? estimate,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$AccountBalanceCopyWithImpl<T> implements $AccountBalanceCopyWith<T> {
  final AccountBalance _value;
  final T Function(AccountBalance) _then;

  _$AccountBalanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? aggregate = fhirSentinel,
    Object? term = fhirSentinel,
    Object? estimate = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AccountBalance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        aggregate: identical(aggregate, fhirSentinel)
            ? _value.aggregate
            : aggregate as CodeableConcept?,
        term: identical(term, fhirSentinel)
            ? _value.term
            : term as CodeableConcept?,
        estimate: identical(estimate, fhirSentinel)
            ? _value.estimate
            : estimate as FhirBoolean?,
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

extension AccountBalanceCopyWithExtension on AccountBalance {
  $AccountBalanceCopyWith<AccountBalance> get copyWith =>
      _$AccountBalanceCopyWithImpl<AccountBalance>(
        this,
        (value) => value,
      );
}
