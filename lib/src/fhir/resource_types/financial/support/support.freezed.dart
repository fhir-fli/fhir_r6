// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return _Coverage.fromJson(json);
}

/// @nodoc
mixin _$Coverage {
  /// [resourceType] This is a Coverage resource
  @JsonKey(unknownEnumValue: R6ResourceType.Coverage)
  R6ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] The identifier of the coverage as issued by the insurer.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [kind] The nature of the coverage be it insurance, or cash payment such
  ///  as self-pay.
  FhirCode? get kind => throw _privateConstructorUsedError;

  /// [kindElement] ("_kind") Extensions for kind
  @JsonKey(name: '_kind')
  Element? get kindElement => throw _privateConstructorUsedError;

  /// [paymentBy] Link to the paying party and optionally what specifically
  ///  they will be responsible to pay.
  List<CoveragePaymentBy>? get paymentBy => throw _privateConstructorUsedError;

  /// [type] The type of coverage: social program, medical plan, accident
  ///  coverage (workers compensation, auto), group health or payment by an
  ///  individual or organization.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [policyHolder] The party who 'owns' the insurance policy.
  Reference? get policyHolder => throw _privateConstructorUsedError;

  /// [subscriber] The party who has signed-up for or 'owns' the contractual
  ///  relationship to the policy or to whom the benefit of the policy for
  ///  services rendered to them or their family is due.
  Reference? get subscriber => throw _privateConstructorUsedError;

  /// [subscriberId] The insurer assigned ID for the Subscriber.
  List<Identifier>? get subscriberId => throw _privateConstructorUsedError;

  /// [beneficiary] The party who benefits from the insurance coverage; the
  ///  patient when products and/or services are provided.
  Reference get beneficiary => throw _privateConstructorUsedError;

  /// [dependent] A designator for a dependent under the coverage.
  String? get dependent => throw _privateConstructorUsedError;

  /// [dependentElement] ("_dependent") Extensions for dependent
  @JsonKey(name: '_dependent')
  Element? get dependentElement => throw _privateConstructorUsedError;

  /// [relationship] The relationship of beneficiary (patient) to the
  ///  subscriber.
  CodeableConcept? get relationship => throw _privateConstructorUsedError;

  /// [period] Time period during which the coverage is in force. A missing
  ///  start date indicates the start date isn't known, a missing end date
  ///  means the coverage is continuing to be in force.
  Period? get period => throw _privateConstructorUsedError;

  /// [insurer] The program or plan underwriter, payor, insurance company.
  Reference? get insurer => throw _privateConstructorUsedError;

  /// [class_] ("class") A suite of underwriter specific classifiers.
  @JsonKey(name: 'class')
  List<CoverageClass>? get class_ => throw _privateConstructorUsedError;

  /// [order] The order of applicability of this coverage relative to other
  ///  coverages which are currently in force. Note, there may be gaps in the
  ///  numbering and this does not imply primary, secondary etc. as the
  ///  specific positioning of coverages depends upon the episode of care.
  ///  For example; a patient might have (0) auto insurance (1) their own
  ///  health insurance and (2) spouse's health insurance. When claiming for
  ///  treatments which were not the result of an auto accident then only
  ///  coverages (1) and (2) above would be applicatble and would apply in
  ///  the order specified in parenthesis.
  FhirPositiveInt? get order => throw _privateConstructorUsedError;

  /// [orderElement] ("_order") Extensions for order
  @JsonKey(name: '_order')
  Element? get orderElement => throw _privateConstructorUsedError;

  /// [network] The insurer-specific identifier for the insurer-defined
  ///  network of providers to which the beneficiary may seek treatment which
  ///  will be covered at the 'in-network' rate, otherwise 'out of network'
  ///  terms and conditions apply.
  String? get network => throw _privateConstructorUsedError;

  /// [networkElement] ("_network") Extensions for network
  @JsonKey(name: '_network')
  Element? get networkElement => throw _privateConstructorUsedError;

  /// [costToBeneficiary] A suite of codes indicating the cost category and
  ///  associated amount which have been detailed in the policy and may have
  ///  been  included on the health card.
  List<CoverageCostToBeneficiary>? get costToBeneficiary =>
      throw _privateConstructorUsedError;

  /// [subrogation] When 'subrogation=true' this insurance instance has been
  ///  included not for adjudication but to provide insurers with the details
  ///  to recover costs.
  FhirBoolean? get subrogation => throw _privateConstructorUsedError;

  /// [subrogationElement] ("_subrogation") Extensions for subrogation
  @JsonKey(name: '_subrogation')
  Element? get subrogationElement => throw _privateConstructorUsedError;

  /// [contract] The policy(s) which constitute this insurance coverage.
  List<Reference>? get contract => throw _privateConstructorUsedError;

  /// [insurancePlan] The insurance plan details, benefits and costs, which
  ///  constitute this insurance coverage.
  Reference? get insurancePlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageCopyWith<Coverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageCopyWith<$Res> {
  factory $CoverageCopyWith(Coverage value, $Res Function(Coverage) then) =
      _$CoverageCopyWithImpl<$Res, Coverage>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Coverage)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      FhirCode? kind,
      @JsonKey(name: '_kind') Element? kindElement,
      List<CoveragePaymentBy>? paymentBy,
      CodeableConcept? type,
      Reference? policyHolder,
      Reference? subscriber,
      List<Identifier>? subscriberId,
      Reference beneficiary,
      String? dependent,
      @JsonKey(name: '_dependent') Element? dependentElement,
      CodeableConcept? relationship,
      Period? period,
      Reference? insurer,
      @JsonKey(name: 'class') List<CoverageClass>? class_,
      FhirPositiveInt? order,
      @JsonKey(name: '_order') Element? orderElement,
      String? network,
      @JsonKey(name: '_network') Element? networkElement,
      List<CoverageCostToBeneficiary>? costToBeneficiary,
      FhirBoolean? subrogation,
      @JsonKey(name: '_subrogation') Element? subrogationElement,
      List<Reference>? contract,
      Reference? insurancePlan});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res>? get policyHolder;
  $ReferenceCopyWith<$Res>? get subscriber;
  $ReferenceCopyWith<$Res> get beneficiary;
  $CodeableConceptCopyWith<$Res>? get relationship;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get insurer;
  $ReferenceCopyWith<$Res>? get insurancePlan;
}

