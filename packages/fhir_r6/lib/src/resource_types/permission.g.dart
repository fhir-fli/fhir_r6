// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'permission.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PermissionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PermissionStatus? status,
    Reference? asserter,
    List<FhirDateTime>? date,
    Period? validity,
    PermissionJustification? justification,
    PermissionRuleCombining? combining,
    List<PermissionRule>? rule,
    bool? disallowExtensions,
  });
}

class _$PermissionCopyWithImpl<T> implements $PermissionCopyWith<T> {
  final Permission _value;
  final T Function(Permission) _then;

  _$PermissionCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? asserter = fhirSentinel,
    Object? date = fhirSentinel,
    Object? validity = fhirSentinel,
    Object? justification = fhirSentinel,
    Object? combining = fhirSentinel,
    Object? rule = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Permission(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PermissionStatus?) ?? _value.status,
        asserter: identical(asserter, fhirSentinel)
            ? _value.asserter
            : asserter as Reference?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : date as List<FhirDateTime>?,
        validity: identical(validity, fhirSentinel)
            ? _value.validity
            : validity as Period?,
        justification: identical(justification, fhirSentinel)
            ? _value.justification
            : justification as PermissionJustification?,
        combining: identical(combining, fhirSentinel)
            ? _value.combining
            : (combining as PermissionRuleCombining?) ?? _value.combining,
        rule: identical(rule, fhirSentinel)
            ? _value.rule
            : rule as List<PermissionRule>?,
      ),
    );
  }
}

extension PermissionCopyWithExtension on Permission {
  $PermissionCopyWith<Permission> get copyWith =>
      _$PermissionCopyWithImpl<Permission>(
        this,
        (value) => value,
      );
}

abstract class $PermissionJustificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? basis,
    List<Reference>? evidence,
    bool? disallowExtensions,
  });
}

class _$PermissionJustificationCopyWithImpl<T>
    implements $PermissionJustificationCopyWith<T> {
  final PermissionJustification _value;
  final T Function(PermissionJustification) _then;

  _$PermissionJustificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? evidence = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PermissionJustification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        basis: identical(basis, fhirSentinel)
            ? _value.basis
            : basis as List<CodeableConcept>?,
        evidence: identical(evidence, fhirSentinel)
            ? _value.evidence
            : evidence as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PermissionJustificationCopyWithExtension on PermissionJustification {
  $PermissionJustificationCopyWith<PermissionJustification> get copyWith =>
      _$PermissionJustificationCopyWithImpl<PermissionJustification>(
        this,
        (value) => value,
      );
}

abstract class $PermissionRuleCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentProvisionType? type,
    List<PermissionData>? data,
    List<PermissionActivity>? activity,
    List<CodeableConcept>? limit,
    bool? disallowExtensions,
  });
}

class _$PermissionRuleCopyWithImpl<T> implements $PermissionRuleCopyWith<T> {
  final PermissionRule _value;
  final T Function(PermissionRule) _then;

  _$PermissionRuleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? data = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? limit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PermissionRule(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as ConsentProvisionType?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as List<PermissionData>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : activity as List<PermissionActivity>?,
        limit: identical(limit, fhirSentinel)
            ? _value.limit
            : limit as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PermissionRuleCopyWithExtension on PermissionRule {
  $PermissionRuleCopyWith<PermissionRule> get copyWith =>
      _$PermissionRuleCopyWithImpl<PermissionRule>(
        this,
        (value) => value,
      );
}

abstract class $PermissionDataCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<PermissionResource>? resource,
    List<Coding>? security,
    List<Period>? period,
    FhirExpression? expression,
    bool? disallowExtensions,
  });
}

class _$PermissionDataCopyWithImpl<T> implements $PermissionDataCopyWith<T> {
  final PermissionData _value;
  final T Function(PermissionData) _then;

  _$PermissionDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? security = fhirSentinel,
    Object? period = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PermissionData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as List<PermissionResource>?,
        security: identical(security, fhirSentinel)
            ? _value.security
            : security as List<Coding>?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as List<Period>?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PermissionDataCopyWithExtension on PermissionData {
  $PermissionDataCopyWith<PermissionData> get copyWith =>
      _$PermissionDataCopyWithImpl<PermissionData>(
        this,
        (value) => value,
      );
}

abstract class $PermissionResourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
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

class _$PermissionResourceCopyWithImpl<T>
    implements $PermissionResourceCopyWith<T> {
  final PermissionResource _value;
  final T Function(PermissionResource) _then;

  _$PermissionResourceCopyWithImpl(this._value, this._then);

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
      PermissionResource(
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

extension PermissionResourceCopyWithExtension on PermissionResource {
  $PermissionResourceCopyWith<PermissionResource> get copyWith =>
      _$PermissionResourceCopyWithImpl<PermissionResource>(
        this,
        (value) => value,
      );
}

abstract class $PermissionActivityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? actor,
    List<CodeableConcept>? action,
    List<CodeableConcept>? purpose,
    bool? disallowExtensions,
  });
}

class _$PermissionActivityCopyWithImpl<T>
    implements $PermissionActivityCopyWith<T> {
  final PermissionActivity _value;
  final T Function(PermissionActivity) _then;

  _$PermissionActivityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? action = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PermissionActivity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<Reference>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PermissionActivityCopyWithExtension on PermissionActivity {
  $PermissionActivityCopyWith<PermissionActivity> get copyWith =>
      _$PermissionActivityCopyWithImpl<PermissionActivity>(
        this,
        (value) => value,
      );
}