/// @nodoc
class _$CoverageCopyWithImpl<$Res, $Val extends Coverage>
    implements $CoverageCopyWith<$Res> {
  _$CoverageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? paymentBy = freezed,
    Object? type = freezed,
    Object? policyHolder = freezed,
    Object? subscriber = freezed,
    Object? subscriberId = freezed,
    Object? beneficiary = null,
    Object? dependent = freezed,
    Object? dependentElement = freezed,
    Object? relationship = freezed,
    Object? period = freezed,
    Object? insurer = freezed,
    Object? class_ = freezed,
    Object? order = freezed,
    Object? orderElement = freezed,
    Object? network = freezed,
    Object? networkElement = freezed,
    Object? costToBeneficiary = freezed,
    Object? subrogation = freezed,
    Object? subrogationElement = freezed,
    Object? contract = freezed,
    Object? insurancePlan = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      paymentBy: freezed == paymentBy
          ? _value.paymentBy
          : paymentBy // ignore: cast_nullable_to_non_nullable
              as List<CoveragePaymentBy>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      policyHolder: freezed == policyHolder
          ? _value.policyHolder
          : policyHolder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subscriber: freezed == subscriber
          ? _value.subscriber
          : subscriber // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subscriberId: freezed == subscriberId
          ? _value.subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as Reference,
      dependent: freezed == dependent
          ? _value.dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as String?,
      dependentElement: freezed == dependentElement
          ? _value.dependentElement
          : dependentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      insurer: freezed == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      class_: freezed == class_
          ? _value.class_
          : class_ // ignore: cast_nullable_to_non_nullable
              as List<CoverageClass>?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      orderElement: freezed == orderElement
          ? _value.orderElement
          : orderElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      networkElement: freezed == networkElement
          ? _value.networkElement
          : networkElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      costToBeneficiary: freezed == costToBeneficiary
          ? _value.costToBeneficiary
          : costToBeneficiary // ignore: cast_nullable_to_non_nullable
              as List<CoverageCostToBeneficiary>?,
      subrogation: freezed == subrogation
          ? _value.subrogation
          : subrogation // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      subrogationElement: freezed == subrogationElement
          ? _value.subrogationElement
          : subrogationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurancePlan: freezed == insurancePlan
          ? _value.insurancePlan
          : insurancePlan // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get policyHolder {
    if (_value.policyHolder == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.policyHolder!, (value) {
      return _then(_value.copyWith(policyHolder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get subscriber {
    if (_value.subscriber == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subscriber!, (value) {
      return _then(_value.copyWith(subscriber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get beneficiary {
    return $ReferenceCopyWith<$Res>(_value.beneficiary, (value) {
      return _then(_value.copyWith(beneficiary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get relationship {
    if (_value.relationship == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.relationship!, (value) {
      return _then(_value.copyWith(relationship: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get insurer {
    if (_value.insurer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.insurer!, (value) {
      return _then(_value.copyWith(insurer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get insurancePlan {
    if (_value.insurancePlan == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.insurancePlan!, (value) {
      return _then(_value.copyWith(insurancePlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageImplCopyWith<$Res>
    implements $CoverageCopyWith<$Res> {
  factory _$$CoverageImplCopyWith(
          _$CoverageImpl value, $Res Function(_$CoverageImpl) then) =
      __$$CoverageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Coverage)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      FhirCode? kind,
      @JsonKey(name: '_kind') Element? kindElement,
      List<CoveragePaymentBy>? paymentBy,
      CodeableConcept? type,
      Reference? policyHolder,
      Reference? subscriber,
      List<Identifier>? subscriberId,
      Reference beneficiary,
      String? dependent,
      @JsonKey(name: '_dependent') Element? dependentElement,
      CodeableConcept? relationship,
      Period? period,
      Reference? insurer,
      @JsonKey(name: 'class') List<CoverageClass>? class_,
      FhirPositiveInt? order,
      @JsonKey(name: '_order') Element? orderElement,
      String? network,
      @JsonKey(name: '_network') Element? networkElement,
      List<CoverageCostToBeneficiary>? costToBeneficiary,
      FhirBoolean? subrogation,
      @JsonKey(name: '_subrogation') Element? subrogationElement,
      List<Reference>? contract,
      Reference? insurancePlan});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res>? get policyHolder;
  @override
  $ReferenceCopyWith<$Res>? get subscriber;
  @override
  $ReferenceCopyWith<$Res> get beneficiary;
  @override
  $CodeableConceptCopyWith<$Res>? get relationship;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get insurer;
  @override
  $ReferenceCopyWith<$Res>? get insurancePlan;
}

/// @nodoc
class __$$CoverageImplCopyWithImpl<$Res>
    extends _$CoverageCopyWithImpl<$Res, _$CoverageImpl>
    implements _$$CoverageImplCopyWith<$Res> {
  __$$CoverageImplCopyWithImpl(
      _$CoverageImpl _value, $Res Function(_$CoverageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? kind = freezed,
    Object? kindElement = freezed,
    Object? paymentBy = freezed,
    Object? type = freezed,
    Object? policyHolder = freezed,
    Object? subscriber = freezed,
    Object? subscriberId = freezed,
    Object? beneficiary = null,
    Object? dependent = freezed,
    Object? dependentElement = freezed,
    Object? relationship = freezed,
    Object? period = freezed,
    Object? insurer = freezed,
    Object? class_ = freezed,
    Object? order = freezed,
    Object? orderElement = freezed,
    Object? network = freezed,
    Object? networkElement = freezed,
    Object? costToBeneficiary = freezed,
    Object? subrogation = freezed,
    Object? subrogationElement = freezed,
    Object? contract = freezed,
    Object? insurancePlan = freezed,
  }) {
    return _then(_$CoverageImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      kindElement: freezed == kindElement
          ? _value.kindElement
          : kindElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      paymentBy: freezed == paymentBy
          ? _value._paymentBy
          : paymentBy // ignore: cast_nullable_to_non_nullable
              as List<CoveragePaymentBy>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      policyHolder: freezed == policyHolder
          ? _value.policyHolder
          : policyHolder // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subscriber: freezed == subscriber
          ? _value.subscriber
          : subscriber // ignore: cast_nullable_to_non_nullable
              as Reference?,
      subscriberId: freezed == subscriberId
          ? _value._subscriberId
          : subscriberId // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as Reference,
      dependent: freezed == dependent
          ? _value.dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as String?,
      dependentElement: freezed == dependentElement
          ? _value.dependentElement
          : dependentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      insurer: freezed == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      class_: freezed == class_
          ? _value._class_
          : class_ // ignore: cast_nullable_to_non_nullable
              as List<CoverageClass>?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      orderElement: freezed == orderElement
          ? _value.orderElement
          : orderElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      networkElement: freezed == networkElement
          ? _value.networkElement
          : networkElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      costToBeneficiary: freezed == costToBeneficiary
          ? _value._costToBeneficiary
          : costToBeneficiary // ignore: cast_nullable_to_non_nullable
              as List<CoverageCostToBeneficiary>?,
      subrogation: freezed == subrogation
          ? _value.subrogation
          : subrogation // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      subrogationElement: freezed == subrogationElement
          ? _value.subrogationElement
          : subrogationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      contract: freezed == contract
          ? _value._contract
          : contract // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      insurancePlan: freezed == insurancePlan
          ? _value.insurancePlan
          : insurancePlan // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageImpl extends _Coverage {
  const _$CoverageImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.Coverage)
      this.resourceType = R6ResourceType.Coverage,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.kind,
      @JsonKey(name: '_kind') this.kindElement,
      final List<CoveragePaymentBy>? paymentBy,
      this.type,
      this.policyHolder,
      this.subscriber,
      final List<Identifier>? subscriberId,
      required this.beneficiary,
      this.dependent,
      @JsonKey(name: '_dependent') this.dependentElement,
      this.relationship,
      this.period,
      this.insurer,
      @JsonKey(name: 'class') final List<CoverageClass>? class_,
      this.order,
      @JsonKey(name: '_order') this.orderElement,
      this.network,
      @JsonKey(name: '_network') this.networkElement,
      final List<CoverageCostToBeneficiary>? costToBeneficiary,
      this.subrogation,
      @JsonKey(name: '_subrogation') this.subrogationElement,
      final List<Reference>? contract,
      this.insurancePlan})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _paymentBy = paymentBy,
        _subscriberId = subscriberId,
        _class_ = class_,
        _costToBeneficiary = costToBeneficiary,
        _contract = contract,
        super._();

  factory _$CoverageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverageImplFromJson(json);

  /// [resourceType] This is a Coverage resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.Coverage)
  final R6ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  @override
  final FhirId? id;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] ("_language") Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] The identifier of the coverage as issued by the insurer.
  final List<Identifier>? _identifier;

  /// [identifier] The identifier of the coverage as issued by the insurer.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [kind] The nature of the coverage be it insurance, or cash payment such
  ///  as self-pay.
  @override
  final FhirCode? kind;

  /// [kindElement] ("_kind") Extensions for kind
  @override
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [paymentBy] Link to the paying party and optionally what specifically
  ///  they will be responsible to pay.
  final List<CoveragePaymentBy>? _paymentBy;

  /// [paymentBy] Link to the paying party and optionally what specifically
  ///  they will be responsible to pay.
  @override
  List<CoveragePaymentBy>? get paymentBy {
    final value = _paymentBy;
    if (value == null) return null;
    if (_paymentBy is EqualUnmodifiableListView) return _paymentBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of coverage: social program, medical plan, accident
  ///  coverage (workers compensation, auto), group health or payment by an
  ///  individual or organization.
  @override
  final CodeableConcept? type;

  /// [policyHolder] The party who 'owns' the insurance policy.
  @override
  final Reference? policyHolder;

  /// [subscriber] The party who has signed-up for or 'owns' the contractual
  ///  relationship to the policy or to whom the benefit of the policy for
  ///  services rendered to them or their family is due.
  @override
  final Reference? subscriber;

  /// [subscriberId] The insurer assigned ID for the Subscriber.
  final List<Identifier>? _subscriberId;

  /// [subscriberId] The insurer assigned ID for the Subscriber.
  @override
  List<Identifier>? get subscriberId {
    final value = _subscriberId;
    if (value == null) return null;
    if (_subscriberId is EqualUnmodifiableListView) return _subscriberId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [beneficiary] The party who benefits from the insurance coverage; the
  ///  patient when products and/or services are provided.
  @override
  final Reference beneficiary;

  /// [dependent] A designator for a dependent under the coverage.
  @override
  final String? dependent;

  /// [dependentElement] ("_dependent") Extensions for dependent
  @override
  @JsonKey(name: '_dependent')
  final Element? dependentElement;

  /// [relationship] The relationship of beneficiary (patient) to the
  ///  subscriber.
  @override
  final CodeableConcept? relationship;

  /// [period] Time period during which the coverage is in force. A missing
  ///  start date indicates the start date isn't known, a missing end date
  ///  means the coverage is continuing to be in force.
  @override
  final Period? period;

  /// [insurer] The program or plan underwriter, payor, insurance company.
  @override
  final Reference? insurer;

  /// [class_] ("class") A suite of underwriter specific classifiers.
  final List<CoverageClass>? _class_;

  /// [class_] ("class") A suite of underwriter specific classifiers.
  @override
  @JsonKey(name: 'class')
  List<CoverageClass>? get class_ {
    final value = _class_;
    if (value == null) return null;
    if (_class_ is EqualUnmodifiableListView) return _class_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [order] The order of applicability of this coverage relative to other
  ///  coverages which are currently in force. Note, there may be gaps in the
  ///  numbering and this does not imply primary, secondary etc. as the
  ///  specific positioning of coverages depends upon the episode of care.
  ///  For example; a patient might have (0) auto insurance (1) their own
  ///  health insurance and (2) spouse's health insurance. When claiming for
  ///  treatments which were not the result of an auto accident then only
  ///  coverages (1) and (2) above would be applicatble and would apply in
  ///  the order specified in parenthesis.
  @override
  final FhirPositiveInt? order;

  /// [orderElement] ("_order") Extensions for order
  @override
  @JsonKey(name: '_order')
  final Element? orderElement;

  /// [network] The insurer-specific identifier for the insurer-defined
  ///  network of providers to which the beneficiary may seek treatment which
  ///  will be covered at the 'in-network' rate, otherwise 'out of network'
  ///  terms and conditions apply.
  @override
  final String? network;

  /// [networkElement] ("_network") Extensions for network
  @override
  @JsonKey(name: '_network')
  final Element? networkElement;

  /// [costToBeneficiary] A suite of codes indicating the cost category and
  ///  associated amount which have been detailed in the policy and may have
  ///  been  included on the health card.
  final List<CoverageCostToBeneficiary>? _costToBeneficiary;

  /// [costToBeneficiary] A suite of codes indicating the cost category and
  ///  associated amount which have been detailed in the policy and may have
  ///  been  included on the health card.
  @override
  List<CoverageCostToBeneficiary>? get costToBeneficiary {
    final value = _costToBeneficiary;
    if (value == null) return null;
    if (_costToBeneficiary is EqualUnmodifiableListView)
      return _costToBeneficiary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [subrogation] When 'subrogation=true' this insurance instance has been
  ///  included not for adjudication but to provide insurers with the details
  ///  to recover costs.
  @override
  final FhirBoolean? subrogation;

  /// [subrogationElement] ("_subrogation") Extensions for subrogation
  @override
  @JsonKey(name: '_subrogation')
  final Element? subrogationElement;

  /// [contract] The policy(s) which constitute this insurance coverage.
  final List<Reference>? _contract;

  /// [contract] The policy(s) which constitute this insurance coverage.
  @override
  List<Reference>? get contract {
    final value = _contract;
    if (value == null) return null;
    if (_contract is EqualUnmodifiableListView) return _contract;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [insurancePlan] The insurance plan details, benefits and costs, which
  ///  constitute this insurance coverage.
  @override
  final Reference? insurancePlan;

  @override
  String toString() {
    return 'Coverage(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, kind: $kind, kindElement: $kindElement, paymentBy: $paymentBy, type: $type, policyHolder: $policyHolder, subscriber: $subscriber, subscriberId: $subscriberId, beneficiary: $beneficiary, dependent: $dependent, dependentElement: $dependentElement, relationship: $relationship, period: $period, insurer: $insurer, class_: $class_, order: $order, orderElement: $orderElement, network: $network, networkElement: $networkElement, costToBeneficiary: $costToBeneficiary, subrogation: $subrogation, subrogationElement: $subrogationElement, contract: $contract, insurancePlan: $insurancePlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.kindElement, kindElement) ||
                other.kindElement == kindElement) &&
            const DeepCollectionEquality()
                .equals(other._paymentBy, _paymentBy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.policyHolder, policyHolder) ||
                other.policyHolder == policyHolder) &&
            (identical(other.subscriber, subscriber) ||
                other.subscriber == subscriber) &&
            const DeepCollectionEquality()
                .equals(other._subscriberId, _subscriberId) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            (identical(other.dependent, dependent) ||
                other.dependent == dependent) &&
            (identical(other.dependentElement, dependentElement) ||
                other.dependentElement == dependentElement) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.insurer, insurer) || other.insurer == insurer) &&
            const DeepCollectionEquality().equals(other._class_, _class_) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.orderElement, orderElement) ||
                other.orderElement == orderElement) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.networkElement, networkElement) ||
                other.networkElement == networkElement) &&
            const DeepCollectionEquality()
                .equals(other._costToBeneficiary, _costToBeneficiary) &&
            (identical(other.subrogation, subrogation) ||
                other.subrogation == subrogation) &&
            (identical(other.subrogationElement, subrogationElement) ||
                other.subrogationElement == subrogationElement) &&
            const DeepCollectionEquality().equals(other._contract, _contract) &&
            (identical(other.insurancePlan, insurancePlan) ||
                other.insurancePlan == insurancePlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        kind,
        kindElement,
        const DeepCollectionEquality().hash(_paymentBy),
        type,
        policyHolder,
        subscriber,
        const DeepCollectionEquality().hash(_subscriberId),
        beneficiary,
        dependent,
        dependentElement,
        relationship,
        period,
        insurer,
        const DeepCollectionEquality().hash(_class_),
        order,
        orderElement,
        network,
        networkElement,
        const DeepCollectionEquality().hash(_costToBeneficiary),
        subrogation,
        subrogationElement,
        const DeepCollectionEquality().hash(_contract),
        insurancePlan
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageImplCopyWith<_$CoverageImpl> get copyWith =>
      __$$CoverageImplCopyWithImpl<_$CoverageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageImplToJson(
      this,
    );
  }
}

abstract class _Coverage extends Coverage {
  const factory _Coverage(
      {@JsonKey(unknownEnumValue: R6ResourceType.Coverage)
      final R6ResourceType resourceType,
      final FhirId? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') final Element? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final Element? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirCode? status,
      @JsonKey(name: '_status') final Element? statusElement,
      final FhirCode? kind,
      @JsonKey(name: '_kind') final Element? kindElement,
      final List<CoveragePaymentBy>? paymentBy,
      final CodeableConcept? type,
      final Reference? policyHolder,
      final Reference? subscriber,
      final List<Identifier>? subscriberId,
      required final Reference beneficiary,
      final String? dependent,
      @JsonKey(name: '_dependent') final Element? dependentElement,
      final CodeableConcept? relationship,
      final Period? period,
      final Reference? insurer,
      @JsonKey(name: 'class') final List<CoverageClass>? class_,
      final FhirPositiveInt? order,
      @JsonKey(name: '_order') final Element? orderElement,
      final String? network,
      @JsonKey(name: '_network') final Element? networkElement,
      final List<CoverageCostToBeneficiary>? costToBeneficiary,
      final FhirBoolean? subrogation,
      @JsonKey(name: '_subrogation') final Element? subrogationElement,
      final List<Reference>? contract,
      final Reference? insurancePlan}) = _$CoverageImpl;
  const _Coverage._() : super._();

  factory _Coverage.fromJson(Map<String, dynamic> json) =
      _$CoverageImpl.fromJson;

  @override

  /// [resourceType] This is a Coverage resource
  @JsonKey(unknownEnumValue: R6ResourceType.Coverage)
  R6ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] The identifier of the coverage as issued by the insurer.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [kind] The nature of the coverage be it insurance, or cash payment such
  ///  as self-pay.
  FhirCode? get kind;
  @override

  /// [kindElement] ("_kind") Extensions for kind
  @JsonKey(name: '_kind')
  Element? get kindElement;
  @override

  /// [paymentBy] Link to the paying party and optionally what specifically
  ///  they will be responsible to pay.
  List<CoveragePaymentBy>? get paymentBy;
  @override

  /// [type] The type of coverage: social program, medical plan, accident
  ///  coverage (workers compensation, auto), group health or payment by an
  ///  individual or organization.
  CodeableConcept? get type;
  @override

  /// [policyHolder] The party who 'owns' the insurance policy.
  Reference? get policyHolder;
  @override

  /// [subscriber] The party who has signed-up for or 'owns' the contractual
  ///  relationship to the policy or to whom the benefit of the policy for
  ///  services rendered to them or their family is due.
  Reference? get subscriber;
  @override

  /// [subscriberId] The insurer assigned ID for the Subscriber.
  List<Identifier>? get subscriberId;
  @override

  /// [beneficiary] The party who benefits from the insurance coverage; the
  ///  patient when products and/or services are provided.
  Reference get beneficiary;
  @override

  /// [dependent] A designator for a dependent under the coverage.
  String? get dependent;
  @override

  /// [dependentElement] ("_dependent") Extensions for dependent
  @JsonKey(name: '_dependent')
  Element? get dependentElement;
  @override

  /// [relationship] The relationship of beneficiary (patient) to the
  ///  subscriber.
  CodeableConcept? get relationship;
  @override

  /// [period] Time period during which the coverage is in force. A missing
  ///  start date indicates the start date isn't known, a missing end date
  ///  means the coverage is continuing to be in force.
  Period? get period;
  @override

  /// [insurer] The program or plan underwriter, payor, insurance company.
  Reference? get insurer;
  @override

  /// [class_] ("class") A suite of underwriter specific classifiers.
  @JsonKey(name: 'class')
  List<CoverageClass>? get class_;
  @override

  /// [order] The order of applicability of this coverage relative to other
  ///  coverages which are currently in force. Note, there may be gaps in the
  ///  numbering and this does not imply primary, secondary etc. as the
  ///  specific positioning of coverages depends upon the episode of care.
  ///  For example; a patient might have (0) auto insurance (1) their own
  ///  health insurance and (2) spouse's health insurance. When claiming for
  ///  treatments which were not the result of an auto accident then only
  ///  coverages (1) and (2) above would be applicatble and would apply in
  ///  the order specified in parenthesis.
  FhirPositiveInt? get order;
  @override

  /// [orderElement] ("_order") Extensions for order
  @JsonKey(name: '_order')
  Element? get orderElement;
  @override

  /// [network] The insurer-specific identifier for the insurer-defined
  ///  network of providers to which the beneficiary may seek treatment which
  ///  will be covered at the 'in-network' rate, otherwise 'out of network'
  ///  terms and conditions apply.
  String? get network;
  @override

  /// [networkElement] ("_network") Extensions for network
  @JsonKey(name: '_network')
  Element? get networkElement;
  @override

  /// [costToBeneficiary] A suite of codes indicating the cost category and
  ///  associated amount which have been detailed in the policy and may have
  ///  been  included on the health card.
  List<CoverageCostToBeneficiary>? get costToBeneficiary;
  @override

  /// [subrogation] When 'subrogation=true' this insurance instance has been
  ///  included not for adjudication but to provide insurers with the details
  ///  to recover costs.
  FhirBoolean? get subrogation;
  @override

  /// [subrogationElement] ("_subrogation") Extensions for subrogation
  @JsonKey(name: '_subrogation')
  Element? get subrogationElement;
  @override

  /// [contract] The policy(s) which constitute this insurance coverage.
  List<Reference>? get contract;
  @override

  /// [insurancePlan] The insurance plan details, benefits and costs, which
  ///  constitute this insurance coverage.
  Reference? get insurancePlan;
  @override
  @JsonKey(ignore: true)
  _$$CoverageImplCopyWith<_$CoverageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoveragePaymentBy _$CoveragePaymentByFromJson(Map<String, dynamic> json) {
  return _CoveragePaymentBy.fromJson(json);
}

/// @nodoc
mixin _$CoveragePaymentBy {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [party] The list of parties providing non-insurance payment for the
  ///  treatment costs.
  Reference get party => throw _privateConstructorUsedError;

  /// [responsibility]  Description of the financial responsibility.
  String? get responsibility => throw _privateConstructorUsedError;

  /// [responsibilityElement] ("_responsibility") Extensions for
  ///  responsibility
  @JsonKey(name: '_responsibility')
  Element? get responsibilityElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoveragePaymentByCopyWith<CoveragePaymentBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoveragePaymentByCopyWith<$Res> {
  factory $CoveragePaymentByCopyWith(
          CoveragePaymentBy value, $Res Function(CoveragePaymentBy) then) =
      _$CoveragePaymentByCopyWithImpl<$Res, CoveragePaymentBy>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference party,
      String? responsibility,
      @JsonKey(name: '_responsibility') Element? responsibilityElement});

  $ReferenceCopyWith<$Res> get party;
}

/// @nodoc
class _$CoveragePaymentByCopyWithImpl<$Res, $Val extends CoveragePaymentBy>
    implements $CoveragePaymentByCopyWith<$Res> {
  _$CoveragePaymentByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? party = null,
    Object? responsibility = freezed,
    Object? responsibilityElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as Reference,
      responsibility: freezed == responsibility
          ? _value.responsibility
          : responsibility // ignore: cast_nullable_to_non_nullable
              as String?,
      responsibilityElement: freezed == responsibilityElement
          ? _value.responsibilityElement
          : responsibilityElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get party {
    return $ReferenceCopyWith<$Res>(_value.party, (value) {
      return _then(_value.copyWith(party: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoveragePaymentByImplCopyWith<$Res>
    implements $CoveragePaymentByCopyWith<$Res> {
  factory _$$CoveragePaymentByImplCopyWith(_$CoveragePaymentByImpl value,
          $Res Function(_$CoveragePaymentByImpl) then) =
      __$$CoveragePaymentByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference party,
      String? responsibility,
      @JsonKey(name: '_responsibility') Element? responsibilityElement});

  @override
  $ReferenceCopyWith<$Res> get party;
}

/// @nodoc
class __$$CoveragePaymentByImplCopyWithImpl<$Res>
    extends _$CoveragePaymentByCopyWithImpl<$Res, _$CoveragePaymentByImpl>
    implements _$$CoveragePaymentByImplCopyWith<$Res> {
  __$$CoveragePaymentByImplCopyWithImpl(_$CoveragePaymentByImpl _value,
      $Res Function(_$CoveragePaymentByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? party = null,
    Object? responsibility = freezed,
    Object? responsibilityElement = freezed,
  }) {
    return _then(_$CoveragePaymentByImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      party: null == party
          ? _value.party
          : party // ignore: cast_nullable_to_non_nullable
              as Reference,
      responsibility: freezed == responsibility
          ? _value.responsibility
          : responsibility // ignore: cast_nullable_to_non_nullable
              as String?,
      responsibilityElement: freezed == responsibilityElement
          ? _value.responsibilityElement
          : responsibilityElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoveragePaymentByImpl extends _CoveragePaymentBy {
  const _$CoveragePaymentByImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.party,
      this.responsibility,
      @JsonKey(name: '_responsibility') this.responsibilityElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoveragePaymentByImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoveragePaymentByImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [party] The list of parties providing non-insurance payment for the
  ///  treatment costs.
  @override
  final Reference party;

  /// [responsibility]  Description of the financial responsibility.
  @override
  final String? responsibility;

  /// [responsibilityElement] ("_responsibility") Extensions for
  ///  responsibility
  @override
  @JsonKey(name: '_responsibility')
  final Element? responsibilityElement;

  @override
  String toString() {
    return 'CoveragePaymentBy(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, party: $party, responsibility: $responsibility, responsibilityElement: $responsibilityElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoveragePaymentByImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.party, party) || other.party == party) &&
            (identical(other.responsibility, responsibility) ||
                other.responsibility == responsibility) &&
            (identical(other.responsibilityElement, responsibilityElement) ||
                other.responsibilityElement == responsibilityElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      party,
      responsibility,
      responsibilityElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoveragePaymentByImplCopyWith<_$CoveragePaymentByImpl> get copyWith =>
      __$$CoveragePaymentByImplCopyWithImpl<_$CoveragePaymentByImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoveragePaymentByImplToJson(
      this,
    );
  }
}

abstract class _CoveragePaymentBy extends CoveragePaymentBy {
  const factory _CoveragePaymentBy(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Reference party,
      final String? responsibility,
      @JsonKey(name: '_responsibility')
      final Element? responsibilityElement}) = _$CoveragePaymentByImpl;
  const _CoveragePaymentBy._() : super._();

  factory _CoveragePaymentBy.fromJson(Map<String, dynamic> json) =
      _$CoveragePaymentByImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [party] The list of parties providing non-insurance payment for the
  ///  treatment costs.
  Reference get party;
  @override

  /// [responsibility]  Description of the financial responsibility.
  String? get responsibility;
  @override

  /// [responsibilityElement] ("_responsibility") Extensions for
  ///  responsibility
  @JsonKey(name: '_responsibility')
  Element? get responsibilityElement;
  @override
  @JsonKey(ignore: true)
  _$$CoveragePaymentByImplCopyWith<_$CoveragePaymentByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverageClass _$CoverageClassFromJson(Map<String, dynamic> json) {
  return _CoverageClass.fromJson(json);
}

/// @nodoc
mixin _$CoverageClass {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The type of classification for which an insurer-specific class
  ///  label or number and optional name is provided.  For example, type may
  ///  be used to identify a class of coverage or employer group, policy, or
  ///  plan.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [value] The alphanumeric identifier associated with the insurer issued
  ///  label.
  Identifier get value => throw _privateConstructorUsedError;

  /// [name] A short description for the class.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageClassCopyWith<CoverageClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageClassCopyWith<$Res> {
  factory $CoverageClassCopyWith(
          CoverageClass value, $Res Function(CoverageClass) then) =
      _$CoverageClassCopyWithImpl<$Res, CoverageClass>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Identifier value,
      String? name,
      @JsonKey(name: '_name') Element? nameElement});

  $CodeableConceptCopyWith<$Res> get type;
  $IdentifierCopyWith<$Res> get value;
}

/// @nodoc
class _$CoverageClassCopyWithImpl<$Res, $Val extends CoverageClass>
    implements $CoverageClassCopyWith<$Res> {
  _$CoverageClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? value = null,
    Object? name = freezed,
    Object? nameElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Identifier,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res> get value {
    return $IdentifierCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageClassImplCopyWith<$Res>
    implements $CoverageClassCopyWith<$Res> {
  factory _$$CoverageClassImplCopyWith(
          _$CoverageClassImpl value, $Res Function(_$CoverageClassImpl) then) =
      __$$CoverageClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Identifier value,
      String? name,
      @JsonKey(name: '_name') Element? nameElement});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $IdentifierCopyWith<$Res> get value;
}

/// @nodoc
class __$$CoverageClassImplCopyWithImpl<$Res>
    extends _$CoverageClassCopyWithImpl<$Res, _$CoverageClassImpl>
    implements _$$CoverageClassImplCopyWith<$Res> {
  __$$CoverageClassImplCopyWithImpl(
      _$CoverageClassImpl _value, $Res Function(_$CoverageClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? value = null,
    Object? name = freezed,
    Object? nameElement = freezed,
  }) {
    return _then(_$CoverageClassImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Identifier,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageClassImpl extends _CoverageClass {
  const _$CoverageClassImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      required this.value,
      this.name,
      @JsonKey(name: '_name') this.nameElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverageClassImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of classification for which an insurer-specific class
  ///  label or number and optional name is provided.  For example, type may
  ///  be used to identify a class of coverage or employer group, policy, or
  ///  plan.
  @override
  final CodeableConcept type;

  /// [value] The alphanumeric identifier associated with the insurer issued
  ///  label.
  @override
  final Identifier value;

  /// [name] A short description for the class.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  @override
  String toString() {
    return 'CoverageClass(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, value: $value, name: $name, nameElement: $nameElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageClassImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      value,
      name,
      nameElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageClassImplCopyWith<_$CoverageClassImpl> get copyWith =>
      __$$CoverageClassImplCopyWithImpl<_$CoverageClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageClassImplToJson(
      this,
    );
  }
}

abstract class _CoverageClass extends CoverageClass {
  const factory _CoverageClass(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          required final Identifier value,
          final String? name,
          @JsonKey(name: '_name') final Element? nameElement}) =
      _$CoverageClassImpl;
  const _CoverageClass._() : super._();

  factory _CoverageClass.fromJson(Map<String, dynamic> json) =
      _$CoverageClassImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The type of classification for which an insurer-specific class
  ///  label or number and optional name is provided.  For example, type may
  ///  be used to identify a class of coverage or employer group, policy, or
  ///  plan.
  CodeableConcept get type;
  @override

  /// [value] The alphanumeric identifier associated with the insurer issued
  ///  label.
  Identifier get value;
  @override

  /// [name] A short description for the class.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override
  @JsonKey(ignore: true)
  _$$CoverageClassImplCopyWith<_$CoverageClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverageCostToBeneficiary _$CoverageCostToBeneficiaryFromJson(
    Map<String, dynamic> json) {
  return _CoverageCostToBeneficiary.fromJson(json);
}

/// @nodoc
mixin _$CoverageCostToBeneficiary {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The category of patient centric costs associated with treatment.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category => throw _privateConstructorUsedError;

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  CodeableConcept? get network => throw _privateConstructorUsedError;

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  CodeableConcept? get unit => throw _privateConstructorUsedError;

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  CodeableConcept? get term => throw _privateConstructorUsedError;

  /// [valueQuantity] The amount due from the patient for the cost category.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueMoney] The amount due from the patient for the cost category.
  Money? get valueMoney => throw _privateConstructorUsedError;

  /// [exception] A suite of codes indicating exceptions or reductions to
  ///  patient costs and their effective periods.
  List<CoverageException>? get exception => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageCostToBeneficiaryCopyWith<CoverageCostToBeneficiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageCostToBeneficiaryCopyWith<$Res> {
  factory $CoverageCostToBeneficiaryCopyWith(CoverageCostToBeneficiary value,
          $Res Function(CoverageCostToBeneficiary) then) =
      _$CoverageCostToBeneficiaryCopyWithImpl<$Res, CoverageCostToBeneficiary>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? category,
      CodeableConcept? network,
      CodeableConcept? unit,
      CodeableConcept? term,
      Quantity? valueQuantity,
      Money? valueMoney,
      List<CoverageException>? exception});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get category;
  $CodeableConceptCopyWith<$Res>? get network;
  $CodeableConceptCopyWith<$Res>? get unit;
  $CodeableConceptCopyWith<$Res>? get term;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $MoneyCopyWith<$Res>? get valueMoney;
}

/// @nodoc
class _$CoverageCostToBeneficiaryCopyWithImpl<$Res,
        $Val extends CoverageCostToBeneficiary>
    implements $CoverageCostToBeneficiaryCopyWith<$Res> {
  _$CoverageCostToBeneficiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? category = freezed,
    Object? network = freezed,
    Object? unit = freezed,
    Object? term = freezed,
    Object? valueQuantity = freezed,
    Object? valueMoney = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as List<CoverageException>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get network {
    if (_value.network == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.network!, (value) {
      return _then(_value.copyWith(network: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get term {
    if (_value.term == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.term!, (value) {
      return _then(_value.copyWith(term: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get valueMoney {
    if (_value.valueMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.valueMoney!, (value) {
      return _then(_value.copyWith(valueMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageCostToBeneficiaryImplCopyWith<$Res>
    implements $CoverageCostToBeneficiaryCopyWith<$Res> {
  factory _$$CoverageCostToBeneficiaryImplCopyWith(
          _$CoverageCostToBeneficiaryImpl value,
          $Res Function(_$CoverageCostToBeneficiaryImpl) then) =
      __$$CoverageCostToBeneficiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? category,
      CodeableConcept? network,
      CodeableConcept? unit,
      CodeableConcept? term,
      Quantity? valueQuantity,
      Money? valueMoney,
      List<CoverageException>? exception});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get category;
  @override
  $CodeableConceptCopyWith<$Res>? get network;
  @override
  $CodeableConceptCopyWith<$Res>? get unit;
  @override
  $CodeableConceptCopyWith<$Res>? get term;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $MoneyCopyWith<$Res>? get valueMoney;
}

/// @nodoc
class __$$CoverageCostToBeneficiaryImplCopyWithImpl<$Res>
    extends _$CoverageCostToBeneficiaryCopyWithImpl<$Res,
        _$CoverageCostToBeneficiaryImpl>
    implements _$$CoverageCostToBeneficiaryImplCopyWith<$Res> {
  __$$CoverageCostToBeneficiaryImplCopyWithImpl(
      _$CoverageCostToBeneficiaryImpl _value,
      $Res Function(_$CoverageCostToBeneficiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? category = freezed,
    Object? network = freezed,
    Object? unit = freezed,
    Object? term = freezed,
    Object? valueQuantity = freezed,
    Object? valueMoney = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$CoverageCostToBeneficiaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueMoney: freezed == valueMoney
          ? _value.valueMoney
          : valueMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      exception: freezed == exception
          ? _value._exception
          : exception // ignore: cast_nullable_to_non_nullable
              as List<CoverageException>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageCostToBeneficiaryImpl extends _CoverageCostToBeneficiary {
  const _$CoverageCostToBeneficiaryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.category,
      this.network,
      this.unit,
      this.term,
      this.valueQuantity,
      this.valueMoney,
      final List<CoverageException>? exception})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _exception = exception,
        super._();

  factory _$CoverageCostToBeneficiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverageCostToBeneficiaryImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The category of patient centric costs associated with treatment.
  @override
  final CodeableConcept? type;

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  @override
  final CodeableConcept? category;

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  @override
  final CodeableConcept? network;

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  @override
  final CodeableConcept? unit;

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  @override
  final CodeableConcept? term;

  /// [valueQuantity] The amount due from the patient for the cost category.
  @override
  final Quantity? valueQuantity;

  /// [valueMoney] The amount due from the patient for the cost category.
  @override
  final Money? valueMoney;

  /// [exception] A suite of codes indicating exceptions or reductions to
  ///  patient costs and their effective periods.
  final List<CoverageException>? _exception;

  /// [exception] A suite of codes indicating exceptions or reductions to
  ///  patient costs and their effective periods.
  @override
  List<CoverageException>? get exception {
    final value = _exception;
    if (value == null) return null;
    if (_exception is EqualUnmodifiableListView) return _exception;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageCostToBeneficiary(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, category: $category, network: $network, unit: $unit, term: $term, valueQuantity: $valueQuantity, valueMoney: $valueMoney, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageCostToBeneficiaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueMoney, valueMoney) ||
                other.valueMoney == valueMoney) &&
            const DeepCollectionEquality()
                .equals(other._exception, _exception));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      category,
      network,
      unit,
      term,
      valueQuantity,
      valueMoney,
      const DeepCollectionEquality().hash(_exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageCostToBeneficiaryImplCopyWith<_$CoverageCostToBeneficiaryImpl>
      get copyWith => __$$CoverageCostToBeneficiaryImplCopyWithImpl<
          _$CoverageCostToBeneficiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageCostToBeneficiaryImplToJson(
      this,
    );
  }
}

abstract class _CoverageCostToBeneficiary extends CoverageCostToBeneficiary {
  const factory _CoverageCostToBeneficiary(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final CodeableConcept? category,
          final CodeableConcept? network,
          final CodeableConcept? unit,
          final CodeableConcept? term,
          final Quantity? valueQuantity,
          final Money? valueMoney,
          final List<CoverageException>? exception}) =
      _$CoverageCostToBeneficiaryImpl;
  const _CoverageCostToBeneficiary._() : super._();

  factory _CoverageCostToBeneficiary.fromJson(Map<String, dynamic> json) =
      _$CoverageCostToBeneficiaryImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The category of patient centric costs associated with treatment.
  CodeableConcept? get type;
  @override

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category;
  @override

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  CodeableConcept? get network;
  @override

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  CodeableConcept? get unit;
  @override

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  CodeableConcept? get term;
  @override

  /// [valueQuantity] The amount due from the patient for the cost category.
  Quantity? get valueQuantity;
  @override

  /// [valueMoney] The amount due from the patient for the cost category.
  Money? get valueMoney;
  @override

  /// [exception] A suite of codes indicating exceptions or reductions to
  ///  patient costs and their effective periods.
  List<CoverageException>? get exception;
  @override
  @JsonKey(ignore: true)
  _$$CoverageCostToBeneficiaryImplCopyWith<_$CoverageCostToBeneficiaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageException _$CoverageExceptionFromJson(Map<String, dynamic> json) {
  return _CoverageException.fromJson(json);
}

/// @nodoc
mixin _$CoverageException {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The code for the specific exception.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [period] The timeframe the exception is in force.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageExceptionCopyWith<CoverageException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageExceptionCopyWith<$Res> {
  factory $CoverageExceptionCopyWith(
          CoverageException value, $Res Function(CoverageException) then) =
      _$CoverageExceptionCopyWithImpl<$Res, CoverageException>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Period? period});

  $CodeableConceptCopyWith<$Res> get type;
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$CoverageExceptionCopyWithImpl<$Res, $Val extends CoverageException>
    implements $CoverageExceptionCopyWith<$Res> {
  _$CoverageExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageExceptionImplCopyWith<$Res>
    implements $CoverageExceptionCopyWith<$Res> {
  factory _$$CoverageExceptionImplCopyWith(_$CoverageExceptionImpl value,
          $Res Function(_$CoverageExceptionImpl) then) =
      __$$CoverageExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      Period? period});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$CoverageExceptionImplCopyWithImpl<$Res>
    extends _$CoverageExceptionCopyWithImpl<$Res, _$CoverageExceptionImpl>
    implements _$$CoverageExceptionImplCopyWith<$Res> {
  __$$CoverageExceptionImplCopyWithImpl(_$CoverageExceptionImpl _value,
      $Res Function(_$CoverageExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? period = freezed,
  }) {
    return _then(_$CoverageExceptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageExceptionImpl extends _CoverageException {
  const _$CoverageExceptionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.period})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverageExceptionImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The code for the specific exception.
  @override
  final CodeableConcept type;

  /// [period] The timeframe the exception is in force.
  @override
  final Period? period;

  @override
  String toString() {
    return 'CoverageException(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageExceptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageExceptionImplCopyWith<_$CoverageExceptionImpl> get copyWith =>
      __$$CoverageExceptionImplCopyWithImpl<_$CoverageExceptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageExceptionImplToJson(
      this,
    );
  }
}

abstract class _CoverageException extends CoverageException {
  const factory _CoverageException(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final Period? period}) = _$CoverageExceptionImpl;
  const _CoverageException._() : super._();

  factory _CoverageException.fromJson(Map<String, dynamic> json) =
      _$CoverageExceptionImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The code for the specific exception.
  CodeableConcept get type;
  @override

  /// [period] The timeframe the exception is in force.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$CoverageExceptionImplCopyWith<_$CoverageExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverageEligibilityRequest _$CoverageEligibilityRequestFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityRequest.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequest {
  /// [resourceType] This is a CoverageEligibilityRequest resource
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
  R6ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [priority] When the requestor expects the processor to complete
  ///  processing.
  CodeableConcept? get priority => throw _privateConstructorUsedError;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  List<FhirCode>? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] ("_purpose") Extensions for purpose
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement => throw _privateConstructorUsedError;

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  Reference get patient => throw _privateConstructorUsedError;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  List<CoverageEligibilityRequestEvent>? get event =>
      throw _privateConstructorUsedError;

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  FhirDate? get servicedDate => throw _privateConstructorUsedError;

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  Element? get servicedDateElement => throw _privateConstructorUsedError;

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  Period? get servicedPeriod => throw _privateConstructorUsedError;

  /// [created] The date when this resource was created.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement => throw _privateConstructorUsedError;

  /// [enterer] Person who created the request.
  Reference? get enterer => throw _privateConstructorUsedError;

  /// [provider] The provider which is responsible for the request.
  Reference? get provider => throw _privateConstructorUsedError;

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  recipient of the request.
  Reference get insurer => throw _privateConstructorUsedError;

  /// [facility] Facility where the services are intended to be provided.
  Reference? get facility => throw _privateConstructorUsedError;

  /// [supportingInfo] Additional information codes regarding exceptions,
  ///  special considerations, the condition, situation, prior or concurrent
  ///  issues.
  List<CoverageEligibilityRequestSupportingInfo>? get supportingInfo =>
      throw _privateConstructorUsedError;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  List<CoverageEligibilityRequestInsurance>? get insurance =>
      throw _privateConstructorUsedError;

  /// [item] Service categories or billable services for which benefit
  ///  details and/or an authorization prior to service delivery may be
  ///  required by the payor.
  List<CoverageEligibilityRequestItem>? get item =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestCopyWith<CoverageEligibilityRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestCopyWith<$Res> {
  factory $CoverageEligibilityRequestCopyWith(CoverageEligibilityRequest value,
          $Res Function(CoverageEligibilityRequest) then) =
      _$CoverageEligibilityRequestCopyWithImpl<$Res,
          CoverageEligibilityRequest>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      CodeableConcept? priority,
      List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') List<Element>? purposeElement,
      Reference patient,
      List<CoverageEligibilityRequestEvent>? event,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') Element? servicedDateElement,
      Period? servicedPeriod,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? enterer,
      Reference? provider,
      Reference insurer,
      Reference? facility,
      List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
      List<CoverageEligibilityRequestInsurance>? insurance,
      List<CoverageEligibilityRequestItem>? item});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get priority;
  $ReferenceCopyWith<$Res> get patient;
  $PeriodCopyWith<$Res>? get servicedPeriod;
  $ReferenceCopyWith<$Res>? get enterer;
  $ReferenceCopyWith<$Res>? get provider;
  $ReferenceCopyWith<$Res> get insurer;
  $ReferenceCopyWith<$Res>? get facility;
}

/// @nodoc
class _$CoverageEligibilityRequestCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequest>
    implements $CoverageEligibilityRequestCopyWith<$Res> {
  _$CoverageEligibilityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? priority = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? patient = null,
    Object? event = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? enterer = freezed,
    Object? provider = freezed,
    Object? insurer = null,
    Object? facility = freezed,
    Object? supportingInfo = freezed,
    Object? insurance = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestEvent>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      enterer: freezed == enterer
          ? _value.enterer
          : enterer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInfo: freezed == supportingInfo
          ? _value.supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestSupportingInfo>?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestInsurance>?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get priority {
    if (_value.priority == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.priority!, (value) {
      return _then(_value.copyWith(priority: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get servicedPeriod {
    if (_value.servicedPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.servicedPeriod!, (value) {
      return _then(_value.copyWith(servicedPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get enterer {
    if (_value.enterer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.enterer!, (value) {
      return _then(_value.copyWith(enterer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get insurer {
    return $ReferenceCopyWith<$Res>(_value.insurer, (value) {
      return _then(_value.copyWith(insurer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get facility {
    if (_value.facility == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.facility!, (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestImplCopyWith<$Res>
    implements $CoverageEligibilityRequestCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestImplCopyWith(
          _$CoverageEligibilityRequestImpl value,
          $Res Function(_$CoverageEligibilityRequestImpl) then) =
      __$$CoverageEligibilityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      CodeableConcept? priority,
      List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') List<Element>? purposeElement,
      Reference patient,
      List<CoverageEligibilityRequestEvent>? event,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') Element? servicedDateElement,
      Period? servicedPeriod,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? enterer,
      Reference? provider,
      Reference insurer,
      Reference? facility,
      List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
      List<CoverageEligibilityRequestInsurance>? insurance,
      List<CoverageEligibilityRequestItem>? item});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get priority;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $PeriodCopyWith<$Res>? get servicedPeriod;
  @override
  $ReferenceCopyWith<$Res>? get enterer;
  @override
  $ReferenceCopyWith<$Res>? get provider;
  @override
  $ReferenceCopyWith<$Res> get insurer;
  @override
  $ReferenceCopyWith<$Res>? get facility;
}

/// @nodoc
class __$$CoverageEligibilityRequestImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestCopyWithImpl<$Res,
        _$CoverageEligibilityRequestImpl>
    implements _$$CoverageEligibilityRequestImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestImplCopyWithImpl(
      _$CoverageEligibilityRequestImpl _value,
      $Res Function(_$CoverageEligibilityRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? priority = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? patient = null,
    Object? event = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? enterer = freezed,
    Object? provider = freezed,
    Object? insurer = null,
    Object? facility = freezed,
    Object? supportingInfo = freezed,
    Object? insurance = freezed,
    Object? item = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      purpose: freezed == purpose
          ? _value._purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      purposeElement: freezed == purposeElement
          ? _value._purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestEvent>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      enterer: freezed == enterer
          ? _value.enterer
          : enterer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Reference?,
      supportingInfo: freezed == supportingInfo
          ? _value._supportingInfo
          : supportingInfo // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestSupportingInfo>?,
      insurance: freezed == insurance
          ? _value._insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestInsurance>?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestImpl extends _CoverageEligibilityRequest {
  const _$CoverageEligibilityRequestImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
      this.resourceType = R6ResourceType.CoverageEligibilityRequest,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.priority,
      final List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') final List<Element>? purposeElement,
      required this.patient,
      final List<CoverageEligibilityRequestEvent>? event,
      this.servicedDate,
      @JsonKey(name: '_servicedDate') this.servicedDateElement,
      this.servicedPeriod,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      this.enterer,
      this.provider,
      required this.insurer,
      this.facility,
      final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
      final List<CoverageEligibilityRequestInsurance>? insurance,
      final List<CoverageEligibilityRequestItem>? item})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _purpose = purpose,
        _purposeElement = purposeElement,
        _event = event,
        _supportingInfo = supportingInfo,
        _insurance = insurance,
        _item = item,
        super._();

  factory _$CoverageEligibilityRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestImplFromJson(json);

  /// [resourceType] This is a CoverageEligibilityRequest resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
  final R6ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  @override
  final FhirId? id;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] ("_language") Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [priority] When the requestor expects the processor to complete
  ///  processing.
  @override
  final CodeableConcept? priority;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  final List<FhirCode>? _purpose;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  @override
  List<FhirCode>? get purpose {
    final value = _purpose;
    if (value == null) return null;
    if (_purpose is EqualUnmodifiableListView) return _purpose;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purposeElement] ("_purpose") Extensions for purpose
  final List<Element>? _purposeElement;

  /// [purposeElement] ("_purpose") Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement {
    final value = _purposeElement;
    if (value == null) return null;
    if (_purposeElement is EqualUnmodifiableListView) return _purposeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  @override
  final Reference patient;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  final List<CoverageEligibilityRequestEvent>? _event;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  @override
  List<CoverageEligibilityRequestEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  @override
  final FhirDate? servicedDate;

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @override
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  @override
  final Period? servicedPeriod;

  /// [created] The date when this resource was created.
  @override
  final FhirDateTime? created;

  /// [createdElement] ("_created") Extensions for created
  @override
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [enterer] Person who created the request.
  @override
  final Reference? enterer;

  /// [provider] The provider which is responsible for the request.
  @override
  final Reference? provider;

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  recipient of the request.
  @override
  final Reference insurer;

  /// [facility] Facility where the services are intended to be provided.
  @override
  final Reference? facility;

  /// [supportingInfo] Additional information codes regarding exceptions,
  ///  special considerations, the condition, situation, prior or concurrent
  ///  issues.
  final List<CoverageEligibilityRequestSupportingInfo>? _supportingInfo;

  /// [supportingInfo] Additional information codes regarding exceptions,
  ///  special considerations, the condition, situation, prior or concurrent
  ///  issues.
  @override
  List<CoverageEligibilityRequestSupportingInfo>? get supportingInfo {
    final value = _supportingInfo;
    if (value == null) return null;
    if (_supportingInfo is EqualUnmodifiableListView) return _supportingInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  final List<CoverageEligibilityRequestInsurance>? _insurance;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  @override
  List<CoverageEligibilityRequestInsurance>? get insurance {
    final value = _insurance;
    if (value == null) return null;
    if (_insurance is EqualUnmodifiableListView) return _insurance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [item] Service categories or billable services for which benefit
  ///  details and/or an authorization prior to service delivery may be
  ///  required by the payor.
  final List<CoverageEligibilityRequestItem>? _item;

  /// [item] Service categories or billable services for which benefit
  ///  details and/or an authorization prior to service delivery may be
  ///  required by the payor.
  @override
  List<CoverageEligibilityRequestItem>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageEligibilityRequest(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, priority: $priority, purpose: $purpose, purposeElement: $purposeElement, patient: $patient, event: $event, servicedDate: $servicedDate, servicedDateElement: $servicedDateElement, servicedPeriod: $servicedPeriod, created: $created, createdElement: $createdElement, enterer: $enterer, provider: $provider, insurer: $insurer, facility: $facility, supportingInfo: $supportingInfo, insurance: $insurance, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._purpose, _purpose) &&
            const DeepCollectionEquality()
                .equals(other._purposeElement, _purposeElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            (identical(other.servicedDate, servicedDate) ||
                other.servicedDate == servicedDate) &&
            (identical(other.servicedDateElement, servicedDateElement) ||
                other.servicedDateElement == servicedDateElement) &&
            (identical(other.servicedPeriod, servicedPeriod) ||
                other.servicedPeriod == servicedPeriod) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.enterer, enterer) || other.enterer == enterer) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.insurer, insurer) || other.insurer == insurer) &&
            (identical(other.facility, facility) ||
                other.facility == facility) &&
            const DeepCollectionEquality()
                .equals(other._supportingInfo, _supportingInfo) &&
            const DeepCollectionEquality()
                .equals(other._insurance, _insurance) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        priority,
        const DeepCollectionEquality().hash(_purpose),
        const DeepCollectionEquality().hash(_purposeElement),
        patient,
        const DeepCollectionEquality().hash(_event),
        servicedDate,
        servicedDateElement,
        servicedPeriod,
        created,
        createdElement,
        enterer,
        provider,
        insurer,
        facility,
        const DeepCollectionEquality().hash(_supportingInfo),
        const DeepCollectionEquality().hash(_insurance),
        const DeepCollectionEquality().hash(_item)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestImplCopyWith<_$CoverageEligibilityRequestImpl>
      get copyWith => __$$CoverageEligibilityRequestImplCopyWithImpl<
          _$CoverageEligibilityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequest extends CoverageEligibilityRequest {
  const factory _CoverageEligibilityRequest(
          {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
          final R6ResourceType resourceType,
          final FhirId? id,
          final FhirMeta? meta,
          final FhirUri? implicitRules,
          @JsonKey(name: '_implicitRules') final Element? implicitRulesElement,
          final FhirCode? language,
          @JsonKey(name: '_language') final Element? languageElement,
          final Narrative? text,
          final List<Resource>? contained,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<Identifier>? identifier,
          final FhirCode? status,
          @JsonKey(name: '_status') final Element? statusElement,
          final CodeableConcept? priority,
          final List<FhirCode>? purpose,
          @JsonKey(name: '_purpose') final List<Element>? purposeElement,
          required final Reference patient,
          final List<CoverageEligibilityRequestEvent>? event,
          final FhirDate? servicedDate,
          @JsonKey(name: '_servicedDate') final Element? servicedDateElement,
          final Period? servicedPeriod,
          final FhirDateTime? created,
          @JsonKey(name: '_created') final Element? createdElement,
          final Reference? enterer,
          final Reference? provider,
          required final Reference insurer,
          final Reference? facility,
          final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
          final List<CoverageEligibilityRequestInsurance>? insurance,
          final List<CoverageEligibilityRequestItem>? item}) =
      _$CoverageEligibilityRequestImpl;
  const _CoverageEligibilityRequest._() : super._();

  factory _CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) =
      _$CoverageEligibilityRequestImpl.fromJson;

  @override

  /// [resourceType] This is a CoverageEligibilityRequest resource
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityRequest)
  R6ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [priority] When the requestor expects the processor to complete
  ///  processing.
  CodeableConcept? get priority;
  @override

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  List<FhirCode>? get purpose;
  @override

  /// [purposeElement] ("_purpose") Extensions for purpose
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement;
  @override

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  Reference get patient;
  @override

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  List<CoverageEligibilityRequestEvent>? get event;
  @override

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  FhirDate? get servicedDate;
  @override

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  Element? get servicedDateElement;
  @override

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  Period? get servicedPeriod;
  @override

  /// [created] The date when this resource was created.
  FhirDateTime? get created;
  @override

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement;
  @override

  /// [enterer] Person who created the request.
  Reference? get enterer;
  @override

  /// [provider] The provider which is responsible for the request.
  Reference? get provider;
  @override

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  recipient of the request.
  Reference get insurer;
  @override

  /// [facility] Facility where the services are intended to be provided.
  Reference? get facility;
  @override

  /// [supportingInfo] Additional information codes regarding exceptions,
  ///  special considerations, the condition, situation, prior or concurrent
  ///  issues.
  List<CoverageEligibilityRequestSupportingInfo>? get supportingInfo;
  @override

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  List<CoverageEligibilityRequestInsurance>? get insurance;
  @override

  /// [item] Service categories or billable services for which benefit
  ///  details and/or an authorization prior to service delivery may be
  ///  required by the payor.
  List<CoverageEligibilityRequestItem>? get item;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestImplCopyWith<_$CoverageEligibilityRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityRequestEvent _$CoverageEligibilityRequestEventFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityRequestEvent.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequestEvent {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  FhirDateTime? get whenDateTime => throw _privateConstructorUsedError;

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @JsonKey(name: '_whenDateTime')
  Element? get whenDateTimeElement => throw _privateConstructorUsedError;

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  Period? get whenPeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestEventCopyWith<CoverageEligibilityRequestEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestEventCopyWith<$Res> {
  factory $CoverageEligibilityRequestEventCopyWith(
          CoverageEligibilityRequestEvent value,
          $Res Function(CoverageEligibilityRequestEvent) then) =
      _$CoverageEligibilityRequestEventCopyWithImpl<$Res,
          CoverageEligibilityRequestEvent>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') Element? whenDateTimeElement,
      Period? whenPeriod});

  $CodeableConceptCopyWith<$Res> get type;
  $PeriodCopyWith<$Res>? get whenPeriod;
}

/// @nodoc
class _$CoverageEligibilityRequestEventCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequestEvent>
    implements $CoverageEligibilityRequestEventCopyWith<$Res> {
  _$CoverageEligibilityRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? whenDateTime = freezed,
    Object? whenDateTimeElement = freezed,
    Object? whenPeriod = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      whenDateTime: freezed == whenDateTime
          ? _value.whenDateTime
          : whenDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      whenDateTimeElement: freezed == whenDateTimeElement
          ? _value.whenDateTimeElement
          : whenDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      whenPeriod: freezed == whenPeriod
          ? _value.whenPeriod
          : whenPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get whenPeriod {
    if (_value.whenPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.whenPeriod!, (value) {
      return _then(_value.copyWith(whenPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestEventImplCopyWith<$Res>
    implements $CoverageEligibilityRequestEventCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestEventImplCopyWith(
          _$CoverageEligibilityRequestEventImpl value,
          $Res Function(_$CoverageEligibilityRequestEventImpl) then) =
      __$$CoverageEligibilityRequestEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') Element? whenDateTimeElement,
      Period? whenPeriod});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $PeriodCopyWith<$Res>? get whenPeriod;
}

/// @nodoc
class __$$CoverageEligibilityRequestEventImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestEventCopyWithImpl<$Res,
        _$CoverageEligibilityRequestEventImpl>
    implements _$$CoverageEligibilityRequestEventImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestEventImplCopyWithImpl(
      _$CoverageEligibilityRequestEventImpl _value,
      $Res Function(_$CoverageEligibilityRequestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? whenDateTime = freezed,
    Object? whenDateTimeElement = freezed,
    Object? whenPeriod = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      whenDateTime: freezed == whenDateTime
          ? _value.whenDateTime
          : whenDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      whenDateTimeElement: freezed == whenDateTimeElement
          ? _value.whenDateTimeElement
          : whenDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      whenPeriod: freezed == whenPeriod
          ? _value.whenPeriod
          : whenPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestEventImpl
    extends _CoverageEligibilityRequestEvent {
  const _$CoverageEligibilityRequestEventImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.whenDateTime,
      @JsonKey(name: '_whenDateTime') this.whenDateTimeElement,
      this.whenPeriod})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityRequestEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestEventImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  @override
  final CodeableConcept type;

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  @override
  final FhirDateTime? whenDateTime;

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @override
  @JsonKey(name: '_whenDateTime')
  final Element? whenDateTimeElement;

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  @override
  final Period? whenPeriod;

  @override
  String toString() {
    return 'CoverageEligibilityRequestEvent(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, whenDateTime: $whenDateTime, whenDateTimeElement: $whenDateTimeElement, whenPeriod: $whenPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.whenDateTime, whenDateTime) ||
                other.whenDateTime == whenDateTime) &&
            (identical(other.whenDateTimeElement, whenDateTimeElement) ||
                other.whenDateTimeElement == whenDateTimeElement) &&
            (identical(other.whenPeriod, whenPeriod) ||
                other.whenPeriod == whenPeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      whenDateTime,
      whenDateTimeElement,
      whenPeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestEventImplCopyWith<
          _$CoverageEligibilityRequestEventImpl>
      get copyWith => __$$CoverageEligibilityRequestEventImplCopyWithImpl<
          _$CoverageEligibilityRequestEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestEventImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequestEvent
    extends CoverageEligibilityRequestEvent {
  const factory _CoverageEligibilityRequestEvent(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') final Element? whenDateTimeElement,
      final Period? whenPeriod}) = _$CoverageEligibilityRequestEventImpl;
  const _CoverageEligibilityRequestEvent._() : super._();

  factory _CoverageEligibilityRequestEvent.fromJson(Map<String, dynamic> json) =
      _$CoverageEligibilityRequestEventImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  CodeableConcept get type;
  @override

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  FhirDateTime? get whenDateTime;
  @override

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @JsonKey(name: '_whenDateTime')
  Element? get whenDateTimeElement;
  @override

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  Period? get whenPeriod;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestEventImplCopyWith<
          _$CoverageEligibilityRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityRequestSupportingInfo
    _$CoverageEligibilityRequestSupportingInfoFromJson(
        Map<String, dynamic> json) {
  return _CoverageEligibilityRequestSupportingInfo.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequestSupportingInfo {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [sequence] A number to uniquely identify supporting information entries.
  FhirPositiveInt? get sequence => throw _privateConstructorUsedError;

  /// [sequenceElement] ("_sequence") Extensions for sequence
  @JsonKey(name: '_sequence')
  Element? get sequenceElement => throw _privateConstructorUsedError;

  /// [information] Additional data or information such as resources,
  ///  documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  Reference get information => throw _privateConstructorUsedError;

  /// [appliesToAll] The supporting materials are applicable for all detail
  ///  items, product/servce categories and specific billing codes.
  FhirBoolean? get appliesToAll => throw _privateConstructorUsedError;

  /// [appliesToAllElement] ("_appliesToAll") Extensions for appliesToAll
  @JsonKey(name: '_appliesToAll')
  Element? get appliesToAllElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestSupportingInfoCopyWith<
          CoverageEligibilityRequestSupportingInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestSupportingInfoCopyWith<$Res> {
  factory $CoverageEligibilityRequestSupportingInfoCopyWith(
          CoverageEligibilityRequestSupportingInfo value,
          $Res Function(CoverageEligibilityRequestSupportingInfo) then) =
      _$CoverageEligibilityRequestSupportingInfoCopyWithImpl<$Res,
          CoverageEligibilityRequestSupportingInfo>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? sequence,
      @JsonKey(name: '_sequence') Element? sequenceElement,
      Reference information,
      FhirBoolean? appliesToAll,
      @JsonKey(name: '_appliesToAll') Element? appliesToAllElement});

  $ReferenceCopyWith<$Res> get information;
}

/// @nodoc
class _$CoverageEligibilityRequestSupportingInfoCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequestSupportingInfo>
    implements $CoverageEligibilityRequestSupportingInfoCopyWith<$Res> {
  _$CoverageEligibilityRequestSupportingInfoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? information = null,
    Object? appliesToAll = freezed,
    Object? appliesToAllElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as Reference,
      appliesToAll: freezed == appliesToAll
          ? _value.appliesToAll
          : appliesToAll // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      appliesToAllElement: freezed == appliesToAllElement
          ? _value.appliesToAllElement
          : appliesToAllElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get information {
    return $ReferenceCopyWith<$Res>(_value.information, (value) {
      return _then(_value.copyWith(information: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestSupportingInfoImplCopyWith<$Res>
    implements $CoverageEligibilityRequestSupportingInfoCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestSupportingInfoImplCopyWith(
          _$CoverageEligibilityRequestSupportingInfoImpl value,
          $Res Function(_$CoverageEligibilityRequestSupportingInfoImpl) then) =
      __$$CoverageEligibilityRequestSupportingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirPositiveInt? sequence,
      @JsonKey(name: '_sequence') Element? sequenceElement,
      Reference information,
      FhirBoolean? appliesToAll,
      @JsonKey(name: '_appliesToAll') Element? appliesToAllElement});

  @override
  $ReferenceCopyWith<$Res> get information;
}

/// @nodoc
class __$$CoverageEligibilityRequestSupportingInfoImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestSupportingInfoCopyWithImpl<$Res,
        _$CoverageEligibilityRequestSupportingInfoImpl>
    implements _$$CoverageEligibilityRequestSupportingInfoImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestSupportingInfoImplCopyWithImpl(
      _$CoverageEligibilityRequestSupportingInfoImpl _value,
      $Res Function(_$CoverageEligibilityRequestSupportingInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? sequence = freezed,
    Object? sequenceElement = freezed,
    Object? information = null,
    Object? appliesToAll = freezed,
    Object? appliesToAllElement = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestSupportingInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      sequenceElement: freezed == sequenceElement
          ? _value.sequenceElement
          : sequenceElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as Reference,
      appliesToAll: freezed == appliesToAll
          ? _value.appliesToAll
          : appliesToAll // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      appliesToAllElement: freezed == appliesToAllElement
          ? _value.appliesToAllElement
          : appliesToAllElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestSupportingInfoImpl
    extends _CoverageEligibilityRequestSupportingInfo {
  const _$CoverageEligibilityRequestSupportingInfoImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.sequence,
      @JsonKey(name: '_sequence') this.sequenceElement,
      required this.information,
      this.appliesToAll,
      @JsonKey(name: '_appliesToAll') this.appliesToAllElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityRequestSupportingInfoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestSupportingInfoImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sequence] A number to uniquely identify supporting information entries.
  @override
  final FhirPositiveInt? sequence;

  /// [sequenceElement] ("_sequence") Extensions for sequence
  @override
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [information] Additional data or information such as resources,
  ///  documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  @override
  final Reference information;

  /// [appliesToAll] The supporting materials are applicable for all detail
  ///  items, product/servce categories and specific billing codes.
  @override
  final FhirBoolean? appliesToAll;

  /// [appliesToAllElement] ("_appliesToAll") Extensions for appliesToAll
  @override
  @JsonKey(name: '_appliesToAll')
  final Element? appliesToAllElement;

  @override
  String toString() {
    return 'CoverageEligibilityRequestSupportingInfo(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, sequence: $sequence, sequenceElement: $sequenceElement, information: $information, appliesToAll: $appliesToAll, appliesToAllElement: $appliesToAllElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestSupportingInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.sequenceElement, sequenceElement) ||
                other.sequenceElement == sequenceElement) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.appliesToAll, appliesToAll) ||
                other.appliesToAll == appliesToAll) &&
            (identical(other.appliesToAllElement, appliesToAllElement) ||
                other.appliesToAllElement == appliesToAllElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      sequence,
      sequenceElement,
      information,
      appliesToAll,
      appliesToAllElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestSupportingInfoImplCopyWith<
          _$CoverageEligibilityRequestSupportingInfoImpl>
      get copyWith =>
          __$$CoverageEligibilityRequestSupportingInfoImplCopyWithImpl<
              _$CoverageEligibilityRequestSupportingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestSupportingInfoImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequestSupportingInfo
    extends CoverageEligibilityRequestSupportingInfo {
  const factory _CoverageEligibilityRequestSupportingInfo(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirPositiveInt? sequence,
          @JsonKey(name: '_sequence') final Element? sequenceElement,
          required final Reference information,
          final FhirBoolean? appliesToAll,
          @JsonKey(name: '_appliesToAll') final Element? appliesToAllElement}) =
      _$CoverageEligibilityRequestSupportingInfoImpl;
  const _CoverageEligibilityRequestSupportingInfo._() : super._();

  factory _CoverageEligibilityRequestSupportingInfo.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityRequestSupportingInfoImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [sequence] A number to uniquely identify supporting information entries.
  FhirPositiveInt? get sequence;
  @override

  /// [sequenceElement] ("_sequence") Extensions for sequence
  @JsonKey(name: '_sequence')
  Element? get sequenceElement;
  @override

  /// [information] Additional data or information such as resources,
  ///  documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  Reference get information;
  @override

  /// [appliesToAll] The supporting materials are applicable for all detail
  ///  items, product/servce categories and specific billing codes.
  FhirBoolean? get appliesToAll;
  @override

  /// [appliesToAllElement] ("_appliesToAll") Extensions for appliesToAll
  @JsonKey(name: '_appliesToAll')
  Element? get appliesToAllElement;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestSupportingInfoImplCopyWith<
          _$CoverageEligibilityRequestSupportingInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityRequestInsurance
    _$CoverageEligibilityRequestInsuranceFromJson(Map<String, dynamic> json) {
  return _CoverageEligibilityRequestInsurance.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequestInsurance {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  evaluation of this request when set to true.
  FhirBoolean? get focal => throw _privateConstructorUsedError;

  /// [focalElement] ("_focal") Extensions for focal
  @JsonKey(name: '_focal')
  Element? get focalElement => throw _privateConstructorUsedError;

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  Reference get coverage => throw _privateConstructorUsedError;

  /// [businessArrangement] A business agreement number established between
  ///  the provider and the insurer for special business processing purposes.
  String? get businessArrangement => throw _privateConstructorUsedError;

  /// [businessArrangementElement] ("_businessArrangement") Extensions for
  ///  businessArrangement
  @JsonKey(name: '_businessArrangement')
  Element? get businessArrangementElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestInsuranceCopyWith<
          CoverageEligibilityRequestInsurance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestInsuranceCopyWith<$Res> {
  factory $CoverageEligibilityRequestInsuranceCopyWith(
          CoverageEligibilityRequestInsurance value,
          $Res Function(CoverageEligibilityRequestInsurance) then) =
      _$CoverageEligibilityRequestInsuranceCopyWithImpl<$Res,
          CoverageEligibilityRequestInsurance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? focal,
      @JsonKey(name: '_focal') Element? focalElement,
      Reference coverage,
      String? businessArrangement,
      @JsonKey(name: '_businessArrangement')
      Element? businessArrangementElement});

  $ReferenceCopyWith<$Res> get coverage;
}

/// @nodoc
class _$CoverageEligibilityRequestInsuranceCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequestInsurance>
    implements $CoverageEligibilityRequestInsuranceCopyWith<$Res> {
  _$CoverageEligibilityRequestInsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? focal = freezed,
    Object? focalElement = freezed,
    Object? coverage = null,
    Object? businessArrangement = freezed,
    Object? businessArrangementElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      focalElement: freezed == focalElement
          ? _value.focalElement
          : focalElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      businessArrangement: freezed == businessArrangement
          ? _value.businessArrangement
          : businessArrangement // ignore: cast_nullable_to_non_nullable
              as String?,
      businessArrangementElement: freezed == businessArrangementElement
          ? _value.businessArrangementElement
          : businessArrangementElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get coverage {
    return $ReferenceCopyWith<$Res>(_value.coverage, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestInsuranceImplCopyWith<$Res>
    implements $CoverageEligibilityRequestInsuranceCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestInsuranceImplCopyWith(
          _$CoverageEligibilityRequestInsuranceImpl value,
          $Res Function(_$CoverageEligibilityRequestInsuranceImpl) then) =
      __$$CoverageEligibilityRequestInsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? focal,
      @JsonKey(name: '_focal') Element? focalElement,
      Reference coverage,
      String? businessArrangement,
      @JsonKey(name: '_businessArrangement')
      Element? businessArrangementElement});

  @override
  $ReferenceCopyWith<$Res> get coverage;
}

/// @nodoc
class __$$CoverageEligibilityRequestInsuranceImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestInsuranceCopyWithImpl<$Res,
        _$CoverageEligibilityRequestInsuranceImpl>
    implements _$$CoverageEligibilityRequestInsuranceImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestInsuranceImplCopyWithImpl(
      _$CoverageEligibilityRequestInsuranceImpl _value,
      $Res Function(_$CoverageEligibilityRequestInsuranceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? focal = freezed,
    Object? focalElement = freezed,
    Object? coverage = null,
    Object? businessArrangement = freezed,
    Object? businessArrangementElement = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestInsuranceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      focal: freezed == focal
          ? _value.focal
          : focal // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      focalElement: freezed == focalElement
          ? _value.focalElement
          : focalElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      businessArrangement: freezed == businessArrangement
          ? _value.businessArrangement
          : businessArrangement // ignore: cast_nullable_to_non_nullable
              as String?,
      businessArrangementElement: freezed == businessArrangementElement
          ? _value.businessArrangementElement
          : businessArrangementElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestInsuranceImpl
    extends _CoverageEligibilityRequestInsurance {
  const _$CoverageEligibilityRequestInsuranceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.focal,
      @JsonKey(name: '_focal') this.focalElement,
      required this.coverage,
      this.businessArrangement,
      @JsonKey(name: '_businessArrangement') this.businessArrangementElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityRequestInsuranceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestInsuranceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  evaluation of this request when set to true.
  @override
  final FhirBoolean? focal;

  /// [focalElement] ("_focal") Extensions for focal
  @override
  @JsonKey(name: '_focal')
  final Element? focalElement;

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  @override
  final Reference coverage;

  /// [businessArrangement] A business agreement number established between
  ///  the provider and the insurer for special business processing purposes.
  @override
  final String? businessArrangement;

  /// [businessArrangementElement] ("_businessArrangement") Extensions for
  ///  businessArrangement
  @override
  @JsonKey(name: '_businessArrangement')
  final Element? businessArrangementElement;

  @override
  String toString() {
    return 'CoverageEligibilityRequestInsurance(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, focal: $focal, focalElement: $focalElement, coverage: $coverage, businessArrangement: $businessArrangement, businessArrangementElement: $businessArrangementElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestInsuranceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.focal, focal) || other.focal == focal) &&
            (identical(other.focalElement, focalElement) ||
                other.focalElement == focalElement) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.businessArrangement, businessArrangement) ||
                other.businessArrangement == businessArrangement) &&
            (identical(other.businessArrangementElement,
                    businessArrangementElement) ||
                other.businessArrangementElement ==
                    businessArrangementElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      focal,
      focalElement,
      coverage,
      businessArrangement,
      businessArrangementElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestInsuranceImplCopyWith<
          _$CoverageEligibilityRequestInsuranceImpl>
      get copyWith => __$$CoverageEligibilityRequestInsuranceImplCopyWithImpl<
          _$CoverageEligibilityRequestInsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestInsuranceImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequestInsurance
    extends CoverageEligibilityRequestInsurance {
  const factory _CoverageEligibilityRequestInsurance(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirBoolean? focal,
          @JsonKey(name: '_focal') final Element? focalElement,
          required final Reference coverage,
          final String? businessArrangement,
          @JsonKey(name: '_businessArrangement')
          final Element? businessArrangementElement}) =
      _$CoverageEligibilityRequestInsuranceImpl;
  const _CoverageEligibilityRequestInsurance._() : super._();

  factory _CoverageEligibilityRequestInsurance.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityRequestInsuranceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  evaluation of this request when set to true.
  FhirBoolean? get focal;
  @override

  /// [focalElement] ("_focal") Extensions for focal
  @JsonKey(name: '_focal')
  Element? get focalElement;
  @override

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  Reference get coverage;
  @override

  /// [businessArrangement] A business agreement number established between
  ///  the provider and the insurer for special business processing purposes.
  String? get businessArrangement;
  @override

  /// [businessArrangementElement] ("_businessArrangement") Extensions for
  ///  businessArrangement
  @JsonKey(name: '_businessArrangement')
  Element? get businessArrangementElement;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestInsuranceImplCopyWith<
          _$CoverageEligibilityRequestInsuranceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityRequestItem _$CoverageEligibilityRequestItemFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityRequestItem.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequestItem {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [supportingInfoSequence] Exceptions, special conditions and supporting
  ///  information applicable for this service or product line.
  List<FhirPositiveInt>? get supportingInfoSequence =>
      throw _privateConstructorUsedError;

  /// [supportingInfoSequenceElement] ("_supportingInfoSequence") Extensions
  ///  for supportingInfoSequence
  @JsonKey(name: '_supportingInfoSequence')
  List<Element>? get supportingInfoSequenceElement =>
      throw _privateConstructorUsedError;

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category => throw _privateConstructorUsedError;

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  CodeableConcept? get productOrService => throw _privateConstructorUsedError;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier => throw _privateConstructorUsedError;

  /// [provider] The practitioner who is responsible for the product or
  ///  service to be rendered to the patient.
  Reference? get provider => throw _privateConstructorUsedError;

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity => throw _privateConstructorUsedError;

  /// [unitPrice] The amount charged to the patient by the provider for a
  ///  single unit.
  Money? get unitPrice => throw _privateConstructorUsedError;

  /// [facility] Facility where the services will be provided.
  Reference? get facility => throw _privateConstructorUsedError;

  /// [diagnosis] Patient diagnosis for which care is sought.
  List<CoverageEligibilityRequestDiagnosis>? get diagnosis =>
      throw _privateConstructorUsedError;

  /// [detail] The plan/proposal/order describing the proposed service in
  ///  detail.
  List<Reference>? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestItemCopyWith<CoverageEligibilityRequestItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestItemCopyWith<$Res> {
  factory $CoverageEligibilityRequestItemCopyWith(
          CoverageEligibilityRequestItem value,
          $Res Function(CoverageEligibilityRequestItem) then) =
      _$CoverageEligibilityRequestItemCopyWithImpl<$Res,
          CoverageEligibilityRequestItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirPositiveInt>? supportingInfoSequence,
      @JsonKey(name: '_supportingInfoSequence')
      List<Element>? supportingInfoSequenceElement,
      CodeableConcept? category,
      CodeableConcept? productOrService,
      List<CodeableConcept>? modifier,
      Reference? provider,
      Quantity? quantity,
      Money? unitPrice,
      Reference? facility,
      List<CoverageEligibilityRequestDiagnosis>? diagnosis,
      List<Reference>? detail});

  $CodeableConceptCopyWith<$Res>? get category;
  $CodeableConceptCopyWith<$Res>? get productOrService;
  $ReferenceCopyWith<$Res>? get provider;
  $QuantityCopyWith<$Res>? get quantity;
  $MoneyCopyWith<$Res>? get unitPrice;
  $ReferenceCopyWith<$Res>? get facility;
}

/// @nodoc
class _$CoverageEligibilityRequestItemCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequestItem>
    implements $CoverageEligibilityRequestItemCopyWith<$Res> {
  _$CoverageEligibilityRequestItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? supportingInfoSequence = freezed,
    Object? supportingInfoSequenceElement = freezed,
    Object? category = freezed,
    Object? productOrService = freezed,
    Object? modifier = freezed,
    Object? provider = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? facility = freezed,
    Object? diagnosis = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      supportingInfoSequence: freezed == supportingInfoSequence
          ? _value.supportingInfoSequence
          : supportingInfoSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      supportingInfoSequenceElement: freezed == supportingInfoSequenceElement
          ? _value.supportingInfoSequenceElement
          : supportingInfoSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productOrService: freezed == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Reference?,
      diagnosis: freezed == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestDiagnosis>?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get productOrService {
    if (_value.productOrService == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.productOrService!, (value) {
      return _then(_value.copyWith(productOrService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get facility {
    if (_value.facility == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.facility!, (value) {
      return _then(_value.copyWith(facility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestItemImplCopyWith<$Res>
    implements $CoverageEligibilityRequestItemCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestItemImplCopyWith(
          _$CoverageEligibilityRequestItemImpl value,
          $Res Function(_$CoverageEligibilityRequestItemImpl) then) =
      __$$CoverageEligibilityRequestItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirPositiveInt>? supportingInfoSequence,
      @JsonKey(name: '_supportingInfoSequence')
      List<Element>? supportingInfoSequenceElement,
      CodeableConcept? category,
      CodeableConcept? productOrService,
      List<CodeableConcept>? modifier,
      Reference? provider,
      Quantity? quantity,
      Money? unitPrice,
      Reference? facility,
      List<CoverageEligibilityRequestDiagnosis>? diagnosis,
      List<Reference>? detail});

  @override
  $CodeableConceptCopyWith<$Res>? get category;
  @override
  $CodeableConceptCopyWith<$Res>? get productOrService;
  @override
  $ReferenceCopyWith<$Res>? get provider;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $MoneyCopyWith<$Res>? get unitPrice;
  @override
  $ReferenceCopyWith<$Res>? get facility;
}

/// @nodoc
class __$$CoverageEligibilityRequestItemImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestItemCopyWithImpl<$Res,
        _$CoverageEligibilityRequestItemImpl>
    implements _$$CoverageEligibilityRequestItemImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestItemImplCopyWithImpl(
      _$CoverageEligibilityRequestItemImpl _value,
      $Res Function(_$CoverageEligibilityRequestItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? supportingInfoSequence = freezed,
    Object? supportingInfoSequenceElement = freezed,
    Object? category = freezed,
    Object? productOrService = freezed,
    Object? modifier = freezed,
    Object? provider = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? facility = freezed,
    Object? diagnosis = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      supportingInfoSequence: freezed == supportingInfoSequence
          ? _value._supportingInfoSequence
          : supportingInfoSequence // ignore: cast_nullable_to_non_nullable
              as List<FhirPositiveInt>?,
      supportingInfoSequenceElement: freezed == supportingInfoSequenceElement
          ? _value._supportingInfoSequenceElement
          : supportingInfoSequenceElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productOrService: freezed == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      facility: freezed == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Reference?,
      diagnosis: freezed == diagnosis
          ? _value._diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityRequestDiagnosis>?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestItemImpl
    extends _CoverageEligibilityRequestItem {
  const _$CoverageEligibilityRequestItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirPositiveInt>? supportingInfoSequence,
      @JsonKey(name: '_supportingInfoSequence')
      final List<Element>? supportingInfoSequenceElement,
      this.category,
      this.productOrService,
      final List<CodeableConcept>? modifier,
      this.provider,
      this.quantity,
      this.unitPrice,
      this.facility,
      final List<CoverageEligibilityRequestDiagnosis>? diagnosis,
      final List<Reference>? detail})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _supportingInfoSequence = supportingInfoSequence,
        _supportingInfoSequenceElement = supportingInfoSequenceElement,
        _modifier = modifier,
        _diagnosis = diagnosis,
        _detail = detail,
        super._();

  factory _$CoverageEligibilityRequestItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestItemImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supportingInfoSequence] Exceptions, special conditions and supporting
  ///  information applicable for this service or product line.
  final List<FhirPositiveInt>? _supportingInfoSequence;

  /// [supportingInfoSequence] Exceptions, special conditions and supporting
  ///  information applicable for this service or product line.
  @override
  List<FhirPositiveInt>? get supportingInfoSequence {
    final value = _supportingInfoSequence;
    if (value == null) return null;
    if (_supportingInfoSequence is EqualUnmodifiableListView)
      return _supportingInfoSequence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supportingInfoSequenceElement] ("_supportingInfoSequence") Extensions
  ///  for supportingInfoSequence
  final List<Element>? _supportingInfoSequenceElement;

  /// [supportingInfoSequenceElement] ("_supportingInfoSequence") Extensions
  ///  for supportingInfoSequence
  @override
  @JsonKey(name: '_supportingInfoSequence')
  List<Element>? get supportingInfoSequenceElement {
    final value = _supportingInfoSequenceElement;
    if (value == null) return null;
    if (_supportingInfoSequenceElement is EqualUnmodifiableListView)
      return _supportingInfoSequenceElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  @override
  final CodeableConcept? category;

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  @override
  final CodeableConcept? productOrService;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  final List<CodeableConcept>? _modifier;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  @override
  List<CodeableConcept>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [provider] The practitioner who is responsible for the product or
  ///  service to be rendered to the patient.
  @override
  final Reference? provider;

  /// [quantity] The number of repetitions of a service or product.
  @override
  final Quantity? quantity;

  /// [unitPrice] The amount charged to the patient by the provider for a
  ///  single unit.
  @override
  final Money? unitPrice;

  /// [facility] Facility where the services will be provided.
  @override
  final Reference? facility;

  /// [diagnosis] Patient diagnosis for which care is sought.
  final List<CoverageEligibilityRequestDiagnosis>? _diagnosis;

  /// [diagnosis] Patient diagnosis for which care is sought.
  @override
  List<CoverageEligibilityRequestDiagnosis>? get diagnosis {
    final value = _diagnosis;
    if (value == null) return null;
    if (_diagnosis is EqualUnmodifiableListView) return _diagnosis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [detail] The plan/proposal/order describing the proposed service in
  ///  detail.
  final List<Reference>? _detail;

  /// [detail] The plan/proposal/order describing the proposed service in
  ///  detail.
  @override
  List<Reference>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageEligibilityRequestItem(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, supportingInfoSequence: $supportingInfoSequence, supportingInfoSequenceElement: $supportingInfoSequenceElement, category: $category, productOrService: $productOrService, modifier: $modifier, provider: $provider, quantity: $quantity, unitPrice: $unitPrice, facility: $facility, diagnosis: $diagnosis, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(
                other._supportingInfoSequence, _supportingInfoSequence) &&
            const DeepCollectionEquality().equals(
                other._supportingInfoSequenceElement,
                _supportingInfoSequenceElement) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrService, productOrService) ||
                other.productOrService == productOrService) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.facility, facility) ||
                other.facility == facility) &&
            const DeepCollectionEquality()
                .equals(other._diagnosis, _diagnosis) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_supportingInfoSequence),
      const DeepCollectionEquality().hash(_supportingInfoSequenceElement),
      category,
      productOrService,
      const DeepCollectionEquality().hash(_modifier),
      provider,
      quantity,
      unitPrice,
      facility,
      const DeepCollectionEquality().hash(_diagnosis),
      const DeepCollectionEquality().hash(_detail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestItemImplCopyWith<
          _$CoverageEligibilityRequestItemImpl>
      get copyWith => __$$CoverageEligibilityRequestItemImplCopyWithImpl<
          _$CoverageEligibilityRequestItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestItemImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequestItem
    extends CoverageEligibilityRequestItem {
  const factory _CoverageEligibilityRequestItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirPositiveInt>? supportingInfoSequence,
      @JsonKey(name: '_supportingInfoSequence')
      final List<Element>? supportingInfoSequenceElement,
      final CodeableConcept? category,
      final CodeableConcept? productOrService,
      final List<CodeableConcept>? modifier,
      final Reference? provider,
      final Quantity? quantity,
      final Money? unitPrice,
      final Reference? facility,
      final List<CoverageEligibilityRequestDiagnosis>? diagnosis,
      final List<Reference>? detail}) = _$CoverageEligibilityRequestItemImpl;
  const _CoverageEligibilityRequestItem._() : super._();

  factory _CoverageEligibilityRequestItem.fromJson(Map<String, dynamic> json) =
      _$CoverageEligibilityRequestItemImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [supportingInfoSequence] Exceptions, special conditions and supporting
  ///  information applicable for this service or product line.
  List<FhirPositiveInt>? get supportingInfoSequence;
  @override

  /// [supportingInfoSequenceElement] ("_supportingInfoSequence") Extensions
  ///  for supportingInfoSequence
  @JsonKey(name: '_supportingInfoSequence')
  List<Element>? get supportingInfoSequenceElement;
  @override

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category;
  @override

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  CodeableConcept? get productOrService;
  @override

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier;
  @override

  /// [provider] The practitioner who is responsible for the product or
  ///  service to be rendered to the patient.
  Reference? get provider;
  @override

  /// [quantity] The number of repetitions of a service or product.
  Quantity? get quantity;
  @override

  /// [unitPrice] The amount charged to the patient by the provider for a
  ///  single unit.
  Money? get unitPrice;
  @override

  /// [facility] Facility where the services will be provided.
  Reference? get facility;
  @override

  /// [diagnosis] Patient diagnosis for which care is sought.
  List<CoverageEligibilityRequestDiagnosis>? get diagnosis;
  @override

  /// [detail] The plan/proposal/order describing the proposed service in
  ///  detail.
  List<Reference>? get detail;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestItemImplCopyWith<
          _$CoverageEligibilityRequestItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityRequestDiagnosis
    _$CoverageEligibilityRequestDiagnosisFromJson(Map<String, dynamic> json) {
  return _CoverageEligibilityRequestDiagnosis.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityRequestDiagnosis {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [diagnosisCodeableConcept] The nature of illness or problem in a coded
  ///  form or as a reference to an external defined Condition.
  CodeableConcept? get diagnosisCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [diagnosisReference] The nature of illness or problem in a coded form
  ///  or as a reference to an external defined Condition.
  Reference? get diagnosisReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityRequestDiagnosisCopyWith<
          CoverageEligibilityRequestDiagnosis>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityRequestDiagnosisCopyWith<$Res> {
  factory $CoverageEligibilityRequestDiagnosisCopyWith(
          CoverageEligibilityRequestDiagnosis value,
          $Res Function(CoverageEligibilityRequestDiagnosis) then) =
      _$CoverageEligibilityRequestDiagnosisCopyWithImpl<$Res,
          CoverageEligibilityRequestDiagnosis>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? diagnosisCodeableConcept,
      Reference? diagnosisReference});

  $CodeableConceptCopyWith<$Res>? get diagnosisCodeableConcept;
  $ReferenceCopyWith<$Res>? get diagnosisReference;
}

/// @nodoc
class _$CoverageEligibilityRequestDiagnosisCopyWithImpl<$Res,
        $Val extends CoverageEligibilityRequestDiagnosis>
    implements $CoverageEligibilityRequestDiagnosisCopyWith<$Res> {
  _$CoverageEligibilityRequestDiagnosisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? diagnosisCodeableConcept = freezed,
    Object? diagnosisReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      diagnosisCodeableConcept: freezed == diagnosisCodeableConcept
          ? _value.diagnosisCodeableConcept
          : diagnosisCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      diagnosisReference: freezed == diagnosisReference
          ? _value.diagnosisReference
          : diagnosisReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get diagnosisCodeableConcept {
    if (_value.diagnosisCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.diagnosisCodeableConcept!,
        (value) {
      return _then(_value.copyWith(diagnosisCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get diagnosisReference {
    if (_value.diagnosisReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.diagnosisReference!, (value) {
      return _then(_value.copyWith(diagnosisReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityRequestDiagnosisImplCopyWith<$Res>
    implements $CoverageEligibilityRequestDiagnosisCopyWith<$Res> {
  factory _$$CoverageEligibilityRequestDiagnosisImplCopyWith(
          _$CoverageEligibilityRequestDiagnosisImpl value,
          $Res Function(_$CoverageEligibilityRequestDiagnosisImpl) then) =
      __$$CoverageEligibilityRequestDiagnosisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? diagnosisCodeableConcept,
      Reference? diagnosisReference});

  @override
  $CodeableConceptCopyWith<$Res>? get diagnosisCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get diagnosisReference;
}

/// @nodoc
class __$$CoverageEligibilityRequestDiagnosisImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityRequestDiagnosisCopyWithImpl<$Res,
        _$CoverageEligibilityRequestDiagnosisImpl>
    implements _$$CoverageEligibilityRequestDiagnosisImplCopyWith<$Res> {
  __$$CoverageEligibilityRequestDiagnosisImplCopyWithImpl(
      _$CoverageEligibilityRequestDiagnosisImpl _value,
      $Res Function(_$CoverageEligibilityRequestDiagnosisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? diagnosisCodeableConcept = freezed,
    Object? diagnosisReference = freezed,
  }) {
    return _then(_$CoverageEligibilityRequestDiagnosisImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      diagnosisCodeableConcept: freezed == diagnosisCodeableConcept
          ? _value.diagnosisCodeableConcept
          : diagnosisCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      diagnosisReference: freezed == diagnosisReference
          ? _value.diagnosisReference
          : diagnosisReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityRequestDiagnosisImpl
    extends _CoverageEligibilityRequestDiagnosis {
  const _$CoverageEligibilityRequestDiagnosisImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.diagnosisCodeableConcept,
      this.diagnosisReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityRequestDiagnosisImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityRequestDiagnosisImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [diagnosisCodeableConcept] The nature of illness or problem in a coded
  ///  form or as a reference to an external defined Condition.
  @override
  final CodeableConcept? diagnosisCodeableConcept;

  /// [diagnosisReference] The nature of illness or problem in a coded form
  ///  or as a reference to an external defined Condition.
  @override
  final Reference? diagnosisReference;

  @override
  String toString() {
    return 'CoverageEligibilityRequestDiagnosis(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, diagnosisCodeableConcept: $diagnosisCodeableConcept, diagnosisReference: $diagnosisReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityRequestDiagnosisImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(
                    other.diagnosisCodeableConcept, diagnosisCodeableConcept) ||
                other.diagnosisCodeableConcept == diagnosisCodeableConcept) &&
            (identical(other.diagnosisReference, diagnosisReference) ||
                other.diagnosisReference == diagnosisReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      diagnosisCodeableConcept,
      diagnosisReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityRequestDiagnosisImplCopyWith<
          _$CoverageEligibilityRequestDiagnosisImpl>
      get copyWith => __$$CoverageEligibilityRequestDiagnosisImplCopyWithImpl<
          _$CoverageEligibilityRequestDiagnosisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityRequestDiagnosisImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityRequestDiagnosis
    extends CoverageEligibilityRequestDiagnosis {
  const factory _CoverageEligibilityRequestDiagnosis(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? diagnosisCodeableConcept,
          final Reference? diagnosisReference}) =
      _$CoverageEligibilityRequestDiagnosisImpl;
  const _CoverageEligibilityRequestDiagnosis._() : super._();

  factory _CoverageEligibilityRequestDiagnosis.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityRequestDiagnosisImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [diagnosisCodeableConcept] The nature of illness or problem in a coded
  ///  form or as a reference to an external defined Condition.
  CodeableConcept? get diagnosisCodeableConcept;
  @override

  /// [diagnosisReference] The nature of illness or problem in a coded form
  ///  or as a reference to an external defined Condition.
  Reference? get diagnosisReference;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityRequestDiagnosisImplCopyWith<
          _$CoverageEligibilityRequestDiagnosisImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponse _$CoverageEligibilityResponseFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityResponse.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponse {
  /// [resourceType] This is a CoverageEligibilityResponse resource
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
  R6ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  List<FhirCode>? get purpose => throw _privateConstructorUsedError;

  /// [purposeElement] ("_purpose") Extensions for purpose
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement => throw _privateConstructorUsedError;

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  Reference get patient => throw _privateConstructorUsedError;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  List<CoverageEligibilityResponseEvent>? get event =>
      throw _privateConstructorUsedError;

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  FhirDate? get servicedDate => throw _privateConstructorUsedError;

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  Element? get servicedDateElement => throw _privateConstructorUsedError;

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  Period? get servicedPeriod => throw _privateConstructorUsedError;

  /// [created] The date this resource was created.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement => throw _privateConstructorUsedError;

  /// [requestor] The provider which is responsible for the request.
  Reference? get requestor => throw _privateConstructorUsedError;

  /// [request] Reference to the original request resource.
  Reference get request => throw _privateConstructorUsedError;

  /// [outcome] The outcome of the request processing.
  FhirCode? get outcome => throw _privateConstructorUsedError;

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @JsonKey(name: '_outcome')
  Element? get outcomeElement => throw _privateConstructorUsedError;

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  String? get disposition => throw _privateConstructorUsedError;

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @JsonKey(name: '_disposition')
  Element? get dispositionElement => throw _privateConstructorUsedError;

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  author of the response.
  Reference get insurer => throw _privateConstructorUsedError;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  List<CoverageEligibilityResponseInsurance>? get insurance =>
      throw _privateConstructorUsedError;

  /// [preAuthRef] A reference from the Insurer to which these services
  ///  pertain to be used on further communication and as proof that the
  ///  request occurred.
  String? get preAuthRef => throw _privateConstructorUsedError;

  /// [preAuthRefElement] ("_preAuthRef") Extensions for preAuthRef
  @JsonKey(name: '_preAuthRef')
  Element? get preAuthRefElement => throw _privateConstructorUsedError;

  /// [form] A code for the form to be used for printing the content.
  CodeableConcept? get form => throw _privateConstructorUsedError;

  /// [error] Errors encountered during the processing of the request.
  List<CoverageEligibilityResponseError>? get error =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseCopyWith<CoverageEligibilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseCopyWith<$Res> {
  factory $CoverageEligibilityResponseCopyWith(
          CoverageEligibilityResponse value,
          $Res Function(CoverageEligibilityResponse) then) =
      _$CoverageEligibilityResponseCopyWithImpl<$Res,
          CoverageEligibilityResponse>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') List<Element>? purposeElement,
      Reference patient,
      List<CoverageEligibilityResponseEvent>? event,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') Element? servicedDateElement,
      Period? servicedPeriod,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? requestor,
      Reference request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') Element? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') Element? dispositionElement,
      Reference insurer,
      List<CoverageEligibilityResponseInsurance>? insurance,
      String? preAuthRef,
      @JsonKey(name: '_preAuthRef') Element? preAuthRefElement,
      CodeableConcept? form,
      List<CoverageEligibilityResponseError>? error});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res> get patient;
  $PeriodCopyWith<$Res>? get servicedPeriod;
  $ReferenceCopyWith<$Res>? get requestor;
  $ReferenceCopyWith<$Res> get request;
  $ReferenceCopyWith<$Res> get insurer;
  $CodeableConceptCopyWith<$Res>? get form;
}

/// @nodoc
class _$CoverageEligibilityResponseCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponse>
    implements $CoverageEligibilityResponseCopyWith<$Res> {
  _$CoverageEligibilityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? patient = null,
    Object? event = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? requestor = freezed,
    Object? request = null,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? insurer = null,
    Object? insurance = freezed,
    Object? preAuthRef = freezed,
    Object? preAuthRefElement = freezed,
    Object? form = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseEvent>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      requestor: freezed == requestor
          ? _value.requestor
          : requestor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseInsurance>?,
      preAuthRef: freezed == preAuthRef
          ? _value.preAuthRef
          : preAuthRef // ignore: cast_nullable_to_non_nullable
              as String?,
      preAuthRefElement: freezed == preAuthRefElement
          ? _value.preAuthRefElement
          : preAuthRefElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseError>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get patient {
    return $ReferenceCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get servicedPeriod {
    if (_value.servicedPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.servicedPeriod!, (value) {
      return _then(_value.copyWith(servicedPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get requestor {
    if (_value.requestor == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.requestor!, (value) {
      return _then(_value.copyWith(requestor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get request {
    return $ReferenceCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get insurer {
    return $ReferenceCopyWith<$Res>(_value.insurer, (value) {
      return _then(_value.copyWith(insurer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get form {
    if (_value.form == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.form!, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseImplCopyWith<$Res>
    implements $CoverageEligibilityResponseCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseImplCopyWith(
          _$CoverageEligibilityResponseImpl value,
          $Res Function(_$CoverageEligibilityResponseImpl) then) =
      __$$CoverageEligibilityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') List<Element>? purposeElement,
      Reference patient,
      List<CoverageEligibilityResponseEvent>? event,
      FhirDate? servicedDate,
      @JsonKey(name: '_servicedDate') Element? servicedDateElement,
      Period? servicedPeriod,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? requestor,
      Reference request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') Element? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') Element? dispositionElement,
      Reference insurer,
      List<CoverageEligibilityResponseInsurance>? insurance,
      String? preAuthRef,
      @JsonKey(name: '_preAuthRef') Element? preAuthRefElement,
      CodeableConcept? form,
      List<CoverageEligibilityResponseError>? error});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res> get patient;
  @override
  $PeriodCopyWith<$Res>? get servicedPeriod;
  @override
  $ReferenceCopyWith<$Res>? get requestor;
  @override
  $ReferenceCopyWith<$Res> get request;
  @override
  $ReferenceCopyWith<$Res> get insurer;
  @override
  $CodeableConceptCopyWith<$Res>? get form;
}

/// @nodoc
class __$$CoverageEligibilityResponseImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseCopyWithImpl<$Res,
        _$CoverageEligibilityResponseImpl>
    implements _$$CoverageEligibilityResponseImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseImplCopyWithImpl(
      _$CoverageEligibilityResponseImpl _value,
      $Res Function(_$CoverageEligibilityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? patient = null,
    Object? event = freezed,
    Object? servicedDate = freezed,
    Object? servicedDateElement = freezed,
    Object? servicedPeriod = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? requestor = freezed,
    Object? request = null,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? insurer = null,
    Object? insurance = freezed,
    Object? preAuthRef = freezed,
    Object? preAuthRefElement = freezed,
    Object? form = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      purpose: freezed == purpose
          ? _value._purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      purposeElement: freezed == purposeElement
          ? _value._purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Reference,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseEvent>?,
      servicedDate: freezed == servicedDate
          ? _value.servicedDate
          : servicedDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      servicedDateElement: freezed == servicedDateElement
          ? _value.servicedDateElement
          : servicedDateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      servicedPeriod: freezed == servicedPeriod
          ? _value.servicedPeriod
          : servicedPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      requestor: freezed == requestor
          ? _value.requestor
          : requestor // ignore: cast_nullable_to_non_nullable
              as Reference?,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      insurer: null == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference,
      insurance: freezed == insurance
          ? _value._insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseInsurance>?,
      preAuthRef: freezed == preAuthRef
          ? _value.preAuthRef
          : preAuthRef // ignore: cast_nullable_to_non_nullable
              as String?,
      preAuthRefElement: freezed == preAuthRefElement
          ? _value.preAuthRefElement
          : preAuthRefElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      error: freezed == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseError>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseImpl extends _CoverageEligibilityResponse {
  const _$CoverageEligibilityResponseImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
      this.resourceType = R6ResourceType.CoverageEligibilityResponse,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      final List<FhirCode>? purpose,
      @JsonKey(name: '_purpose') final List<Element>? purposeElement,
      required this.patient,
      final List<CoverageEligibilityResponseEvent>? event,
      this.servicedDate,
      @JsonKey(name: '_servicedDate') this.servicedDateElement,
      this.servicedPeriod,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      this.requestor,
      required this.request,
      this.outcome,
      @JsonKey(name: '_outcome') this.outcomeElement,
      this.disposition,
      @JsonKey(name: '_disposition') this.dispositionElement,
      required this.insurer,
      final List<CoverageEligibilityResponseInsurance>? insurance,
      this.preAuthRef,
      @JsonKey(name: '_preAuthRef') this.preAuthRefElement,
      this.form,
      final List<CoverageEligibilityResponseError>? error})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _purpose = purpose,
        _purposeElement = purposeElement,
        _event = event,
        _insurance = insurance,
        _error = error,
        super._();

  factory _$CoverageEligibilityResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseImplFromJson(json);

  /// [resourceType] This is a CoverageEligibilityResponse resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
  final R6ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  @override
  final FhirId? id;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] ("_language") Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  final List<FhirCode>? _purpose;

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  @override
  List<FhirCode>? get purpose {
    final value = _purpose;
    if (value == null) return null;
    if (_purpose is EqualUnmodifiableListView) return _purpose;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [purposeElement] ("_purpose") Extensions for purpose
  final List<Element>? _purposeElement;

  /// [purposeElement] ("_purpose") Extensions for purpose
  @override
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement {
    final value = _purposeElement;
    if (value == null) return null;
    if (_purposeElement is EqualUnmodifiableListView) return _purposeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  @override
  final Reference patient;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  final List<CoverageEligibilityResponseEvent>? _event;

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  @override
  List<CoverageEligibilityResponseEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  @override
  final FhirDate? servicedDate;

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @override
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  @override
  final Period? servicedPeriod;

  /// [created] The date this resource was created.
  @override
  final FhirDateTime? created;

  /// [createdElement] ("_created") Extensions for created
  @override
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [requestor] The provider which is responsible for the request.
  @override
  final Reference? requestor;

  /// [request] Reference to the original request resource.
  @override
  final Reference request;

  /// [outcome] The outcome of the request processing.
  @override
  final FhirCode? outcome;

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @override
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  @override
  final String? disposition;

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @override
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  author of the response.
  @override
  final Reference insurer;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  final List<CoverageEligibilityResponseInsurance>? _insurance;

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  @override
  List<CoverageEligibilityResponseInsurance>? get insurance {
    final value = _insurance;
    if (value == null) return null;
    if (_insurance is EqualUnmodifiableListView) return _insurance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [preAuthRef] A reference from the Insurer to which these services
  ///  pertain to be used on further communication and as proof that the
  ///  request occurred.
  @override
  final String? preAuthRef;

  /// [preAuthRefElement] ("_preAuthRef") Extensions for preAuthRef
  @override
  @JsonKey(name: '_preAuthRef')
  final Element? preAuthRefElement;

  /// [form] A code for the form to be used for printing the content.
  @override
  final CodeableConcept? form;

  /// [error] Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? _error;

  /// [error] Errors encountered during the processing of the request.
  @override
  List<CoverageEligibilityResponseError>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableListView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageEligibilityResponse(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, purpose: $purpose, purposeElement: $purposeElement, patient: $patient, event: $event, servicedDate: $servicedDate, servicedDateElement: $servicedDateElement, servicedPeriod: $servicedPeriod, created: $created, createdElement: $createdElement, requestor: $requestor, request: $request, outcome: $outcome, outcomeElement: $outcomeElement, disposition: $disposition, dispositionElement: $dispositionElement, insurer: $insurer, insurance: $insurance, preAuthRef: $preAuthRef, preAuthRefElement: $preAuthRefElement, form: $form, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality().equals(other._purpose, _purpose) &&
            const DeepCollectionEquality()
                .equals(other._purposeElement, _purposeElement) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            (identical(other.servicedDate, servicedDate) ||
                other.servicedDate == servicedDate) &&
            (identical(other.servicedDateElement, servicedDateElement) ||
                other.servicedDateElement == servicedDateElement) &&
            (identical(other.servicedPeriod, servicedPeriod) ||
                other.servicedPeriod == servicedPeriod) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.requestor, requestor) ||
                other.requestor == requestor) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.outcomeElement, outcomeElement) ||
                other.outcomeElement == outcomeElement) &&
            (identical(other.disposition, disposition) ||
                other.disposition == disposition) &&
            (identical(other.dispositionElement, dispositionElement) ||
                other.dispositionElement == dispositionElement) &&
            (identical(other.insurer, insurer) || other.insurer == insurer) &&
            const DeepCollectionEquality()
                .equals(other._insurance, _insurance) &&
            (identical(other.preAuthRef, preAuthRef) ||
                other.preAuthRef == preAuthRef) &&
            (identical(other.preAuthRefElement, preAuthRefElement) ||
                other.preAuthRefElement == preAuthRefElement) &&
            (identical(other.form, form) || other.form == form) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        const DeepCollectionEquality().hash(_purpose),
        const DeepCollectionEquality().hash(_purposeElement),
        patient,
        const DeepCollectionEquality().hash(_event),
        servicedDate,
        servicedDateElement,
        servicedPeriod,
        created,
        createdElement,
        requestor,
        request,
        outcome,
        outcomeElement,
        disposition,
        dispositionElement,
        insurer,
        const DeepCollectionEquality().hash(_insurance),
        preAuthRef,
        preAuthRefElement,
        form,
        const DeepCollectionEquality().hash(_error)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseImplCopyWith<_$CoverageEligibilityResponseImpl>
      get copyWith => __$$CoverageEligibilityResponseImplCopyWithImpl<
          _$CoverageEligibilityResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponse
    extends CoverageEligibilityResponse {
  const factory _CoverageEligibilityResponse(
          {@JsonKey(
              unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
          final R6ResourceType resourceType,
          final FhirId? id,
          final FhirMeta? meta,
          final FhirUri? implicitRules,
          @JsonKey(name: '_implicitRules') final Element? implicitRulesElement,
          final FhirCode? language,
          @JsonKey(name: '_language') final Element? languageElement,
          final Narrative? text,
          final List<Resource>? contained,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<Identifier>? identifier,
          final FhirCode? status,
          @JsonKey(name: '_status') final Element? statusElement,
          final List<FhirCode>? purpose,
          @JsonKey(name: '_purpose') final List<Element>? purposeElement,
          required final Reference patient,
          final List<CoverageEligibilityResponseEvent>? event,
          final FhirDate? servicedDate,
          @JsonKey(name: '_servicedDate') final Element? servicedDateElement,
          final Period? servicedPeriod,
          final FhirDateTime? created,
          @JsonKey(name: '_created') final Element? createdElement,
          final Reference? requestor,
          required final Reference request,
          final FhirCode? outcome,
          @JsonKey(name: '_outcome') final Element? outcomeElement,
          final String? disposition,
          @JsonKey(name: '_disposition') final Element? dispositionElement,
          required final Reference insurer,
          final List<CoverageEligibilityResponseInsurance>? insurance,
          final String? preAuthRef,
          @JsonKey(name: '_preAuthRef') final Element? preAuthRefElement,
          final CodeableConcept? form,
          final List<CoverageEligibilityResponseError>? error}) =
      _$CoverageEligibilityResponseImpl;
  const _CoverageEligibilityResponse._() : super._();

  factory _CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) =
      _$CoverageEligibilityResponseImpl.fromJson;

  @override

  /// [resourceType] This is a CoverageEligibilityResponse resource
  @JsonKey(unknownEnumValue: R6ResourceType.CoverageEligibilityResponse)
  R6ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [purpose] Code to specify whether requesting: prior authorization
  ///  requirements for some service categories or billing codes; benefits
  ///  for coverages specified or discovered; discovery and return of
  ///  coverages for the patient; and/or validation that the specified
  ///  coverage is in-force at the date/period specified or 'now' if not
  ///  specified.
  List<FhirCode>? get purpose;
  @override

  /// [purposeElement] ("_purpose") Extensions for purpose
  @JsonKey(name: '_purpose')
  List<Element>? get purposeElement;
  @override

  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  Reference get patient;
  @override

  /// [event] Information code for an event with a corresponding date or
  ///  period.
  List<CoverageEligibilityResponseEvent>? get event;
  @override

  /// [servicedDate] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  FhirDate? get servicedDate;
  @override

  /// [servicedDateElement] ("_servicedDate") Extensions for servicedDate
  @JsonKey(name: '_servicedDate')
  Element? get servicedDateElement;
  @override

  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  Period? get servicedPeriod;
  @override

  /// [created] The date this resource was created.
  FhirDateTime? get created;
  @override

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement;
  @override

  /// [requestor] The provider which is responsible for the request.
  Reference? get requestor;
  @override

  /// [request] Reference to the original request resource.
  Reference get request;
  @override

  /// [outcome] The outcome of the request processing.
  FhirCode? get outcome;
  @override

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @JsonKey(name: '_outcome')
  Element? get outcomeElement;
  @override

  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  String? get disposition;
  @override

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @JsonKey(name: '_disposition')
  Element? get dispositionElement;
  @override

  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  author of the response.
  Reference get insurer;
  @override

  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  List<CoverageEligibilityResponseInsurance>? get insurance;
  @override

  /// [preAuthRef] A reference from the Insurer to which these services
  ///  pertain to be used on further communication and as proof that the
  ///  request occurred.
  String? get preAuthRef;
  @override

  /// [preAuthRefElement] ("_preAuthRef") Extensions for preAuthRef
  @JsonKey(name: '_preAuthRef')
  Element? get preAuthRefElement;
  @override

  /// [form] A code for the form to be used for printing the content.
  CodeableConcept? get form;
  @override

  /// [error] Errors encountered during the processing of the request.
  List<CoverageEligibilityResponseError>? get error;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseImplCopyWith<_$CoverageEligibilityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponseEvent _$CoverageEligibilityResponseEventFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityResponseEvent.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponseEvent {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  FhirDateTime? get whenDateTime => throw _privateConstructorUsedError;

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @JsonKey(name: '_whenDateTime')
  Element? get whenDateTimeElement => throw _privateConstructorUsedError;

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  Period? get whenPeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseEventCopyWith<CoverageEligibilityResponseEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseEventCopyWith<$Res> {
  factory $CoverageEligibilityResponseEventCopyWith(
          CoverageEligibilityResponseEvent value,
          $Res Function(CoverageEligibilityResponseEvent) then) =
      _$CoverageEligibilityResponseEventCopyWithImpl<$Res,
          CoverageEligibilityResponseEvent>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') Element? whenDateTimeElement,
      Period? whenPeriod});

  $CodeableConceptCopyWith<$Res> get type;
  $PeriodCopyWith<$Res>? get whenPeriod;
}

/// @nodoc
class _$CoverageEligibilityResponseEventCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponseEvent>
    implements $CoverageEligibilityResponseEventCopyWith<$Res> {
  _$CoverageEligibilityResponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? whenDateTime = freezed,
    Object? whenDateTimeElement = freezed,
    Object? whenPeriod = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      whenDateTime: freezed == whenDateTime
          ? _value.whenDateTime
          : whenDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      whenDateTimeElement: freezed == whenDateTimeElement
          ? _value.whenDateTimeElement
          : whenDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      whenPeriod: freezed == whenPeriod
          ? _value.whenPeriod
          : whenPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get whenPeriod {
    if (_value.whenPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.whenPeriod!, (value) {
      return _then(_value.copyWith(whenPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseEventImplCopyWith<$Res>
    implements $CoverageEligibilityResponseEventCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseEventImplCopyWith(
          _$CoverageEligibilityResponseEventImpl value,
          $Res Function(_$CoverageEligibilityResponseEventImpl) then) =
      __$$CoverageEligibilityResponseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') Element? whenDateTimeElement,
      Period? whenPeriod});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $PeriodCopyWith<$Res>? get whenPeriod;
}

/// @nodoc
class __$$CoverageEligibilityResponseEventImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseEventCopyWithImpl<$Res,
        _$CoverageEligibilityResponseEventImpl>
    implements _$$CoverageEligibilityResponseEventImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseEventImplCopyWithImpl(
      _$CoverageEligibilityResponseEventImpl _value,
      $Res Function(_$CoverageEligibilityResponseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? whenDateTime = freezed,
    Object? whenDateTimeElement = freezed,
    Object? whenPeriod = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      whenDateTime: freezed == whenDateTime
          ? _value.whenDateTime
          : whenDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      whenDateTimeElement: freezed == whenDateTimeElement
          ? _value.whenDateTimeElement
          : whenDateTimeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      whenPeriod: freezed == whenPeriod
          ? _value.whenPeriod
          : whenPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseEventImpl
    extends _CoverageEligibilityResponseEvent {
  const _$CoverageEligibilityResponseEventImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.whenDateTime,
      @JsonKey(name: '_whenDateTime') this.whenDateTimeElement,
      this.whenPeriod})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityResponseEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseEventImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  @override
  final CodeableConcept type;

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  @override
  final FhirDateTime? whenDateTime;

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @override
  @JsonKey(name: '_whenDateTime')
  final Element? whenDateTimeElement;

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  @override
  final Period? whenPeriod;

  @override
  String toString() {
    return 'CoverageEligibilityResponseEvent(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, whenDateTime: $whenDateTime, whenDateTimeElement: $whenDateTimeElement, whenPeriod: $whenPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.whenDateTime, whenDateTime) ||
                other.whenDateTime == whenDateTime) &&
            (identical(other.whenDateTimeElement, whenDateTimeElement) ||
                other.whenDateTimeElement == whenDateTimeElement) &&
            (identical(other.whenPeriod, whenPeriod) ||
                other.whenPeriod == whenPeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      whenDateTime,
      whenDateTimeElement,
      whenPeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseEventImplCopyWith<
          _$CoverageEligibilityResponseEventImpl>
      get copyWith => __$$CoverageEligibilityResponseEventImplCopyWithImpl<
          _$CoverageEligibilityResponseEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseEventImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponseEvent
    extends CoverageEligibilityResponseEvent {
  const factory _CoverageEligibilityResponseEvent(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final FhirDateTime? whenDateTime,
      @JsonKey(name: '_whenDateTime') final Element? whenDateTimeElement,
      final Period? whenPeriod}) = _$CoverageEligibilityResponseEventImpl;
  const _CoverageEligibilityResponseEvent._() : super._();

  factory _CoverageEligibilityResponseEvent.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityResponseEventImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] A coded event such as when a service is expected or a card
  ///  printed.
  CodeableConcept get type;
  @override

  /// [whenDateTime] A date or period in the past or future indicating when
  ///  the event occurred or is expectd to occur.
  FhirDateTime? get whenDateTime;
  @override

  /// [whenDateTimeElement] ("_whenDateTime") Extensions for whenDateTime
  @JsonKey(name: '_whenDateTime')
  Element? get whenDateTimeElement;
  @override

  /// [whenPeriod] A date or period in the past or future indicating when the
  ///  event occurred or is expectd to occur.
  Period? get whenPeriod;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseEventImplCopyWith<
          _$CoverageEligibilityResponseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponseInsurance
    _$CoverageEligibilityResponseInsuranceFromJson(Map<String, dynamic> json) {
  return _CoverageEligibilityResponseInsurance.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponseInsurance {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  Reference get coverage => throw _privateConstructorUsedError;

  /// [inforce] Flag indicating if the coverage provided is inforce currently
  ///  if no service date(s) specified or for the whole duration of the
  ///  service dates.
  FhirBoolean? get inforce => throw _privateConstructorUsedError;

  /// [inforceElement] ("_inforce") Extensions for inforce
  @JsonKey(name: '_inforce')
  Element? get inforceElement => throw _privateConstructorUsedError;

  /// [benefitPeriod] The term of the benefits documented in this response.
  Period? get benefitPeriod => throw _privateConstructorUsedError;

  /// [item] Benefits and optionally current balances, and authorization
  ///  details by category or service.
  List<CoverageEligibilityResponseItem>? get item =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseInsuranceCopyWith<
          CoverageEligibilityResponseInsurance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseInsuranceCopyWith<$Res> {
  factory $CoverageEligibilityResponseInsuranceCopyWith(
          CoverageEligibilityResponseInsurance value,
          $Res Function(CoverageEligibilityResponseInsurance) then) =
      _$CoverageEligibilityResponseInsuranceCopyWithImpl<$Res,
          CoverageEligibilityResponseInsurance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference coverage,
      FhirBoolean? inforce,
      @JsonKey(name: '_inforce') Element? inforceElement,
      Period? benefitPeriod,
      List<CoverageEligibilityResponseItem>? item});

  $ReferenceCopyWith<$Res> get coverage;
  $PeriodCopyWith<$Res>? get benefitPeriod;
}

/// @nodoc
class _$CoverageEligibilityResponseInsuranceCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponseInsurance>
    implements $CoverageEligibilityResponseInsuranceCopyWith<$Res> {
  _$CoverageEligibilityResponseInsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? coverage = null,
    Object? inforce = freezed,
    Object? inforceElement = freezed,
    Object? benefitPeriod = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      inforce: freezed == inforce
          ? _value.inforce
          : inforce // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      inforceElement: freezed == inforceElement
          ? _value.inforceElement
          : inforceElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      benefitPeriod: freezed == benefitPeriod
          ? _value.benefitPeriod
          : benefitPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get coverage {
    return $ReferenceCopyWith<$Res>(_value.coverage, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get benefitPeriod {
    if (_value.benefitPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.benefitPeriod!, (value) {
      return _then(_value.copyWith(benefitPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseInsuranceImplCopyWith<$Res>
    implements $CoverageEligibilityResponseInsuranceCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseInsuranceImplCopyWith(
          _$CoverageEligibilityResponseInsuranceImpl value,
          $Res Function(_$CoverageEligibilityResponseInsuranceImpl) then) =
      __$$CoverageEligibilityResponseInsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference coverage,
      FhirBoolean? inforce,
      @JsonKey(name: '_inforce') Element? inforceElement,
      Period? benefitPeriod,
      List<CoverageEligibilityResponseItem>? item});

  @override
  $ReferenceCopyWith<$Res> get coverage;
  @override
  $PeriodCopyWith<$Res>? get benefitPeriod;
}

/// @nodoc
class __$$CoverageEligibilityResponseInsuranceImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseInsuranceCopyWithImpl<$Res,
        _$CoverageEligibilityResponseInsuranceImpl>
    implements _$$CoverageEligibilityResponseInsuranceImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseInsuranceImplCopyWithImpl(
      _$CoverageEligibilityResponseInsuranceImpl _value,
      $Res Function(_$CoverageEligibilityResponseInsuranceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? coverage = null,
    Object? inforce = freezed,
    Object? inforceElement = freezed,
    Object? benefitPeriod = freezed,
    Object? item = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseInsuranceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference,
      inforce: freezed == inforce
          ? _value.inforce
          : inforce // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      inforceElement: freezed == inforceElement
          ? _value.inforceElement
          : inforceElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      benefitPeriod: freezed == benefitPeriod
          ? _value.benefitPeriod
          : benefitPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseInsuranceImpl
    extends _CoverageEligibilityResponseInsurance {
  const _$CoverageEligibilityResponseInsuranceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.coverage,
      this.inforce,
      @JsonKey(name: '_inforce') this.inforceElement,
      this.benefitPeriod,
      final List<CoverageEligibilityResponseItem>? item})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _item = item,
        super._();

  factory _$CoverageEligibilityResponseInsuranceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseInsuranceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  @override
  final Reference coverage;

  /// [inforce] Flag indicating if the coverage provided is inforce currently
  ///  if no service date(s) specified or for the whole duration of the
  ///  service dates.
  @override
  final FhirBoolean? inforce;

  /// [inforceElement] ("_inforce") Extensions for inforce
  @override
  @JsonKey(name: '_inforce')
  final Element? inforceElement;

  /// [benefitPeriod] The term of the benefits documented in this response.
  @override
  final Period? benefitPeriod;

  /// [item] Benefits and optionally current balances, and authorization
  ///  details by category or service.
  final List<CoverageEligibilityResponseItem>? _item;

  /// [item] Benefits and optionally current balances, and authorization
  ///  details by category or service.
  @override
  List<CoverageEligibilityResponseItem>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageEligibilityResponseInsurance(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, coverage: $coverage, inforce: $inforce, inforceElement: $inforceElement, benefitPeriod: $benefitPeriod, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseInsuranceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.inforce, inforce) || other.inforce == inforce) &&
            (identical(other.inforceElement, inforceElement) ||
                other.inforceElement == inforceElement) &&
            (identical(other.benefitPeriod, benefitPeriod) ||
                other.benefitPeriod == benefitPeriod) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      coverage,
      inforce,
      inforceElement,
      benefitPeriod,
      const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseInsuranceImplCopyWith<
          _$CoverageEligibilityResponseInsuranceImpl>
      get copyWith => __$$CoverageEligibilityResponseInsuranceImplCopyWithImpl<
          _$CoverageEligibilityResponseInsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseInsuranceImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponseInsurance
    extends CoverageEligibilityResponseInsurance {
  const factory _CoverageEligibilityResponseInsurance(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final Reference coverage,
          final FhirBoolean? inforce,
          @JsonKey(name: '_inforce') final Element? inforceElement,
          final Period? benefitPeriod,
          final List<CoverageEligibilityResponseItem>? item}) =
      _$CoverageEligibilityResponseInsuranceImpl;
  const _CoverageEligibilityResponseInsurance._() : super._();

  factory _CoverageEligibilityResponseInsurance.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityResponseInsuranceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [coverage] Reference to the insurance card level information contained
  ///  in the Coverage resource. The coverage issuing insurer will use these
  ///  details to locate the patient's actual coverage within the insurer's
  ///  information system.
  Reference get coverage;
  @override

  /// [inforce] Flag indicating if the coverage provided is inforce currently
  ///  if no service date(s) specified or for the whole duration of the
  ///  service dates.
  FhirBoolean? get inforce;
  @override

  /// [inforceElement] ("_inforce") Extensions for inforce
  @JsonKey(name: '_inforce')
  Element? get inforceElement;
  @override

  /// [benefitPeriod] The term of the benefits documented in this response.
  Period? get benefitPeriod;
  @override

  /// [item] Benefits and optionally current balances, and authorization
  ///  details by category or service.
  List<CoverageEligibilityResponseItem>? get item;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseInsuranceImplCopyWith<
          _$CoverageEligibilityResponseInsuranceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponseItem _$CoverageEligibilityResponseItemFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityResponseItem.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponseItem {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category => throw _privateConstructorUsedError;

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  CodeableConcept? get productOrService => throw _privateConstructorUsedError;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier => throw _privateConstructorUsedError;

  /// [provider] The practitioner who is eligible for the provision of the
  ///  product or service.
  Reference? get provider => throw _privateConstructorUsedError;

  /// [excluded] True if the indicated class of service is excluded from the
  ///  plan, missing or False indicates the product or service is included in
  ///  the coverage.
  FhirBoolean? get excluded => throw _privateConstructorUsedError;

  /// [excludedElement] ("_excluded") Extensions for excluded
  @JsonKey(name: '_excluded')
  Element? get excludedElement => throw _privateConstructorUsedError;

  /// [name] A short name or tag for the benefit.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  /// [description] A richer description of the benefit or services covered.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement => throw _privateConstructorUsedError;

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  CodeableConcept? get network => throw _privateConstructorUsedError;

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  CodeableConcept? get unit => throw _privateConstructorUsedError;

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  CodeableConcept? get term => throw _privateConstructorUsedError;

  /// [benefit] Benefits used to date.
  List<CoverageEligibilityResponseBenefit>? get benefit =>
      throw _privateConstructorUsedError;

  /// [authorizationRequired] A boolean flag indicating whether a
  ///  preauthorization is required prior to actual service delivery.
  FhirBoolean? get authorizationRequired => throw _privateConstructorUsedError;

  /// [authorizationRequiredElement] ("_authorizationRequired") Extensions
  ///  for authorizationRequired
  @JsonKey(name: '_authorizationRequired')
  Element? get authorizationRequiredElement =>
      throw _privateConstructorUsedError;

  /// [authorizationSupporting] Codes or comments regarding information or
  ///  actions associated with the preauthorization.
  List<CodeableConcept>? get authorizationSupporting =>
      throw _privateConstructorUsedError;

  /// [authorizationUrl] A web location for obtaining requirements or
  ///  descriptive information regarding the preauthorization.
  FhirUri? get authorizationUrl => throw _privateConstructorUsedError;

  /// [authorizationUrlElement] ("_authorizationUrl") Extensions for
  ///  authorizationUrl
  @JsonKey(name: '_authorizationUrl')
  Element? get authorizationUrlElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseItemCopyWith<CoverageEligibilityResponseItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseItemCopyWith<$Res> {
  factory $CoverageEligibilityResponseItemCopyWith(
          CoverageEligibilityResponseItem value,
          $Res Function(CoverageEligibilityResponseItem) then) =
      _$CoverageEligibilityResponseItemCopyWithImpl<$Res,
          CoverageEligibilityResponseItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? category,
      CodeableConcept? productOrService,
      List<CodeableConcept>? modifier,
      Reference? provider,
      FhirBoolean? excluded,
      @JsonKey(name: '_excluded') Element? excludedElement,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      String? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      CodeableConcept? network,
      CodeableConcept? unit,
      CodeableConcept? term,
      List<CoverageEligibilityResponseBenefit>? benefit,
      FhirBoolean? authorizationRequired,
      @JsonKey(name: '_authorizationRequired')
      Element? authorizationRequiredElement,
      List<CodeableConcept>? authorizationSupporting,
      FhirUri? authorizationUrl,
      @JsonKey(name: '_authorizationUrl') Element? authorizationUrlElement});

  $CodeableConceptCopyWith<$Res>? get category;
  $CodeableConceptCopyWith<$Res>? get productOrService;
  $ReferenceCopyWith<$Res>? get provider;
  $CodeableConceptCopyWith<$Res>? get network;
  $CodeableConceptCopyWith<$Res>? get unit;
  $CodeableConceptCopyWith<$Res>? get term;
}

/// @nodoc
class _$CoverageEligibilityResponseItemCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponseItem>
    implements $CoverageEligibilityResponseItemCopyWith<$Res> {
  _$CoverageEligibilityResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = freezed,
    Object? productOrService = freezed,
    Object? modifier = freezed,
    Object? provider = freezed,
    Object? excluded = freezed,
    Object? excludedElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? network = freezed,
    Object? unit = freezed,
    Object? term = freezed,
    Object? benefit = freezed,
    Object? authorizationRequired = freezed,
    Object? authorizationRequiredElement = freezed,
    Object? authorizationSupporting = freezed,
    Object? authorizationUrl = freezed,
    Object? authorizationUrlElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productOrService: freezed == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modifier: freezed == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      excluded: freezed == excluded
          ? _value.excluded
          : excluded // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      excludedElement: freezed == excludedElement
          ? _value.excludedElement
          : excludedElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseBenefit>?,
      authorizationRequired: freezed == authorizationRequired
          ? _value.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      authorizationRequiredElement: freezed == authorizationRequiredElement
          ? _value.authorizationRequiredElement
          : authorizationRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      authorizationSupporting: freezed == authorizationSupporting
          ? _value.authorizationSupporting
          : authorizationSupporting // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      authorizationUrl: freezed == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      authorizationUrlElement: freezed == authorizationUrlElement
          ? _value.authorizationUrlElement
          : authorizationUrlElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get productOrService {
    if (_value.productOrService == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.productOrService!, (value) {
      return _then(_value.copyWith(productOrService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get network {
    if (_value.network == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.network!, (value) {
      return _then(_value.copyWith(network: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get term {
    if (_value.term == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.term!, (value) {
      return _then(_value.copyWith(term: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseItemImplCopyWith<$Res>
    implements $CoverageEligibilityResponseItemCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseItemImplCopyWith(
          _$CoverageEligibilityResponseItemImpl value,
          $Res Function(_$CoverageEligibilityResponseItemImpl) then) =
      __$$CoverageEligibilityResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? category,
      CodeableConcept? productOrService,
      List<CodeableConcept>? modifier,
      Reference? provider,
      FhirBoolean? excluded,
      @JsonKey(name: '_excluded') Element? excludedElement,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      String? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      CodeableConcept? network,
      CodeableConcept? unit,
      CodeableConcept? term,
      List<CoverageEligibilityResponseBenefit>? benefit,
      FhirBoolean? authorizationRequired,
      @JsonKey(name: '_authorizationRequired')
      Element? authorizationRequiredElement,
      List<CodeableConcept>? authorizationSupporting,
      FhirUri? authorizationUrl,
      @JsonKey(name: '_authorizationUrl') Element? authorizationUrlElement});

  @override
  $CodeableConceptCopyWith<$Res>? get category;
  @override
  $CodeableConceptCopyWith<$Res>? get productOrService;
  @override
  $ReferenceCopyWith<$Res>? get provider;
  @override
  $CodeableConceptCopyWith<$Res>? get network;
  @override
  $CodeableConceptCopyWith<$Res>? get unit;
  @override
  $CodeableConceptCopyWith<$Res>? get term;
}

/// @nodoc
class __$$CoverageEligibilityResponseItemImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseItemCopyWithImpl<$Res,
        _$CoverageEligibilityResponseItemImpl>
    implements _$$CoverageEligibilityResponseItemImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseItemImplCopyWithImpl(
      _$CoverageEligibilityResponseItemImpl _value,
      $Res Function(_$CoverageEligibilityResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? category = freezed,
    Object? productOrService = freezed,
    Object? modifier = freezed,
    Object? provider = freezed,
    Object? excluded = freezed,
    Object? excludedElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? network = freezed,
    Object? unit = freezed,
    Object? term = freezed,
    Object? benefit = freezed,
    Object? authorizationRequired = freezed,
    Object? authorizationRequiredElement = freezed,
    Object? authorizationSupporting = freezed,
    Object? authorizationUrl = freezed,
    Object? authorizationUrlElement = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      productOrService: freezed == productOrService
          ? _value.productOrService
          : productOrService // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modifier: freezed == modifier
          ? _value._modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      excluded: freezed == excluded
          ? _value.excluded
          : excluded // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      excludedElement: freezed == excludedElement
          ? _value.excludedElement
          : excludedElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      benefit: freezed == benefit
          ? _value._benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as List<CoverageEligibilityResponseBenefit>?,
      authorizationRequired: freezed == authorizationRequired
          ? _value.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      authorizationRequiredElement: freezed == authorizationRequiredElement
          ? _value.authorizationRequiredElement
          : authorizationRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      authorizationSupporting: freezed == authorizationSupporting
          ? _value._authorizationSupporting
          : authorizationSupporting // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      authorizationUrl: freezed == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      authorizationUrlElement: freezed == authorizationUrlElement
          ? _value.authorizationUrlElement
          : authorizationUrlElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseItemImpl
    extends _CoverageEligibilityResponseItem {
  const _$CoverageEligibilityResponseItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.category,
      this.productOrService,
      final List<CodeableConcept>? modifier,
      this.provider,
      this.excluded,
      @JsonKey(name: '_excluded') this.excludedElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.network,
      this.unit,
      this.term,
      final List<CoverageEligibilityResponseBenefit>? benefit,
      this.authorizationRequired,
      @JsonKey(name: '_authorizationRequired')
      this.authorizationRequiredElement,
      final List<CodeableConcept>? authorizationSupporting,
      this.authorizationUrl,
      @JsonKey(name: '_authorizationUrl') this.authorizationUrlElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _modifier = modifier,
        _benefit = benefit,
        _authorizationSupporting = authorizationSupporting,
        super._();

  factory _$CoverageEligibilityResponseItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseItemImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  @override
  final CodeableConcept? category;

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  @override
  final CodeableConcept? productOrService;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  final List<CodeableConcept>? _modifier;

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  @override
  List<CodeableConcept>? get modifier {
    final value = _modifier;
    if (value == null) return null;
    if (_modifier is EqualUnmodifiableListView) return _modifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [provider] The practitioner who is eligible for the provision of the
  ///  product or service.
  @override
  final Reference? provider;

  /// [excluded] True if the indicated class of service is excluded from the
  ///  plan, missing or False indicates the product or service is included in
  ///  the coverage.
  @override
  final FhirBoolean? excluded;

  /// [excludedElement] ("_excluded") Extensions for excluded
  @override
  @JsonKey(name: '_excluded')
  final Element? excludedElement;

  /// [name] A short name or tag for the benefit.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] A richer description of the benefit or services covered.
  @override
  final String? description;

  /// [descriptionElement] ("_description") Extensions for description
  @override
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  @override
  final CodeableConcept? network;

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  @override
  final CodeableConcept? unit;

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  @override
  final CodeableConcept? term;

  /// [benefit] Benefits used to date.
  final List<CoverageEligibilityResponseBenefit>? _benefit;

  /// [benefit] Benefits used to date.
  @override
  List<CoverageEligibilityResponseBenefit>? get benefit {
    final value = _benefit;
    if (value == null) return null;
    if (_benefit is EqualUnmodifiableListView) return _benefit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [authorizationRequired] A boolean flag indicating whether a
  ///  preauthorization is required prior to actual service delivery.
  @override
  final FhirBoolean? authorizationRequired;

  /// [authorizationRequiredElement] ("_authorizationRequired") Extensions
  ///  for authorizationRequired
  @override
  @JsonKey(name: '_authorizationRequired')
  final Element? authorizationRequiredElement;

  /// [authorizationSupporting] Codes or comments regarding information or
  ///  actions associated with the preauthorization.
  final List<CodeableConcept>? _authorizationSupporting;

  /// [authorizationSupporting] Codes or comments regarding information or
  ///  actions associated with the preauthorization.
  @override
  List<CodeableConcept>? get authorizationSupporting {
    final value = _authorizationSupporting;
    if (value == null) return null;
    if (_authorizationSupporting is EqualUnmodifiableListView)
      return _authorizationSupporting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [authorizationUrl] A web location for obtaining requirements or
  ///  descriptive information regarding the preauthorization.
  @override
  final FhirUri? authorizationUrl;

  /// [authorizationUrlElement] ("_authorizationUrl") Extensions for
  ///  authorizationUrl
  @override
  @JsonKey(name: '_authorizationUrl')
  final Element? authorizationUrlElement;

  @override
  String toString() {
    return 'CoverageEligibilityResponseItem(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, category: $category, productOrService: $productOrService, modifier: $modifier, provider: $provider, excluded: $excluded, excludedElement: $excludedElement, name: $name, nameElement: $nameElement, description: $description, descriptionElement: $descriptionElement, network: $network, unit: $unit, term: $term, benefit: $benefit, authorizationRequired: $authorizationRequired, authorizationRequiredElement: $authorizationRequiredElement, authorizationSupporting: $authorizationSupporting, authorizationUrl: $authorizationUrl, authorizationUrlElement: $authorizationUrlElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productOrService, productOrService) ||
                other.productOrService == productOrService) &&
            const DeepCollectionEquality().equals(other._modifier, _modifier) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.excluded, excluded) ||
                other.excluded == excluded) &&
            (identical(other.excludedElement, excludedElement) ||
                other.excludedElement == excludedElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.term, term) || other.term == term) &&
            const DeepCollectionEquality().equals(other._benefit, _benefit) &&
            (identical(other.authorizationRequired, authorizationRequired) ||
                other.authorizationRequired == authorizationRequired) &&
            (identical(other.authorizationRequiredElement,
                    authorizationRequiredElement) ||
                other.authorizationRequiredElement ==
                    authorizationRequiredElement) &&
            const DeepCollectionEquality().equals(
                other._authorizationSupporting, _authorizationSupporting) &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl) &&
            (identical(
                    other.authorizationUrlElement, authorizationUrlElement) ||
                other.authorizationUrlElement == authorizationUrlElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        category,
        productOrService,
        const DeepCollectionEquality().hash(_modifier),
        provider,
        excluded,
        excludedElement,
        name,
        nameElement,
        description,
        descriptionElement,
        network,
        unit,
        term,
        const DeepCollectionEquality().hash(_benefit),
        authorizationRequired,
        authorizationRequiredElement,
        const DeepCollectionEquality().hash(_authorizationSupporting),
        authorizationUrl,
        authorizationUrlElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseItemImplCopyWith<
          _$CoverageEligibilityResponseItemImpl>
      get copyWith => __$$CoverageEligibilityResponseItemImplCopyWithImpl<
          _$CoverageEligibilityResponseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseItemImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponseItem
    extends CoverageEligibilityResponseItem {
  const factory _CoverageEligibilityResponseItem(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? category,
          final CodeableConcept? productOrService,
          final List<CodeableConcept>? modifier,
          final Reference? provider,
          final FhirBoolean? excluded,
          @JsonKey(name: '_excluded') final Element? excludedElement,
          final String? name,
          @JsonKey(name: '_name') final Element? nameElement,
          final String? description,
          @JsonKey(name: '_description') final Element? descriptionElement,
          final CodeableConcept? network,
          final CodeableConcept? unit,
          final CodeableConcept? term,
          final List<CoverageEligibilityResponseBenefit>? benefit,
          final FhirBoolean? authorizationRequired,
          @JsonKey(name: '_authorizationRequired')
          final Element? authorizationRequiredElement,
          final List<CodeableConcept>? authorizationSupporting,
          final FhirUri? authorizationUrl,
          @JsonKey(name: '_authorizationUrl')
          final Element? authorizationUrlElement}) =
      _$CoverageEligibilityResponseItemImpl;
  const _CoverageEligibilityResponseItem._() : super._();

  factory _CoverageEligibilityResponseItem.fromJson(Map<String, dynamic> json) =
      _$CoverageEligibilityResponseItemImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  CodeableConcept? get category;
  @override

  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  CodeableConcept? get productOrService;
  @override

  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  List<CodeableConcept>? get modifier;
  @override

  /// [provider] The practitioner who is eligible for the provision of the
  ///  product or service.
  Reference? get provider;
  @override

  /// [excluded] True if the indicated class of service is excluded from the
  ///  plan, missing or False indicates the product or service is included in
  ///  the coverage.
  FhirBoolean? get excluded;
  @override

  /// [excludedElement] ("_excluded") Extensions for excluded
  @JsonKey(name: '_excluded')
  Element? get excludedElement;
  @override

  /// [name] A short name or tag for the benefit.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override

  /// [description] A richer description of the benefit or services covered.
  String? get description;
  @override

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement;
  @override

  /// [network] Is a flag to indicate whether the benefits refer to
  ///  in-network providers or out-of-network providers.
  CodeableConcept? get network;
  @override

  /// [unit] Indicates if the benefits apply to an individual or to the
  ///  family.
  CodeableConcept? get unit;
  @override

  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  CodeableConcept? get term;
  @override

  /// [benefit] Benefits used to date.
  List<CoverageEligibilityResponseBenefit>? get benefit;
  @override

  /// [authorizationRequired] A boolean flag indicating whether a
  ///  preauthorization is required prior to actual service delivery.
  FhirBoolean? get authorizationRequired;
  @override

  /// [authorizationRequiredElement] ("_authorizationRequired") Extensions
  ///  for authorizationRequired
  @JsonKey(name: '_authorizationRequired')
  Element? get authorizationRequiredElement;
  @override

  /// [authorizationSupporting] Codes or comments regarding information or
  ///  actions associated with the preauthorization.
  List<CodeableConcept>? get authorizationSupporting;
  @override

  /// [authorizationUrl] A web location for obtaining requirements or
  ///  descriptive information regarding the preauthorization.
  FhirUri? get authorizationUrl;
  @override

  /// [authorizationUrlElement] ("_authorizationUrl") Extensions for
  ///  authorizationUrl
  @JsonKey(name: '_authorizationUrl')
  Element? get authorizationUrlElement;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseItemImplCopyWith<
          _$CoverageEligibilityResponseItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponseBenefit _$CoverageEligibilityResponseBenefitFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityResponseBenefit.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponseBenefit {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] Classification of benefit being provided.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [allowedUnsignedInt] The quantity of the benefit which is permitted
  ///  under the coverage.
  FhirUnsignedInt? get allowedUnsignedInt => throw _privateConstructorUsedError;

  /// [allowedUnsignedIntElement] ("_allowedUnsignedInt") Extensions for
  ///  allowedUnsignedInt
  @JsonKey(name: '_allowedUnsignedInt')
  Element? get allowedUnsignedIntElement => throw _privateConstructorUsedError;

  /// [allowedString] The quantity of the benefit which is permitted under
  ///  the coverage.
  String? get allowedString => throw _privateConstructorUsedError;

  /// [allowedStringElement] ("_allowedString") Extensions for allowedString
  @JsonKey(name: '_allowedString')
  Element? get allowedStringElement => throw _privateConstructorUsedError;

  /// [allowedMoney] The quantity of the benefit which is permitted under the
  ///  coverage.
  Money? get allowedMoney => throw _privateConstructorUsedError;

  /// [usedUnsignedInt] The quantity of the benefit which have been consumed
  ///  to date.
  FhirUnsignedInt? get usedUnsignedInt => throw _privateConstructorUsedError;

  /// [usedUnsignedIntElement] ("_usedUnsignedInt") Extensions for
  ///  usedUnsignedInt
  @JsonKey(name: '_usedUnsignedInt')
  Element? get usedUnsignedIntElement => throw _privateConstructorUsedError;

  /// [usedString] The quantity of the benefit which have been consumed to
  ///  date.
  String? get usedString => throw _privateConstructorUsedError;

  /// [usedStringElement] ("_usedString") Extensions for usedString
  @JsonKey(name: '_usedString')
  Element? get usedStringElement => throw _privateConstructorUsedError;

  /// [usedMoney] The quantity of the benefit which have been consumed to
  ///  date.
  Money? get usedMoney => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseBenefitCopyWith<
          CoverageEligibilityResponseBenefit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseBenefitCopyWith<$Res> {
  factory $CoverageEligibilityResponseBenefitCopyWith(
          CoverageEligibilityResponseBenefit value,
          $Res Function(CoverageEligibilityResponseBenefit) then) =
      _$CoverageEligibilityResponseBenefitCopyWithImpl<$Res,
          CoverageEligibilityResponseBenefit>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirUnsignedInt? allowedUnsignedInt,
      @JsonKey(name: '_allowedUnsignedInt') Element? allowedUnsignedIntElement,
      String? allowedString,
      @JsonKey(name: '_allowedString') Element? allowedStringElement,
      Money? allowedMoney,
      FhirUnsignedInt? usedUnsignedInt,
      @JsonKey(name: '_usedUnsignedInt') Element? usedUnsignedIntElement,
      String? usedString,
      @JsonKey(name: '_usedString') Element? usedStringElement,
      Money? usedMoney});

  $CodeableConceptCopyWith<$Res> get type;
  $MoneyCopyWith<$Res>? get allowedMoney;
  $MoneyCopyWith<$Res>? get usedMoney;
}

/// @nodoc
class _$CoverageEligibilityResponseBenefitCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponseBenefit>
    implements $CoverageEligibilityResponseBenefitCopyWith<$Res> {
  _$CoverageEligibilityResponseBenefitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? allowedUnsignedInt = freezed,
    Object? allowedUnsignedIntElement = freezed,
    Object? allowedString = freezed,
    Object? allowedStringElement = freezed,
    Object? allowedMoney = freezed,
    Object? usedUnsignedInt = freezed,
    Object? usedUnsignedIntElement = freezed,
    Object? usedString = freezed,
    Object? usedStringElement = freezed,
    Object? usedMoney = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      allowedUnsignedInt: freezed == allowedUnsignedInt
          ? _value.allowedUnsignedInt
          : allowedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      allowedUnsignedIntElement: freezed == allowedUnsignedIntElement
          ? _value.allowedUnsignedIntElement
          : allowedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      allowedString: freezed == allowedString
          ? _value.allowedString
          : allowedString // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedStringElement: freezed == allowedStringElement
          ? _value.allowedStringElement
          : allowedStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      allowedMoney: freezed == allowedMoney
          ? _value.allowedMoney
          : allowedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      usedUnsignedInt: freezed == usedUnsignedInt
          ? _value.usedUnsignedInt
          : usedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      usedUnsignedIntElement: freezed == usedUnsignedIntElement
          ? _value.usedUnsignedIntElement
          : usedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      usedString: freezed == usedString
          ? _value.usedString
          : usedString // ignore: cast_nullable_to_non_nullable
              as String?,
      usedStringElement: freezed == usedStringElement
          ? _value.usedStringElement
          : usedStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      usedMoney: freezed == usedMoney
          ? _value.usedMoney
          : usedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get allowedMoney {
    if (_value.allowedMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.allowedMoney!, (value) {
      return _then(_value.copyWith(allowedMoney: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get usedMoney {
    if (_value.usedMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.usedMoney!, (value) {
      return _then(_value.copyWith(usedMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseBenefitImplCopyWith<$Res>
    implements $CoverageEligibilityResponseBenefitCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseBenefitImplCopyWith(
          _$CoverageEligibilityResponseBenefitImpl value,
          $Res Function(_$CoverageEligibilityResponseBenefitImpl) then) =
      __$$CoverageEligibilityResponseBenefitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirUnsignedInt? allowedUnsignedInt,
      @JsonKey(name: '_allowedUnsignedInt') Element? allowedUnsignedIntElement,
      String? allowedString,
      @JsonKey(name: '_allowedString') Element? allowedStringElement,
      Money? allowedMoney,
      FhirUnsignedInt? usedUnsignedInt,
      @JsonKey(name: '_usedUnsignedInt') Element? usedUnsignedIntElement,
      String? usedString,
      @JsonKey(name: '_usedString') Element? usedStringElement,
      Money? usedMoney});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $MoneyCopyWith<$Res>? get allowedMoney;
  @override
  $MoneyCopyWith<$Res>? get usedMoney;
}

/// @nodoc
class __$$CoverageEligibilityResponseBenefitImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseBenefitCopyWithImpl<$Res,
        _$CoverageEligibilityResponseBenefitImpl>
    implements _$$CoverageEligibilityResponseBenefitImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseBenefitImplCopyWithImpl(
      _$CoverageEligibilityResponseBenefitImpl _value,
      $Res Function(_$CoverageEligibilityResponseBenefitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? allowedUnsignedInt = freezed,
    Object? allowedUnsignedIntElement = freezed,
    Object? allowedString = freezed,
    Object? allowedStringElement = freezed,
    Object? allowedMoney = freezed,
    Object? usedUnsignedInt = freezed,
    Object? usedUnsignedIntElement = freezed,
    Object? usedString = freezed,
    Object? usedStringElement = freezed,
    Object? usedMoney = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseBenefitImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      allowedUnsignedInt: freezed == allowedUnsignedInt
          ? _value.allowedUnsignedInt
          : allowedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      allowedUnsignedIntElement: freezed == allowedUnsignedIntElement
          ? _value.allowedUnsignedIntElement
          : allowedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      allowedString: freezed == allowedString
          ? _value.allowedString
          : allowedString // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedStringElement: freezed == allowedStringElement
          ? _value.allowedStringElement
          : allowedStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      allowedMoney: freezed == allowedMoney
          ? _value.allowedMoney
          : allowedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      usedUnsignedInt: freezed == usedUnsignedInt
          ? _value.usedUnsignedInt
          : usedUnsignedInt // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      usedUnsignedIntElement: freezed == usedUnsignedIntElement
          ? _value.usedUnsignedIntElement
          : usedUnsignedIntElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      usedString: freezed == usedString
          ? _value.usedString
          : usedString // ignore: cast_nullable_to_non_nullable
              as String?,
      usedStringElement: freezed == usedStringElement
          ? _value.usedStringElement
          : usedStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      usedMoney: freezed == usedMoney
          ? _value.usedMoney
          : usedMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseBenefitImpl
    extends _CoverageEligibilityResponseBenefit {
  const _$CoverageEligibilityResponseBenefitImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.allowedUnsignedInt,
      @JsonKey(name: '_allowedUnsignedInt') this.allowedUnsignedIntElement,
      this.allowedString,
      @JsonKey(name: '_allowedString') this.allowedStringElement,
      this.allowedMoney,
      this.usedUnsignedInt,
      @JsonKey(name: '_usedUnsignedInt') this.usedUnsignedIntElement,
      this.usedString,
      @JsonKey(name: '_usedString') this.usedStringElement,
      this.usedMoney})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CoverageEligibilityResponseBenefitImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseBenefitImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] Classification of benefit being provided.
  @override
  final CodeableConcept type;

  /// [allowedUnsignedInt] The quantity of the benefit which is permitted
  ///  under the coverage.
  @override
  final FhirUnsignedInt? allowedUnsignedInt;

  /// [allowedUnsignedIntElement] ("_allowedUnsignedInt") Extensions for
  ///  allowedUnsignedInt
  @override
  @JsonKey(name: '_allowedUnsignedInt')
  final Element? allowedUnsignedIntElement;

  /// [allowedString] The quantity of the benefit which is permitted under
  ///  the coverage.
  @override
  final String? allowedString;

  /// [allowedStringElement] ("_allowedString") Extensions for allowedString
  @override
  @JsonKey(name: '_allowedString')
  final Element? allowedStringElement;

  /// [allowedMoney] The quantity of the benefit which is permitted under the
  ///  coverage.
  @override
  final Money? allowedMoney;

  /// [usedUnsignedInt] The quantity of the benefit which have been consumed
  ///  to date.
  @override
  final FhirUnsignedInt? usedUnsignedInt;

  /// [usedUnsignedIntElement] ("_usedUnsignedInt") Extensions for
  ///  usedUnsignedInt
  @override
  @JsonKey(name: '_usedUnsignedInt')
  final Element? usedUnsignedIntElement;

  /// [usedString] The quantity of the benefit which have been consumed to
  ///  date.
  @override
  final String? usedString;

  /// [usedStringElement] ("_usedString") Extensions for usedString
  @override
  @JsonKey(name: '_usedString')
  final Element? usedStringElement;

  /// [usedMoney] The quantity of the benefit which have been consumed to
  ///  date.
  @override
  final Money? usedMoney;

  @override
  String toString() {
    return 'CoverageEligibilityResponseBenefit(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, allowedUnsignedInt: $allowedUnsignedInt, allowedUnsignedIntElement: $allowedUnsignedIntElement, allowedString: $allowedString, allowedStringElement: $allowedStringElement, allowedMoney: $allowedMoney, usedUnsignedInt: $usedUnsignedInt, usedUnsignedIntElement: $usedUnsignedIntElement, usedString: $usedString, usedStringElement: $usedStringElement, usedMoney: $usedMoney)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseBenefitImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.allowedUnsignedInt, allowedUnsignedInt) ||
                other.allowedUnsignedInt == allowedUnsignedInt) &&
            (identical(other.allowedUnsignedIntElement,
                    allowedUnsignedIntElement) ||
                other.allowedUnsignedIntElement == allowedUnsignedIntElement) &&
            (identical(other.allowedString, allowedString) ||
                other.allowedString == allowedString) &&
            (identical(other.allowedStringElement, allowedStringElement) ||
                other.allowedStringElement == allowedStringElement) &&
            (identical(other.allowedMoney, allowedMoney) ||
                other.allowedMoney == allowedMoney) &&
            (identical(other.usedUnsignedInt, usedUnsignedInt) ||
                other.usedUnsignedInt == usedUnsignedInt) &&
            (identical(other.usedUnsignedIntElement, usedUnsignedIntElement) ||
                other.usedUnsignedIntElement == usedUnsignedIntElement) &&
            (identical(other.usedString, usedString) ||
                other.usedString == usedString) &&
            (identical(other.usedStringElement, usedStringElement) ||
                other.usedStringElement == usedStringElement) &&
            (identical(other.usedMoney, usedMoney) ||
                other.usedMoney == usedMoney));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      allowedUnsignedInt,
      allowedUnsignedIntElement,
      allowedString,
      allowedStringElement,
      allowedMoney,
      usedUnsignedInt,
      usedUnsignedIntElement,
      usedString,
      usedStringElement,
      usedMoney);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseBenefitImplCopyWith<
          _$CoverageEligibilityResponseBenefitImpl>
      get copyWith => __$$CoverageEligibilityResponseBenefitImplCopyWithImpl<
          _$CoverageEligibilityResponseBenefitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseBenefitImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponseBenefit
    extends CoverageEligibilityResponseBenefit {
  const factory _CoverageEligibilityResponseBenefit(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final FhirUnsignedInt? allowedUnsignedInt,
      @JsonKey(name: '_allowedUnsignedInt')
      final Element? allowedUnsignedIntElement,
      final String? allowedString,
      @JsonKey(name: '_allowedString') final Element? allowedStringElement,
      final Money? allowedMoney,
      final FhirUnsignedInt? usedUnsignedInt,
      @JsonKey(name: '_usedUnsignedInt') final Element? usedUnsignedIntElement,
      final String? usedString,
      @JsonKey(name: '_usedString') final Element? usedStringElement,
      final Money? usedMoney}) = _$CoverageEligibilityResponseBenefitImpl;
  const _CoverageEligibilityResponseBenefit._() : super._();

  factory _CoverageEligibilityResponseBenefit.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityResponseBenefitImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] Classification of benefit being provided.
  CodeableConcept get type;
  @override

  /// [allowedUnsignedInt] The quantity of the benefit which is permitted
  ///  under the coverage.
  FhirUnsignedInt? get allowedUnsignedInt;
  @override

  /// [allowedUnsignedIntElement] ("_allowedUnsignedInt") Extensions for
  ///  allowedUnsignedInt
  @JsonKey(name: '_allowedUnsignedInt')
  Element? get allowedUnsignedIntElement;
  @override

  /// [allowedString] The quantity of the benefit which is permitted under
  ///  the coverage.
  String? get allowedString;
  @override

  /// [allowedStringElement] ("_allowedString") Extensions for allowedString
  @JsonKey(name: '_allowedString')
  Element? get allowedStringElement;
  @override

  /// [allowedMoney] The quantity of the benefit which is permitted under the
  ///  coverage.
  Money? get allowedMoney;
  @override

  /// [usedUnsignedInt] The quantity of the benefit which have been consumed
  ///  to date.
  FhirUnsignedInt? get usedUnsignedInt;
  @override

  /// [usedUnsignedIntElement] ("_usedUnsignedInt") Extensions for
  ///  usedUnsignedInt
  @JsonKey(name: '_usedUnsignedInt')
  Element? get usedUnsignedIntElement;
  @override

  /// [usedString] The quantity of the benefit which have been consumed to
  ///  date.
  String? get usedString;
  @override

  /// [usedStringElement] ("_usedString") Extensions for usedString
  @JsonKey(name: '_usedString')
  Element? get usedStringElement;
  @override

  /// [usedMoney] The quantity of the benefit which have been consumed to
  ///  date.
  Money? get usedMoney;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseBenefitImplCopyWith<
          _$CoverageEligibilityResponseBenefitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoverageEligibilityResponseError _$CoverageEligibilityResponseErrorFromJson(
    Map<String, dynamic> json) {
  return _CoverageEligibilityResponseError.fromJson(json);
}

/// @nodoc
mixin _$CoverageEligibilityResponseError {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] An error code,from a specified code system, which details why
  ///  the eligibility check could not be performed.
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
  ///  limited to element names, repetition indicators and the default child
  ///  accessor that identifies one of the elements in the resource that
  ///  caused this issue to be raised.
  List<String>? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] ("_expression") Extensions for expression
  @JsonKey(name: '_expression')
  List<Element>? get expressionElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageEligibilityResponseErrorCopyWith<CoverageEligibilityResponseError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageEligibilityResponseErrorCopyWith<$Res> {
  factory $CoverageEligibilityResponseErrorCopyWith(
          CoverageEligibilityResponseError value,
          $Res Function(CoverageEligibilityResponseError) then) =
      _$CoverageEligibilityResponseErrorCopyWithImpl<$Res,
          CoverageEligibilityResponseError>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      List<String>? expression,
      @JsonKey(name: '_expression') List<Element>? expressionElement});

  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class _$CoverageEligibilityResponseErrorCopyWithImpl<$Res,
        $Val extends CoverageEligibilityResponseError>
    implements $CoverageEligibilityResponseErrorCopyWith<$Res> {
  _$CoverageEligibilityResponseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? expression = freezed,
    Object? expressionElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoverageEligibilityResponseErrorImplCopyWith<$Res>
    implements $CoverageEligibilityResponseErrorCopyWith<$Res> {
  factory _$$CoverageEligibilityResponseErrorImplCopyWith(
          _$CoverageEligibilityResponseErrorImpl value,
          $Res Function(_$CoverageEligibilityResponseErrorImpl) then) =
      __$$CoverageEligibilityResponseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      List<String>? expression,
      @JsonKey(name: '_expression') List<Element>? expressionElement});

  @override
  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class __$$CoverageEligibilityResponseErrorImplCopyWithImpl<$Res>
    extends _$CoverageEligibilityResponseErrorCopyWithImpl<$Res,
        _$CoverageEligibilityResponseErrorImpl>
    implements _$$CoverageEligibilityResponseErrorImplCopyWith<$Res> {
  __$$CoverageEligibilityResponseErrorImplCopyWithImpl(
      _$CoverageEligibilityResponseErrorImpl _value,
      $Res Function(_$CoverageEligibilityResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? expression = freezed,
    Object? expressionElement = freezed,
  }) {
    return _then(_$CoverageEligibilityResponseErrorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      expression: freezed == expression
          ? _value._expression
          : expression // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expressionElement: freezed == expressionElement
          ? _value._expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoverageEligibilityResponseErrorImpl
    extends _CoverageEligibilityResponseError {
  const _$CoverageEligibilityResponseErrorImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      final List<String>? expression,
      @JsonKey(name: '_expression') final List<Element>? expressionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _expression = expression,
        _expressionElement = expressionElement,
        super._();

  factory _$CoverageEligibilityResponseErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CoverageEligibilityResponseErrorImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] An error code,from a specified code system, which details why
  ///  the eligibility check could not be performed.
  @override
  final CodeableConcept code;

  /// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
  ///  limited to element names, repetition indicators and the default child
  ///  accessor that identifies one of the elements in the resource that
  ///  caused this issue to be raised.
  final List<String>? _expression;

  /// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
  ///  limited to element names, repetition indicators and the default child
  ///  accessor that identifies one of the elements in the resource that
  ///  caused this issue to be raised.
  @override
  List<String>? get expression {
    final value = _expression;
    if (value == null) return null;
    if (_expression is EqualUnmodifiableListView) return _expression;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [expressionElement] ("_expression") Extensions for expression
  final List<Element>? _expressionElement;

  /// [expressionElement] ("_expression") Extensions for expression
  @override
  @JsonKey(name: '_expression')
  List<Element>? get expressionElement {
    final value = _expressionElement;
    if (value == null) return null;
    if (_expressionElement is EqualUnmodifiableListView)
      return _expressionElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverageEligibilityResponseError(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, expression: $expression, expressionElement: $expressionElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverageEligibilityResponseErrorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._expression, _expression) &&
            const DeepCollectionEquality()
                .equals(other._expressionElement, _expressionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      const DeepCollectionEquality().hash(_expression),
      const DeepCollectionEquality().hash(_expressionElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverageEligibilityResponseErrorImplCopyWith<
          _$CoverageEligibilityResponseErrorImpl>
      get copyWith => __$$CoverageEligibilityResponseErrorImplCopyWithImpl<
          _$CoverageEligibilityResponseErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverageEligibilityResponseErrorImplToJson(
      this,
    );
  }
}

abstract class _CoverageEligibilityResponseError
    extends CoverageEligibilityResponseError {
  const factory _CoverageEligibilityResponseError(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept code,
          final List<String>? expression,
          @JsonKey(name: '_expression')
          final List<Element>? expressionElement}) =
      _$CoverageEligibilityResponseErrorImpl;
  const _CoverageEligibilityResponseError._() : super._();

  factory _CoverageEligibilityResponseError.fromJson(
          Map<String, dynamic> json) =
      _$CoverageEligibilityResponseErrorImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the element and that
  ///  modifies the understanding of the element in which it is contained
  ///  and/or the understanding of the containing element's descendants.
  ///  Usually modifier elements provide negation or qualification. To make
  ///  the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements
  ///  that SHALL be met as part of the definition of the extension.
  ///  Applications processing a resource are required to check for modifier
  ///  extensions.Modifier extensions SHALL NOT change the meaning of any
  ///  elements on Resource or DomainResource (including cannot change the
  ///  meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] An error code,from a specified code system, which details why
  ///  the eligibility check could not be performed.
  CodeableConcept get code;
  @override

  /// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
  ///  limited to element names, repetition indicators and the default child
  ///  accessor that identifies one of the elements in the resource that
  ///  caused this issue to be raised.
  List<String>? get expression;
  @override

  /// [expressionElement] ("_expression") Extensions for expression
  @JsonKey(name: '_expression')
  List<Element>? get expressionElement;
  @override
  @JsonKey(ignore: true)
  _$$CoverageEligibilityResponseErrorImplCopyWith<
          _$CoverageEligibilityResponseErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EnrollmentRequest _$EnrollmentRequestFromJson(Map<String, dynamic> json) {
  return _EnrollmentRequest.fromJson(json);
}

/// @nodoc
mixin _$EnrollmentRequest {
  /// [resourceType] This is a EnrollmentRequest resource
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
  R6ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] The Response business identifier.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [created] The date when this resource was created.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement => throw _privateConstructorUsedError;

  /// [insurer] The Insurer who is target  of the request.
  Reference? get insurer => throw _privateConstructorUsedError;

  /// [provider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  Reference? get provider => throw _privateConstructorUsedError;

  /// [candidate] Patient Resource.
  Reference? get candidate => throw _privateConstructorUsedError;

  /// [coverage] Reference to the program or plan identification, underwriter
  ///  or payor.
  Reference? get coverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrollmentRequestCopyWith<EnrollmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollmentRequestCopyWith<$Res> {
  factory $EnrollmentRequestCopyWith(
          EnrollmentRequest value, $Res Function(EnrollmentRequest) then) =
      _$EnrollmentRequestCopyWithImpl<$Res, EnrollmentRequest>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? insurer,
      Reference? provider,
      Reference? candidate,
      Reference? coverage});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get insurer;
  $ReferenceCopyWith<$Res>? get provider;
  $ReferenceCopyWith<$Res>? get candidate;
  $ReferenceCopyWith<$Res>? get coverage;
}

/// @nodoc
class _$EnrollmentRequestCopyWithImpl<$Res, $Val extends EnrollmentRequest>
    implements $EnrollmentRequestCopyWith<$Res> {
  _$EnrollmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? insurer = freezed,
    Object? provider = freezed,
    Object? candidate = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      insurer: freezed == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      candidate: freezed == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as Reference?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get insurer {
    if (_value.insurer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.insurer!, (value) {
      return _then(_value.copyWith(insurer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get candidate {
    if (_value.candidate == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.candidate!, (value) {
      return _then(_value.copyWith(candidate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get coverage {
    if (_value.coverage == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.coverage!, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnrollmentRequestImplCopyWith<$Res>
    implements $EnrollmentRequestCopyWith<$Res> {
  factory _$$EnrollmentRequestImplCopyWith(_$EnrollmentRequestImpl value,
          $Res Function(_$EnrollmentRequestImpl) then) =
      __$$EnrollmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? insurer,
      Reference? provider,
      Reference? candidate,
      Reference? coverage});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get insurer;
  @override
  $ReferenceCopyWith<$Res>? get provider;
  @override
  $ReferenceCopyWith<$Res>? get candidate;
  @override
  $ReferenceCopyWith<$Res>? get coverage;
}

/// @nodoc
class __$$EnrollmentRequestImplCopyWithImpl<$Res>
    extends _$EnrollmentRequestCopyWithImpl<$Res, _$EnrollmentRequestImpl>
    implements _$$EnrollmentRequestImplCopyWith<$Res> {
  __$$EnrollmentRequestImplCopyWithImpl(_$EnrollmentRequestImpl _value,
      $Res Function(_$EnrollmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? insurer = freezed,
    Object? provider = freezed,
    Object? candidate = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_$EnrollmentRequestImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      insurer: freezed == insurer
          ? _value.insurer
          : insurer // ignore: cast_nullable_to_non_nullable
              as Reference?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as Reference?,
      candidate: freezed == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as Reference?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollmentRequestImpl extends _EnrollmentRequest {
  const _$EnrollmentRequestImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
      this.resourceType = R6ResourceType.EnrollmentRequest,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      this.insurer,
      this.provider,
      this.candidate,
      this.coverage})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$EnrollmentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollmentRequestImplFromJson(json);

  /// [resourceType] This is a EnrollmentRequest resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
  final R6ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  @override
  final FhirId? id;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] ("_language") Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] The Response business identifier.
  final List<Identifier>? _identifier;

  /// [identifier] The Response business identifier.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [created] The date when this resource was created.
  @override
  final FhirDateTime? created;

  /// [createdElement] ("_created") Extensions for created
  @override
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [insurer] The Insurer who is target  of the request.
  @override
  final Reference? insurer;

  /// [provider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  @override
  final Reference? provider;

  /// [candidate] Patient Resource.
  @override
  final Reference? candidate;

  /// [coverage] Reference to the program or plan identification, underwriter
  ///  or payor.
  @override
  final Reference? coverage;

  @override
  String toString() {
    return 'EnrollmentRequest(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, created: $created, createdElement: $createdElement, insurer: $insurer, provider: $provider, candidate: $candidate, coverage: $coverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollmentRequestImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.insurer, insurer) || other.insurer == insurer) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.candidate, candidate) ||
                other.candidate == candidate) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        created,
        createdElement,
        insurer,
        provider,
        candidate,
        coverage
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollmentRequestImplCopyWith<_$EnrollmentRequestImpl> get copyWith =>
      __$$EnrollmentRequestImplCopyWithImpl<_$EnrollmentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollmentRequestImplToJson(
      this,
    );
  }
}

abstract class _EnrollmentRequest extends EnrollmentRequest {
  const factory _EnrollmentRequest(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
      final R6ResourceType resourceType,
      final FhirId? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') final Element? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final Element? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirCode? status,
      @JsonKey(name: '_status') final Element? statusElement,
      final FhirDateTime? created,
      @JsonKey(name: '_created') final Element? createdElement,
      final Reference? insurer,
      final Reference? provider,
      final Reference? candidate,
      final Reference? coverage}) = _$EnrollmentRequestImpl;
  const _EnrollmentRequest._() : super._();

  factory _EnrollmentRequest.fromJson(Map<String, dynamic> json) =
      _$EnrollmentRequestImpl.fromJson;

  @override

  /// [resourceType] This is a EnrollmentRequest resource
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentRequest)
  R6ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] The Response business identifier.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [created] The date when this resource was created.
  FhirDateTime? get created;
  @override

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement;
  @override

  /// [insurer] The Insurer who is target  of the request.
  Reference? get insurer;
  @override

  /// [provider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  Reference? get provider;
  @override

  /// [candidate] Patient Resource.
  Reference? get candidate;
  @override

  /// [coverage] Reference to the program or plan identification, underwriter
  ///  or payor.
  Reference? get coverage;
  @override
  @JsonKey(ignore: true)
  _$$EnrollmentRequestImplCopyWith<_$EnrollmentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnrollmentResponse _$EnrollmentResponseFromJson(Map<String, dynamic> json) {
  return _EnrollmentResponse.fromJson(json);
}

/// @nodoc
mixin _$EnrollmentResponse {
  /// [resourceType] This is a EnrollmentResponse resource
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
  R6ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement => throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] The Response business identifier.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of the resource instance.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [request] Original request resource reference.
  Reference? get request => throw _privateConstructorUsedError;

  /// [outcome] Processing status: error, complete.
  FhirCode? get outcome => throw _privateConstructorUsedError;

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @JsonKey(name: '_outcome')
  Element? get outcomeElement => throw _privateConstructorUsedError;

  /// [disposition] A description of the status of the adjudication.
  String? get disposition => throw _privateConstructorUsedError;

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @JsonKey(name: '_disposition')
  Element? get dispositionElement => throw _privateConstructorUsedError;

  /// [created] The date when the enclosed suite of services were performed
  ///  or completed.
  FhirDateTime? get created => throw _privateConstructorUsedError;

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement => throw _privateConstructorUsedError;

  /// [organization] The Insurer who produced this adjudicated response.
  Reference? get organization => throw _privateConstructorUsedError;

  /// [requestProvider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  Reference? get requestProvider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrollmentResponseCopyWith<EnrollmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollmentResponseCopyWith<$Res> {
  factory $EnrollmentResponseCopyWith(
          EnrollmentResponse value, $Res Function(EnrollmentResponse) then) =
      _$EnrollmentResponseCopyWithImpl<$Res, EnrollmentResponse>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      Reference? request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') Element? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') Element? dispositionElement,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? organization,
      Reference? requestProvider});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get request;
  $ReferenceCopyWith<$Res>? get organization;
  $ReferenceCopyWith<$Res>? get requestProvider;
}

/// @nodoc
class _$EnrollmentResponseCopyWithImpl<$Res, $Val extends EnrollmentResponse>
    implements $EnrollmentResponseCopyWith<$Res> {
  _$EnrollmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? request = freezed,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? organization = freezed,
    Object? requestProvider = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      requestProvider: freezed == requestProvider
          ? _value.requestProvider
          : requestProvider // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get requestProvider {
    if (_value.requestProvider == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.requestProvider!, (value) {
      return _then(_value.copyWith(requestProvider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnrollmentResponseImplCopyWith<$Res>
    implements $EnrollmentResponseCopyWith<$Res> {
  factory _$$EnrollmentResponseImplCopyWith(_$EnrollmentResponseImpl value,
          $Res Function(_$EnrollmentResponseImpl) then) =
      __$$EnrollmentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
      R6ResourceType resourceType,
      FhirId? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') Element? statusElement,
      Reference? request,
      FhirCode? outcome,
      @JsonKey(name: '_outcome') Element? outcomeElement,
      String? disposition,
      @JsonKey(name: '_disposition') Element? dispositionElement,
      FhirDateTime? created,
      @JsonKey(name: '_created') Element? createdElement,
      Reference? organization,
      Reference? requestProvider});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get request;
  @override
  $ReferenceCopyWith<$Res>? get organization;
  @override
  $ReferenceCopyWith<$Res>? get requestProvider;
}

/// @nodoc
class __$$EnrollmentResponseImplCopyWithImpl<$Res>
    extends _$EnrollmentResponseCopyWithImpl<$Res, _$EnrollmentResponseImpl>
    implements _$$EnrollmentResponseImplCopyWith<$Res> {
  __$$EnrollmentResponseImplCopyWithImpl(_$EnrollmentResponseImpl _value,
      $Res Function(_$EnrollmentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? request = freezed,
    Object? outcome = freezed,
    Object? outcomeElement = freezed,
    Object? disposition = freezed,
    Object? dispositionElement = freezed,
    Object? created = freezed,
    Object? createdElement = freezed,
    Object? organization = freezed,
    Object? requestProvider = freezed,
  }) {
    return _then(_$EnrollmentResponseImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R6ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Reference?,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      outcomeElement: freezed == outcomeElement
          ? _value.outcomeElement
          : outcomeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      disposition: freezed == disposition
          ? _value.disposition
          : disposition // ignore: cast_nullable_to_non_nullable
              as String?,
      dispositionElement: freezed == dispositionElement
          ? _value.dispositionElement
          : dispositionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdElement: freezed == createdElement
          ? _value.createdElement
          : createdElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      requestProvider: freezed == requestProvider
          ? _value.requestProvider
          : requestProvider // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollmentResponseImpl extends _EnrollmentResponse {
  const _$EnrollmentResponseImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
      this.resourceType = R6ResourceType.EnrollmentResponse,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.request,
      this.outcome,
      @JsonKey(name: '_outcome') this.outcomeElement,
      this.disposition,
      @JsonKey(name: '_disposition') this.dispositionElement,
      this.created,
      @JsonKey(name: '_created') this.createdElement,
      this.organization,
      this.requestProvider})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$EnrollmentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollmentResponseImplFromJson(json);

  /// [resourceType] This is a EnrollmentResponse resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
  final R6ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  @override
  final FhirId? id;

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final Element? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] ("_language") Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] The Response business identifier.
  final List<Identifier>? _identifier;

  /// [identifier] The Response business identifier.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of the resource instance.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [request] Original request resource reference.
  @override
  final Reference? request;

  /// [outcome] Processing status: error, complete.
  @override
  final FhirCode? outcome;

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @override
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] A description of the status of the adjudication.
  @override
  final String? disposition;

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @override
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [created] The date when the enclosed suite of services were performed
  ///  or completed.
  @override
  final FhirDateTime? created;

  /// [createdElement] ("_created") Extensions for created
  @override
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [organization] The Insurer who produced this adjudicated response.
  @override
  final Reference? organization;

  /// [requestProvider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  @override
  final Reference? requestProvider;

  @override
  String toString() {
    return 'EnrollmentResponse(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, request: $request, outcome: $outcome, outcomeElement: $outcomeElement, disposition: $disposition, dispositionElement: $dispositionElement, created: $created, createdElement: $createdElement, organization: $organization, requestProvider: $requestProvider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollmentResponseImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.outcomeElement, outcomeElement) ||
                other.outcomeElement == outcomeElement) &&
            (identical(other.disposition, disposition) ||
                other.disposition == disposition) &&
            (identical(other.dispositionElement, dispositionElement) ||
                other.dispositionElement == dispositionElement) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.createdElement, createdElement) ||
                other.createdElement == createdElement) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.requestProvider, requestProvider) ||
                other.requestProvider == requestProvider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        status,
        statusElement,
        request,
        outcome,
        outcomeElement,
        disposition,
        dispositionElement,
        created,
        createdElement,
        organization,
        requestProvider
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollmentResponseImplCopyWith<_$EnrollmentResponseImpl> get copyWith =>
      __$$EnrollmentResponseImplCopyWithImpl<_$EnrollmentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollmentResponseImplToJson(
      this,
    );
  }
}

abstract class _EnrollmentResponse extends EnrollmentResponse {
  const factory _EnrollmentResponse(
      {@JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
      final R6ResourceType resourceType,
      final FhirId? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') final Element? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final Element? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final FhirCode? status,
      @JsonKey(name: '_status') final Element? statusElement,
      final Reference? request,
      final FhirCode? outcome,
      @JsonKey(name: '_outcome') final Element? outcomeElement,
      final String? disposition,
      @JsonKey(name: '_disposition') final Element? dispositionElement,
      final FhirDateTime? created,
      @JsonKey(name: '_created') final Element? createdElement,
      final Reference? organization,
      final Reference? requestProvider}) = _$EnrollmentResponseImpl;
  const _EnrollmentResponse._() : super._();

  factory _EnrollmentResponse.fromJson(Map<String, dynamic> json) =
      _$EnrollmentResponseImpl.fromJson;

  @override

  /// [resourceType] This is a EnrollmentResponse resource
  @JsonKey(unknownEnumValue: R6ResourceType.EnrollmentResponse)
  R6ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the
  ///  resource. Once assigned, this value never changes.
  FhirId? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  ///  maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when
  ///  the resource was constructed, and which must be understood when
  ///  processing the content. Often, this is a reference to an
  ///  implementation guide that defines the special rules along with other
  ///  profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  Element? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] ("_language") Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the
  ///  resource and can be used to represent the content of the resource to a
  ///  human. The narrative need not encode all the structured data, but is
  ///  required to contain sufficient detail to make it "clinically safe" for
  ///  a human to just read the narrative. Resource definitions may define
  ///  what content should be represented in the narrative to ensure clinical
  ///  safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  ///  from the resource that contains them - they cannot be identified
  ///  independently, nor can they have their own independent transaction
  ///  scope. This is allowed to be a Parameters resource if and only if it
  ///  is referenced by a resource that provides context/meaning.
  List<Resource>? get contained;
  @override

  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the resource.
  ///  To make the use of extensions safe and managable, there is a strict
  ///  set of governance applied to the definition and use of extensions.
  ///  Though any implementer can define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information
  ///  that is not part of the basic definition of the resource and that
  ///  modifies the understanding of the element that contains it and/or the
  ///  understanding of the containing element's descendants. Usually
  ///  modifier elements provide negation or qualification. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any
  ///  implementer is allowed to define an extension, there is a set of
  ///  requirements that SHALL be met as part of the definition of the
  ///  extension. Applications processing a resource are required to check
  ///  for modifier extensions.Modifier extensions SHALL NOT change the
  ///  meaning of any elements on Resource or DomainResource (including
  ///  cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] The Response business identifier.
  List<Identifier>? get identifier;
  @override

  /// [status] The status of the resource instance.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [request] Original request resource reference.
  Reference? get request;
  @override

  /// [outcome] Processing status: error, complete.
  FhirCode? get outcome;
  @override

  /// [outcomeElement] ("_outcome") Extensions for outcome
  @JsonKey(name: '_outcome')
  Element? get outcomeElement;
  @override

  /// [disposition] A description of the status of the adjudication.
  String? get disposition;
  @override

  /// [dispositionElement] ("_disposition") Extensions for disposition
  @JsonKey(name: '_disposition')
  Element? get dispositionElement;
  @override

  /// [created] The date when the enclosed suite of services were performed
  ///  or completed.
  FhirDateTime? get created;
  @override

  /// [createdElement] ("_created") Extensions for created
  @JsonKey(name: '_created')
  Element? get createdElement;
  @override

  /// [organization] The Insurer who produced this adjudicated response.
  Reference? get organization;
  @override

  /// [requestProvider] The practitioner who is responsible for the services
  ///  rendered to the patient.
  Reference? get requestProvider;
  @override
  @JsonKey(ignore: true)
  _$$EnrollmentResponseImplCopyWith<_$EnrollmentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
