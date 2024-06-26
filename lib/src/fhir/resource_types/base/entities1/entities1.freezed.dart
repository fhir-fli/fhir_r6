// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FhirEndpoint _$FhirEndpointFromJson(Map<String, dynamic> json) {
  return _FhirEndpoint.fromJson(json);
}

/// @nodoc
mixin _$FhirEndpoint {
  /// [resourceType] This is a FhirEndpoint resource
  @JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the endpoint across multiple disparate systems.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The endpoint status represents whether the endpoint can
  ///  currently be used for connections or why it can't be used.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [connectionType] A coded value that represents the technical details of
  ///  the usage of this endpoint, such as what WSDLs should be used in what
  ///  way. (e.g. XDS.b/DICOM/cds-hook).
  List<CodeableConcept> get connectionType =>
      throw _privateConstructorUsedError;

  /// [name] A friendly name that this endpoint can be referred to with.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  /// [description] The description of the endpoint and what it is for
  ///  (typically used as supplemental information in an endpoint directory
  ///  describing its usage/purpose).
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement => throw _privateConstructorUsedError;

  /// [environmentType] The type of environment(s) exposed at this endpoint
  ///  (dev, prod, test, etc.).
  List<CodeableConcept>? get environmentType =>
      throw _privateConstructorUsedError;

  /// [managingOrganization] The organization that provides technical
  ///  management services for this endpoint.  This would be the organization
  ///  that acts as the public help desk for when the endpoint is not
  ///  functioning.  It does NOT necessarily represent the organization who
  ///  is the steward of data being provided/accepted by the endpoint.
  Reference? get managingOrganization => throw _privateConstructorUsedError;

  /// [contact] Contact details for a human to contact about the endpoint.
  ///  The primary use of this for system administrator troubleshooting.
  List<ContactPoint>? get contact => throw _privateConstructorUsedError;

  /// [period] The interval during which the endpoint is expected to be
  ///  operational.
  Period? get period => throw _privateConstructorUsedError;

  /// [availability] The times the endpoint is expected to be available,
  ///  including transient downtimes and any exceptions.
  Availability? get availability => throw _privateConstructorUsedError;

  /// [payload] The set of payloads that are provided/available at this
  ///  endpoint.
  List<EndpointPayload>? get payload => throw _privateConstructorUsedError;

  /// [address] The uri that describes the actual end-point to connect to.
  FhirUrl? get address => throw _privateConstructorUsedError;

  /// [addressElement] ("_address") Extensions for address
  @JsonKey(name: '_address')
  Element? get addressElement => throw _privateConstructorUsedError;

  /// [header] Additional headers / information to send as part of the
  ///  notification.
  List<String>? get header => throw _privateConstructorUsedError;

  /// [headerElement] ("_header") Extensions for header
  @JsonKey(name: '_header')
  List<Element>? get headerElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirEndpointCopyWith<FhirEndpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirEndpointCopyWith<$Res> {
  factory $FhirEndpointCopyWith(
          FhirEndpoint value, $Res Function(FhirEndpoint) then) =
      _$FhirEndpointCopyWithImpl<$Res, FhirEndpoint>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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
      List<CodeableConcept> connectionType,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      String? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      List<CodeableConcept>? environmentType,
      Reference? managingOrganization,
      List<ContactPoint>? contact,
      Period? period,
      Availability? availability,
      List<EndpointPayload>? payload,
      FhirUrl? address,
      @JsonKey(name: '_address') Element? addressElement,
      List<String>? header,
      @JsonKey(name: '_header') List<Element>? headerElement});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get managingOrganization;
  $PeriodCopyWith<$Res>? get period;
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class _$FhirEndpointCopyWithImpl<$Res, $Val extends FhirEndpoint>
    implements $FhirEndpointCopyWith<$Res> {
  _$FhirEndpointCopyWithImpl(this._value, this._then);

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
    Object? connectionType = null,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? environmentType = freezed,
    Object? managingOrganization = freezed,
    Object? contact = freezed,
    Object? period = freezed,
    Object? availability = freezed,
    Object? payload = freezed,
    Object? address = freezed,
    Object? addressElement = freezed,
    Object? header = freezed,
    Object? headerElement = freezed,
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
      connectionType: null == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>,
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
      environmentType: freezed == environmentType
          ? _value.environmentType
          : environmentType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<EndpointPayload>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      addressElement: freezed == addressElement
          ? _value.addressElement
          : addressElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      headerElement: freezed == headerElement
          ? _value.headerElement
          : headerElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
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
  $ReferenceCopyWith<$Res>? get managingOrganization {
    if (_value.managingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.managingOrganization!, (value) {
      return _then(_value.copyWith(managingOrganization: value) as $Val);
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
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FhirEndpointImplCopyWith<$Res>
    implements $FhirEndpointCopyWith<$Res> {
  factory _$$FhirEndpointImplCopyWith(
          _$FhirEndpointImpl value, $Res Function(_$FhirEndpointImpl) then) =
      __$$FhirEndpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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
      List<CodeableConcept> connectionType,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      String? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      List<CodeableConcept>? environmentType,
      Reference? managingOrganization,
      List<ContactPoint>? contact,
      Period? period,
      Availability? availability,
      List<EndpointPayload>? payload,
      FhirUrl? address,
      @JsonKey(name: '_address') Element? addressElement,
      List<String>? header,
      @JsonKey(name: '_header') List<Element>? headerElement});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get managingOrganization;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$FhirEndpointImplCopyWithImpl<$Res>
    extends _$FhirEndpointCopyWithImpl<$Res, _$FhirEndpointImpl>
    implements _$$FhirEndpointImplCopyWith<$Res> {
  __$$FhirEndpointImplCopyWithImpl(
      _$FhirEndpointImpl _value, $Res Function(_$FhirEndpointImpl) _then)
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
    Object? connectionType = null,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? environmentType = freezed,
    Object? managingOrganization = freezed,
    Object? contact = freezed,
    Object? period = freezed,
    Object? availability = freezed,
    Object? payload = freezed,
    Object? address = freezed,
    Object? addressElement = freezed,
    Object? header = freezed,
    Object? headerElement = freezed,
  }) {
    return _then(_$FhirEndpointImpl(
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
      connectionType: null == connectionType
          ? _value._connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>,
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
      environmentType: freezed == environmentType
          ? _value._environmentType
          : environmentType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      payload: freezed == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<EndpointPayload>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      addressElement: freezed == addressElement
          ? _value.addressElement
          : addressElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      headerElement: freezed == headerElement
          ? _value._headerElement
          : headerElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirEndpointImpl extends _FhirEndpoint {
  const _$FhirEndpointImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
      this.resourceType = R6ResourceType.Endpoint,
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
      required final List<CodeableConcept> connectionType,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<CodeableConcept>? environmentType,
      this.managingOrganization,
      final List<ContactPoint>? contact,
      this.period,
      this.availability,
      final List<EndpointPayload>? payload,
      this.address,
      @JsonKey(name: '_address') this.addressElement,
      final List<String>? header,
      @JsonKey(name: '_header') final List<Element>? headerElement})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _connectionType = connectionType,
        _environmentType = environmentType,
        _contact = contact,
        _payload = payload,
        _header = header,
        _headerElement = headerElement,
        super._();

  factory _$FhirEndpointImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirEndpointImplFromJson(json);

  /// [resourceType] This is a FhirEndpoint resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the endpoint across multiple disparate systems.
  final List<Identifier>? _identifier;

  /// [identifier] Identifier for the organization that is used to identify
  ///  the endpoint across multiple disparate systems.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The endpoint status represents whether the endpoint can
  ///  currently be used for connections or why it can't be used.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [connectionType] A coded value that represents the technical details of
  ///  the usage of this endpoint, such as what WSDLs should be used in what
  ///  way. (e.g. XDS.b/DICOM/cds-hook).
  final List<CodeableConcept> _connectionType;

  /// [connectionType] A coded value that represents the technical details of
  ///  the usage of this endpoint, such as what WSDLs should be used in what
  ///  way. (e.g. XDS.b/DICOM/cds-hook).
  @override
  List<CodeableConcept> get connectionType {
    if (_connectionType is EqualUnmodifiableListView) return _connectionType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectionType);
  }

  /// [name] A friendly name that this endpoint can be referred to with.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] The description of the endpoint and what it is for
  ///  (typically used as supplemental information in an endpoint directory
  ///  describing its usage/purpose).
  @override
  final String? description;

  /// [descriptionElement] ("_description") Extensions for description
  @override
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [environmentType] The type of environment(s) exposed at this endpoint
  ///  (dev, prod, test, etc.).
  final List<CodeableConcept>? _environmentType;

  /// [environmentType] The type of environment(s) exposed at this endpoint
  ///  (dev, prod, test, etc.).
  @override
  List<CodeableConcept>? get environmentType {
    final value = _environmentType;
    if (value == null) return null;
    if (_environmentType is EqualUnmodifiableListView) return _environmentType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [managingOrganization] The organization that provides technical
  ///  management services for this endpoint.  This would be the organization
  ///  that acts as the public help desk for when the endpoint is not
  ///  functioning.  It does NOT necessarily represent the organization who
  ///  is the steward of data being provided/accepted by the endpoint.
  @override
  final Reference? managingOrganization;

  /// [contact] Contact details for a human to contact about the endpoint.
  ///  The primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? _contact;

  /// [contact] Contact details for a human to contact about the endpoint.
  ///  The primary use of this for system administrator troubleshooting.
  @override
  List<ContactPoint>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] The interval during which the endpoint is expected to be
  ///  operational.
  @override
  final Period? period;

  /// [availability] The times the endpoint is expected to be available,
  ///  including transient downtimes and any exceptions.
  @override
  final Availability? availability;

  /// [payload] The set of payloads that are provided/available at this
  ///  endpoint.
  final List<EndpointPayload>? _payload;

  /// [payload] The set of payloads that are provided/available at this
  ///  endpoint.
  @override
  List<EndpointPayload>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [address] The uri that describes the actual end-point to connect to.
  @override
  final FhirUrl? address;

  /// [addressElement] ("_address") Extensions for address
  @override
  @JsonKey(name: '_address')
  final Element? addressElement;

  /// [header] Additional headers / information to send as part of the
  ///  notification.
  final List<String>? _header;

  /// [header] Additional headers / information to send as part of the
  ///  notification.
  @override
  List<String>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableListView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [headerElement] ("_header") Extensions for header
  final List<Element>? _headerElement;

  /// [headerElement] ("_header") Extensions for header
  @override
  @JsonKey(name: '_header')
  List<Element>? get headerElement {
    final value = _headerElement;
    if (value == null) return null;
    if (_headerElement is EqualUnmodifiableListView) return _headerElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FhirEndpoint(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, connectionType: $connectionType, name: $name, nameElement: $nameElement, description: $description, descriptionElement: $descriptionElement, environmentType: $environmentType, managingOrganization: $managingOrganization, contact: $contact, period: $period, availability: $availability, payload: $payload, address: $address, addressElement: $addressElement, header: $header, headerElement: $headerElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirEndpointImpl &&
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
            const DeepCollectionEquality()
                .equals(other._connectionType, _connectionType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._environmentType, _environmentType) &&
            (identical(other.managingOrganization, managingOrganization) ||
                other.managingOrganization == managingOrganization) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressElement, addressElement) ||
                other.addressElement == addressElement) &&
            const DeepCollectionEquality().equals(other._header, _header) &&
            const DeepCollectionEquality()
                .equals(other._headerElement, _headerElement));
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
        const DeepCollectionEquality().hash(_connectionType),
        name,
        nameElement,
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_environmentType),
        managingOrganization,
        const DeepCollectionEquality().hash(_contact),
        period,
        availability,
        const DeepCollectionEquality().hash(_payload),
        address,
        addressElement,
        const DeepCollectionEquality().hash(_header),
        const DeepCollectionEquality().hash(_headerElement)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirEndpointImplCopyWith<_$FhirEndpointImpl> get copyWith =>
      __$$FhirEndpointImplCopyWithImpl<_$FhirEndpointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirEndpointImplToJson(
      this,
    );
  }
}

abstract class _FhirEndpoint extends FhirEndpoint {
  const factory _FhirEndpoint(
          {@JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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
          required final List<CodeableConcept> connectionType,
          final String? name,
          @JsonKey(name: '_name') final Element? nameElement,
          final String? description,
          @JsonKey(name: '_description') final Element? descriptionElement,
          final List<CodeableConcept>? environmentType,
          final Reference? managingOrganization,
          final List<ContactPoint>? contact,
          final Period? period,
          final Availability? availability,
          final List<EndpointPayload>? payload,
          final FhirUrl? address,
          @JsonKey(name: '_address') final Element? addressElement,
          final List<String>? header,
          @JsonKey(name: '_header') final List<Element>? headerElement}) =
      _$FhirEndpointImpl;
  const _FhirEndpoint._() : super._();

  factory _FhirEndpoint.fromJson(Map<String, dynamic> json) =
      _$FhirEndpointImpl.fromJson;

  @override

  /// [resourceType] This is a FhirEndpoint resource
  @JsonKey(unknownEnumValue: R6ResourceType.Endpoint)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the endpoint across multiple disparate systems.
  List<Identifier>? get identifier;
  @override

  /// [status] The endpoint status represents whether the endpoint can
  ///  currently be used for connections or why it can't be used.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [connectionType] A coded value that represents the technical details of
  ///  the usage of this endpoint, such as what WSDLs should be used in what
  ///  way. (e.g. XDS.b/DICOM/cds-hook).
  List<CodeableConcept> get connectionType;
  @override

  /// [name] A friendly name that this endpoint can be referred to with.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override

  /// [description] The description of the endpoint and what it is for
  ///  (typically used as supplemental information in an endpoint directory
  ///  describing its usage/purpose).
  String? get description;
  @override

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement;
  @override

  /// [environmentType] The type of environment(s) exposed at this endpoint
  ///  (dev, prod, test, etc.).
  List<CodeableConcept>? get environmentType;
  @override

  /// [managingOrganization] The organization that provides technical
  ///  management services for this endpoint.  This would be the organization
  ///  that acts as the public help desk for when the endpoint is not
  ///  functioning.  It does NOT necessarily represent the organization who
  ///  is the steward of data being provided/accepted by the endpoint.
  Reference? get managingOrganization;
  @override

  /// [contact] Contact details for a human to contact about the endpoint.
  ///  The primary use of this for system administrator troubleshooting.
  List<ContactPoint>? get contact;
  @override

  /// [period] The interval during which the endpoint is expected to be
  ///  operational.
  Period? get period;
  @override

  /// [availability] The times the endpoint is expected to be available,
  ///  including transient downtimes and any exceptions.
  Availability? get availability;
  @override

  /// [payload] The set of payloads that are provided/available at this
  ///  endpoint.
  List<EndpointPayload>? get payload;
  @override

  /// [address] The uri that describes the actual end-point to connect to.
  FhirUrl? get address;
  @override

  /// [addressElement] ("_address") Extensions for address
  @JsonKey(name: '_address')
  Element? get addressElement;
  @override

  /// [header] Additional headers / information to send as part of the
  ///  notification.
  List<String>? get header;
  @override

  /// [headerElement] ("_header") Extensions for header
  @JsonKey(name: '_header')
  List<Element>? get headerElement;
  @override
  @JsonKey(ignore: true)
  _$$FhirEndpointImplCopyWith<_$FhirEndpointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EndpointPayload _$EndpointPayloadFromJson(Map<String, dynamic> json) {
  return _EndpointPayload.fromJson(json);
}

/// @nodoc
mixin _$EndpointPayload {
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

  /// [type] The payload type describes the acceptable content that can be
  ///  communicated on the endpoint.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [mimeType] The mime type to send the payload in - e.g.
  ///  application/fhir+xml, application/fhir+json. If the mime type is not
  ///  specified, then the sender could send any content (including no
  ///  content depending on the connectionType).
  List<FhirCode>? get mimeType => throw _privateConstructorUsedError;

  /// [mimeTypeElement] ("_mimeType") Extensions for mimeType
  @JsonKey(name: '_mimeType')
  List<Element>? get mimeTypeElement => throw _privateConstructorUsedError;

  /// [profileCanonical] The FHIR profile that is expected at this endpoint.
  ///  It describes the resources that are handled, or even simply which
  ///  resource types -e.g. Vital Sign Observations or QuestionnaireResponse.
  /// The `profileUri` may be used when a FHIR Structure Definition is not
  ///  available/appropriate.
  List<FhirCanonical>? get profileCanonical =>
      throw _privateConstructorUsedError;

  /// [profileCanonicalElement] ("_profileCanonical") Extensions for
  ///  profileCanonical
  @JsonKey(name: '_profileCanonical')
  List<Element>? get profileCanonicalElement =>
      throw _privateConstructorUsedError;

  /// [profileUri] The profile (as a uri) that is expected at this endpoint
  ///  when not represented using a FHIR profile.
  /// e.g. CDA Template ID expressed as an OID (in the Uri).
  List<FhirUri>? get profileUri => throw _privateConstructorUsedError;

  /// [profileUriElement] ("_profileUri") Extensions for profileUri
  @JsonKey(name: '_profileUri')
  List<Element>? get profileUriElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndpointPayloadCopyWith<EndpointPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndpointPayloadCopyWith<$Res> {
  factory $EndpointPayloadCopyWith(
          EndpointPayload value, $Res Function(EndpointPayload) then) =
      _$EndpointPayloadCopyWithImpl<$Res, EndpointPayload>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? type,
      List<FhirCode>? mimeType,
      @JsonKey(name: '_mimeType') List<Element>? mimeTypeElement,
      List<FhirCanonical>? profileCanonical,
      @JsonKey(name: '_profileCanonical')
      List<Element>? profileCanonicalElement,
      List<FhirUri>? profileUri,
      @JsonKey(name: '_profileUri') List<Element>? profileUriElement});
}

/// @nodoc
class _$EndpointPayloadCopyWithImpl<$Res, $Val extends EndpointPayload>
    implements $EndpointPayloadCopyWith<$Res> {
  _$EndpointPayloadCopyWithImpl(this._value, this._then);

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
    Object? mimeType = freezed,
    Object? mimeTypeElement = freezed,
    Object? profileCanonical = freezed,
    Object? profileCanonicalElement = freezed,
    Object? profileUri = freezed,
    Object? profileUriElement = freezed,
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
              as List<CodeableConcept>?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      mimeTypeElement: freezed == mimeTypeElement
          ? _value.mimeTypeElement
          : mimeTypeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      profileCanonical: freezed == profileCanonical
          ? _value.profileCanonical
          : profileCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      profileCanonicalElement: freezed == profileCanonicalElement
          ? _value.profileCanonicalElement
          : profileCanonicalElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      profileUri: freezed == profileUri
          ? _value.profileUri
          : profileUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      profileUriElement: freezed == profileUriElement
          ? _value.profileUriElement
          : profileUriElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EndpointPayloadImplCopyWith<$Res>
    implements $EndpointPayloadCopyWith<$Res> {
  factory _$$EndpointPayloadImplCopyWith(_$EndpointPayloadImpl value,
          $Res Function(_$EndpointPayloadImpl) then) =
      __$$EndpointPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? type,
      List<FhirCode>? mimeType,
      @JsonKey(name: '_mimeType') List<Element>? mimeTypeElement,
      List<FhirCanonical>? profileCanonical,
      @JsonKey(name: '_profileCanonical')
      List<Element>? profileCanonicalElement,
      List<FhirUri>? profileUri,
      @JsonKey(name: '_profileUri') List<Element>? profileUriElement});
}

/// @nodoc
class __$$EndpointPayloadImplCopyWithImpl<$Res>
    extends _$EndpointPayloadCopyWithImpl<$Res, _$EndpointPayloadImpl>
    implements _$$EndpointPayloadImplCopyWith<$Res> {
  __$$EndpointPayloadImplCopyWithImpl(
      _$EndpointPayloadImpl _value, $Res Function(_$EndpointPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? mimeType = freezed,
    Object? mimeTypeElement = freezed,
    Object? profileCanonical = freezed,
    Object? profileCanonicalElement = freezed,
    Object? profileUri = freezed,
    Object? profileUriElement = freezed,
  }) {
    return _then(_$EndpointPayloadImpl(
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
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      mimeType: freezed == mimeType
          ? _value._mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      mimeTypeElement: freezed == mimeTypeElement
          ? _value._mimeTypeElement
          : mimeTypeElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      profileCanonical: freezed == profileCanonical
          ? _value._profileCanonical
          : profileCanonical // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      profileCanonicalElement: freezed == profileCanonicalElement
          ? _value._profileCanonicalElement
          : profileCanonicalElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      profileUri: freezed == profileUri
          ? _value._profileUri
          : profileUri // ignore: cast_nullable_to_non_nullable
              as List<FhirUri>?,
      profileUriElement: freezed == profileUriElement
          ? _value._profileUriElement
          : profileUriElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndpointPayloadImpl extends _EndpointPayload {
  const _$EndpointPayloadImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? type,
      final List<FhirCode>? mimeType,
      @JsonKey(name: '_mimeType') final List<Element>? mimeTypeElement,
      final List<FhirCanonical>? profileCanonical,
      @JsonKey(name: '_profileCanonical')
      final List<Element>? profileCanonicalElement,
      final List<FhirUri>? profileUri,
      @JsonKey(name: '_profileUri') final List<Element>? profileUriElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _type = type,
        _mimeType = mimeType,
        _mimeTypeElement = mimeTypeElement,
        _profileCanonical = profileCanonical,
        _profileCanonicalElement = profileCanonicalElement,
        _profileUri = profileUri,
        _profileUriElement = profileUriElement,
        super._();

  factory _$EndpointPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$EndpointPayloadImplFromJson(json);

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

  /// [type] The payload type describes the acceptable content that can be
  ///  communicated on the endpoint.
  final List<CodeableConcept>? _type;

  /// [type] The payload type describes the acceptable content that can be
  ///  communicated on the endpoint.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [mimeType] The mime type to send the payload in - e.g.
  ///  application/fhir+xml, application/fhir+json. If the mime type is not
  ///  specified, then the sender could send any content (including no
  ///  content depending on the connectionType).
  final List<FhirCode>? _mimeType;

  /// [mimeType] The mime type to send the payload in - e.g.
  ///  application/fhir+xml, application/fhir+json. If the mime type is not
  ///  specified, then the sender could send any content (including no
  ///  content depending on the connectionType).
  @override
  List<FhirCode>? get mimeType {
    final value = _mimeType;
    if (value == null) return null;
    if (_mimeType is EqualUnmodifiableListView) return _mimeType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [mimeTypeElement] ("_mimeType") Extensions for mimeType
  final List<Element>? _mimeTypeElement;

  /// [mimeTypeElement] ("_mimeType") Extensions for mimeType
  @override
  @JsonKey(name: '_mimeType')
  List<Element>? get mimeTypeElement {
    final value = _mimeTypeElement;
    if (value == null) return null;
    if (_mimeTypeElement is EqualUnmodifiableListView) return _mimeTypeElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [profileCanonical] The FHIR profile that is expected at this endpoint.
  ///  It describes the resources that are handled, or even simply which
  ///  resource types -e.g. Vital Sign Observations or QuestionnaireResponse.
  /// The `profileUri` may be used when a FHIR Structure Definition is not
  ///  available/appropriate.
  final List<FhirCanonical>? _profileCanonical;

  /// [profileCanonical] The FHIR profile that is expected at this endpoint.
  ///  It describes the resources that are handled, or even simply which
  ///  resource types -e.g. Vital Sign Observations or QuestionnaireResponse.
  /// The `profileUri` may be used when a FHIR Structure Definition is not
  ///  available/appropriate.
  @override
  List<FhirCanonical>? get profileCanonical {
    final value = _profileCanonical;
    if (value == null) return null;
    if (_profileCanonical is EqualUnmodifiableListView)
      return _profileCanonical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [profileCanonicalElement] ("_profileCanonical") Extensions for
  ///  profileCanonical
  final List<Element>? _profileCanonicalElement;

  /// [profileCanonicalElement] ("_profileCanonical") Extensions for
  ///  profileCanonical
  @override
  @JsonKey(name: '_profileCanonical')
  List<Element>? get profileCanonicalElement {
    final value = _profileCanonicalElement;
    if (value == null) return null;
    if (_profileCanonicalElement is EqualUnmodifiableListView)
      return _profileCanonicalElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [profileUri] The profile (as a uri) that is expected at this endpoint
  ///  when not represented using a FHIR profile.
  /// e.g. CDA Template ID expressed as an OID (in the Uri).
  final List<FhirUri>? _profileUri;

  /// [profileUri] The profile (as a uri) that is expected at this endpoint
  ///  when not represented using a FHIR profile.
  /// e.g. CDA Template ID expressed as an OID (in the Uri).
  @override
  List<FhirUri>? get profileUri {
    final value = _profileUri;
    if (value == null) return null;
    if (_profileUri is EqualUnmodifiableListView) return _profileUri;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [profileUriElement] ("_profileUri") Extensions for profileUri
  final List<Element>? _profileUriElement;

  /// [profileUriElement] ("_profileUri") Extensions for profileUri
  @override
  @JsonKey(name: '_profileUri')
  List<Element>? get profileUriElement {
    final value = _profileUriElement;
    if (value == null) return null;
    if (_profileUriElement is EqualUnmodifiableListView)
      return _profileUriElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EndpointPayload(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, mimeType: $mimeType, mimeTypeElement: $mimeTypeElement, profileCanonical: $profileCanonical, profileCanonicalElement: $profileCanonicalElement, profileUri: $profileUri, profileUriElement: $profileUriElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndpointPayloadImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._mimeType, _mimeType) &&
            const DeepCollectionEquality()
                .equals(other._mimeTypeElement, _mimeTypeElement) &&
            const DeepCollectionEquality()
                .equals(other._profileCanonical, _profileCanonical) &&
            const DeepCollectionEquality().equals(
                other._profileCanonicalElement, _profileCanonicalElement) &&
            const DeepCollectionEquality()
                .equals(other._profileUri, _profileUri) &&
            const DeepCollectionEquality()
                .equals(other._profileUriElement, _profileUriElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_mimeType),
      const DeepCollectionEquality().hash(_mimeTypeElement),
      const DeepCollectionEquality().hash(_profileCanonical),
      const DeepCollectionEquality().hash(_profileCanonicalElement),
      const DeepCollectionEquality().hash(_profileUri),
      const DeepCollectionEquality().hash(_profileUriElement));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndpointPayloadImplCopyWith<_$EndpointPayloadImpl> get copyWith =>
      __$$EndpointPayloadImplCopyWithImpl<_$EndpointPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EndpointPayloadImplToJson(
      this,
    );
  }
}

abstract class _EndpointPayload extends EndpointPayload {
  const factory _EndpointPayload(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? type,
      final List<FhirCode>? mimeType,
      @JsonKey(name: '_mimeType') final List<Element>? mimeTypeElement,
      final List<FhirCanonical>? profileCanonical,
      @JsonKey(name: '_profileCanonical')
      final List<Element>? profileCanonicalElement,
      final List<FhirUri>? profileUri,
      @JsonKey(name: '_profileUri')
      final List<Element>? profileUriElement}) = _$EndpointPayloadImpl;
  const _EndpointPayload._() : super._();

  factory _EndpointPayload.fromJson(Map<String, dynamic> json) =
      _$EndpointPayloadImpl.fromJson;

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

  /// [type] The payload type describes the acceptable content that can be
  ///  communicated on the endpoint.
  List<CodeableConcept>? get type;
  @override

  /// [mimeType] The mime type to send the payload in - e.g.
  ///  application/fhir+xml, application/fhir+json. If the mime type is not
  ///  specified, then the sender could send any content (including no
  ///  content depending on the connectionType).
  List<FhirCode>? get mimeType;
  @override

  /// [mimeTypeElement] ("_mimeType") Extensions for mimeType
  @JsonKey(name: '_mimeType')
  List<Element>? get mimeTypeElement;
  @override

  /// [profileCanonical] The FHIR profile that is expected at this endpoint.
  ///  It describes the resources that are handled, or even simply which
  ///  resource types -e.g. Vital Sign Observations or QuestionnaireResponse.
  /// The `profileUri` may be used when a FHIR Structure Definition is not
  ///  available/appropriate.
  List<FhirCanonical>? get profileCanonical;
  @override

  /// [profileCanonicalElement] ("_profileCanonical") Extensions for
  ///  profileCanonical
  @JsonKey(name: '_profileCanonical')
  List<Element>? get profileCanonicalElement;
  @override

  /// [profileUri] The profile (as a uri) that is expected at this endpoint
  ///  when not represented using a FHIR profile.
  /// e.g. CDA Template ID expressed as an OID (in the Uri).
  List<FhirUri>? get profileUri;
  @override

  /// [profileUriElement] ("_profileUri") Extensions for profileUri
  @JsonKey(name: '_profileUri')
  List<Element>? get profileUriElement;
  @override
  @JsonKey(ignore: true)
  _$$EndpointPayloadImplCopyWith<_$EndpointPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthcareService _$HealthcareServiceFromJson(Map<String, dynamic> json) {
  return _HealthcareService.fromJson(json);
}

/// @nodoc
mixin _$HealthcareService {
  /// [resourceType] This is a HealthcareService resource
  @JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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

  /// [identifier] External identifiers for this item.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] This flag is used to mark the record to not be used. This is
  ///  not used when a center is closed for maintenance, or for holidays, the
  ///  notAvailable period is to be used for this.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement => throw _privateConstructorUsedError;

  /// [providedBy] The organization that provides this healthcare service.
  Reference? get providedBy => throw _privateConstructorUsedError;

  /// [offeredIn] When the HealthcareService is representing a specific,
  ///  schedulable service, the availableIn property can refer to a generic
  ///  service.
  List<Reference>? get offeredIn => throw _privateConstructorUsedError;

  /// [category] Identifies the broad category of service being performed or
  ///  delivered.
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;

  /// [type] The specific type of service that may be delivered or performed.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [specialty] Collection of specialties handled by the Healthcare
  ///  service. This is more of a medical term.
  List<CodeableConcept>? get specialty => throw _privateConstructorUsedError;

  /// [location] The location(s) where this healthcare service may be
  ///  provided.
  List<Reference>? get location => throw _privateConstructorUsedError;

  /// [name] Further description of the service as it would be presented to a
  ///  consumer while searching.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  /// [comment] Any additional description of the service and/or any specific
  ///  issues not covered by the other attributes, which can be displayed as
  ///  further detail under the serviceName.
  FhirMarkdown? get comment => throw _privateConstructorUsedError;

  /// [commentElement] ("_comment") Extensions for comment
  @JsonKey(name: '_comment')
  Element? get commentElement => throw _privateConstructorUsedError;

  /// [extraDetails] Extra details about the service that can't be placed in
  ///  the other fields.
  FhirMarkdown? get extraDetails => throw _privateConstructorUsedError;

  /// [extraDetailsElement] ("_extraDetails") Extensions for extraDetails
  @JsonKey(name: '_extraDetails')
  Element? get extraDetailsElement => throw _privateConstructorUsedError;

  /// [photo] If there is a photo/symbol associated with this
  ///  HealthcareService, it may be included here to facilitate quick
  ///  identification of the service in a list.
  Attachment? get photo => throw _privateConstructorUsedError;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific HealthcareService. This can include
  ///  addresses, phone numbers, fax numbers, mobile numbers, email addresses
  ///  and web sites.
  List<ExtendedContactDetail>? get contact =>
      throw _privateConstructorUsedError;

  /// [coverageArea] The location(s) that this service is available to (not
  ///  where the service is provided).
  List<Reference>? get coverageArea => throw _privateConstructorUsedError;

  /// [serviceProvisionCode] The code(s) that detail the conditions under
  ///  which the healthcare service is available/offered.
  List<CodeableConcept>? get serviceProvisionCode =>
      throw _privateConstructorUsedError;

  /// [eligibility] Does this service have specific eligibility requirements
  ///  that need to be met in order to use the service?
  List<HealthcareServiceEligibility>? get eligibility =>
      throw _privateConstructorUsedError;

  /// [program] Programs that this service is applicable to.
  List<CodeableConcept>? get program => throw _privateConstructorUsedError;

  /// [characteristic] Collection of characteristics (attributes).
  List<CodeableConcept>? get characteristic =>
      throw _privateConstructorUsedError;

  /// [communication] Some services are specifically made available in
  ///  multiple languages, this property permits a directory to declare the
  ///  languages this is offered in. Typically this is only provided where a
  ///  service operates in communities with mixed languages used.
  List<CodeableConcept>? get communication =>
      throw _privateConstructorUsedError;

  /// [referralMethod] Ways that the service accepts referrals, if this is
  ///  not provided then it is implied that no referral is required.
  List<CodeableConcept>? get referralMethod =>
      throw _privateConstructorUsedError;

  /// [referralRequired] Indicates whether or not a prospective consumer will
  ///  require a referral for a particular service at a site to be provided
  ///  by the Organization.
  FhirBoolean? get referralRequired => throw _privateConstructorUsedError;

  /// [referralRequiredElement] ("_referralRequired") Extensions for
  ///  referralRequired
  @JsonKey(name: '_referralRequired')
  Element? get referralRequiredElement => throw _privateConstructorUsedError;

  /// [appointmentRequired] Indicates whether or not a prospective consumer
  ///  will require an appointment for a particular service at a site to be
  ///  provided by the Organization.
  FhirBoolean? get appointmentRequired => throw _privateConstructorUsedError;

  /// [appointmentRequiredElement] ("_appointmentRequired") Extensions for
  ///  appointmentRequired
  @JsonKey(name: '_appointmentRequired')
  Element? get appointmentRequiredElement => throw _privateConstructorUsedError;

  /// [availability] A collection of times that the healthcare service is
  ///  available.
  Availability? get availability => throw _privateConstructorUsedError;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the specific healthcare services defined at this resource.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthcareServiceCopyWith<HealthcareService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthcareServiceCopyWith<$Res> {
  factory $HealthcareServiceCopyWith(
          HealthcareService value, $Res Function(HealthcareService) then) =
      _$HealthcareServiceCopyWithImpl<$Res, HealthcareService>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      Reference? providedBy,
      List<Reference>? offeredIn,
      List<CodeableConcept>? category,
      List<CodeableConcept>? type,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') Element? commentElement,
      FhirMarkdown? extraDetails,
      @JsonKey(name: '_extraDetails') Element? extraDetailsElement,
      Attachment? photo,
      List<ExtendedContactDetail>? contact,
      List<Reference>? coverageArea,
      List<CodeableConcept>? serviceProvisionCode,
      List<HealthcareServiceEligibility>? eligibility,
      List<CodeableConcept>? program,
      List<CodeableConcept>? characteristic,
      List<CodeableConcept>? communication,
      List<CodeableConcept>? referralMethod,
      FhirBoolean? referralRequired,
      @JsonKey(name: '_referralRequired') Element? referralRequiredElement,
      FhirBoolean? appointmentRequired,
      @JsonKey(name: '_appointmentRequired')
      Element? appointmentRequiredElement,
      Availability? availability,
      List<Reference>? endpoint});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get providedBy;
  $AttachmentCopyWith<$Res>? get photo;
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class _$HealthcareServiceCopyWithImpl<$Res, $Val extends HealthcareService>
    implements $HealthcareServiceCopyWith<$Res> {
  _$HealthcareServiceCopyWithImpl(this._value, this._then);

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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? providedBy = freezed,
    Object? offeredIn = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? extraDetails = freezed,
    Object? extraDetailsElement = freezed,
    Object? photo = freezed,
    Object? contact = freezed,
    Object? coverageArea = freezed,
    Object? serviceProvisionCode = freezed,
    Object? eligibility = freezed,
    Object? program = freezed,
    Object? characteristic = freezed,
    Object? communication = freezed,
    Object? referralMethod = freezed,
    Object? referralRequired = freezed,
    Object? referralRequiredElement = freezed,
    Object? appointmentRequired = freezed,
    Object? appointmentRequiredElement = freezed,
    Object? availability = freezed,
    Object? endpoint = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      providedBy: freezed == providedBy
          ? _value.providedBy
          : providedBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      offeredIn: freezed == offeredIn
          ? _value.offeredIn
          : offeredIn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      extraDetails: freezed == extraDetails
          ? _value.extraDetails
          : extraDetails // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      extraDetailsElement: freezed == extraDetailsElement
          ? _value.extraDetailsElement
          : extraDetailsElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      coverageArea: freezed == coverageArea
          ? _value.coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      serviceProvisionCode: freezed == serviceProvisionCode
          ? _value.serviceProvisionCode
          : serviceProvisionCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      eligibility: freezed == eligibility
          ? _value.eligibility
          : eligibility // ignore: cast_nullable_to_non_nullable
              as List<HealthcareServiceEligibility>?,
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      characteristic: freezed == characteristic
          ? _value.characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referralMethod: freezed == referralMethod
          ? _value.referralMethod
          : referralMethod // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referralRequired: freezed == referralRequired
          ? _value.referralRequired
          : referralRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      referralRequiredElement: freezed == referralRequiredElement
          ? _value.referralRequiredElement
          : referralRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      appointmentRequired: freezed == appointmentRequired
          ? _value.appointmentRequired
          : appointmentRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      appointmentRequiredElement: freezed == appointmentRequiredElement
          ? _value.appointmentRequiredElement
          : appointmentRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $ReferenceCopyWith<$Res>? get providedBy {
    if (_value.providedBy == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.providedBy!, (value) {
      return _then(_value.copyWith(providedBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthcareServiceImplCopyWith<$Res>
    implements $HealthcareServiceCopyWith<$Res> {
  factory _$$HealthcareServiceImplCopyWith(_$HealthcareServiceImpl value,
          $Res Function(_$HealthcareServiceImpl) then) =
      __$$HealthcareServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      Reference? providedBy,
      List<Reference>? offeredIn,
      List<CodeableConcept>? category,
      List<CodeableConcept>? type,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') Element? commentElement,
      FhirMarkdown? extraDetails,
      @JsonKey(name: '_extraDetails') Element? extraDetailsElement,
      Attachment? photo,
      List<ExtendedContactDetail>? contact,
      List<Reference>? coverageArea,
      List<CodeableConcept>? serviceProvisionCode,
      List<HealthcareServiceEligibility>? eligibility,
      List<CodeableConcept>? program,
      List<CodeableConcept>? characteristic,
      List<CodeableConcept>? communication,
      List<CodeableConcept>? referralMethod,
      FhirBoolean? referralRequired,
      @JsonKey(name: '_referralRequired') Element? referralRequiredElement,
      FhirBoolean? appointmentRequired,
      @JsonKey(name: '_appointmentRequired')
      Element? appointmentRequiredElement,
      Availability? availability,
      List<Reference>? endpoint});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get providedBy;
  @override
  $AttachmentCopyWith<$Res>? get photo;
  @override
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$HealthcareServiceImplCopyWithImpl<$Res>
    extends _$HealthcareServiceCopyWithImpl<$Res, _$HealthcareServiceImpl>
    implements _$$HealthcareServiceImplCopyWith<$Res> {
  __$$HealthcareServiceImplCopyWithImpl(_$HealthcareServiceImpl _value,
      $Res Function(_$HealthcareServiceImpl) _then)
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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? providedBy = freezed,
    Object? offeredIn = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? extraDetails = freezed,
    Object? extraDetailsElement = freezed,
    Object? photo = freezed,
    Object? contact = freezed,
    Object? coverageArea = freezed,
    Object? serviceProvisionCode = freezed,
    Object? eligibility = freezed,
    Object? program = freezed,
    Object? characteristic = freezed,
    Object? communication = freezed,
    Object? referralMethod = freezed,
    Object? referralRequired = freezed,
    Object? referralRequiredElement = freezed,
    Object? appointmentRequired = freezed,
    Object? appointmentRequiredElement = freezed,
    Object? availability = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$HealthcareServiceImpl(
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      providedBy: freezed == providedBy
          ? _value.providedBy
          : providedBy // ignore: cast_nullable_to_non_nullable
              as Reference?,
      offeredIn: freezed == offeredIn
          ? _value._offeredIn
          : offeredIn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value._specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      extraDetails: freezed == extraDetails
          ? _value.extraDetails
          : extraDetails // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      extraDetailsElement: freezed == extraDetailsElement
          ? _value.extraDetailsElement
          : extraDetailsElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      coverageArea: freezed == coverageArea
          ? _value._coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      serviceProvisionCode: freezed == serviceProvisionCode
          ? _value._serviceProvisionCode
          : serviceProvisionCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      eligibility: freezed == eligibility
          ? _value._eligibility
          : eligibility // ignore: cast_nullable_to_non_nullable
              as List<HealthcareServiceEligibility>?,
      program: freezed == program
          ? _value._program
          : program // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      characteristic: freezed == characteristic
          ? _value._characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      communication: freezed == communication
          ? _value._communication
          : communication // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referralMethod: freezed == referralMethod
          ? _value._referralMethod
          : referralMethod // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referralRequired: freezed == referralRequired
          ? _value.referralRequired
          : referralRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      referralRequiredElement: freezed == referralRequiredElement
          ? _value.referralRequiredElement
          : referralRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      appointmentRequired: freezed == appointmentRequired
          ? _value.appointmentRequired
          : appointmentRequired // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      appointmentRequiredElement: freezed == appointmentRequiredElement
          ? _value.appointmentRequiredElement
          : appointmentRequiredElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthcareServiceImpl extends _HealthcareService {
  const _$HealthcareServiceImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
      this.resourceType = R6ResourceType.HealthcareService,
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
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      this.providedBy,
      final List<Reference>? offeredIn,
      final List<CodeableConcept>? category,
      final List<CodeableConcept>? type,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement,
      this.extraDetails,
      @JsonKey(name: '_extraDetails') this.extraDetailsElement,
      this.photo,
      final List<ExtendedContactDetail>? contact,
      final List<Reference>? coverageArea,
      final List<CodeableConcept>? serviceProvisionCode,
      final List<HealthcareServiceEligibility>? eligibility,
      final List<CodeableConcept>? program,
      final List<CodeableConcept>? characteristic,
      final List<CodeableConcept>? communication,
      final List<CodeableConcept>? referralMethod,
      this.referralRequired,
      @JsonKey(name: '_referralRequired') this.referralRequiredElement,
      this.appointmentRequired,
      @JsonKey(name: '_appointmentRequired') this.appointmentRequiredElement,
      this.availability,
      final List<Reference>? endpoint})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _offeredIn = offeredIn,
        _category = category,
        _type = type,
        _specialty = specialty,
        _location = location,
        _contact = contact,
        _coverageArea = coverageArea,
        _serviceProvisionCode = serviceProvisionCode,
        _eligibility = eligibility,
        _program = program,
        _characteristic = characteristic,
        _communication = communication,
        _referralMethod = referralMethod,
        _endpoint = endpoint,
        super._();

  factory _$HealthcareServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthcareServiceImplFromJson(json);

  /// [resourceType] This is a HealthcareService resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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

  /// [identifier] External identifiers for this item.
  final List<Identifier>? _identifier;

  /// [identifier] External identifiers for this item.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] This flag is used to mark the record to not be used. This is
  ///  not used when a center is closed for maintenance, or for holidays, the
  ///  notAvailable period is to be used for this.
  @override
  final FhirBoolean? active;

  /// [activeElement] ("_active") Extensions for active
  @override
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [providedBy] The organization that provides this healthcare service.
  @override
  final Reference? providedBy;

  /// [offeredIn] When the HealthcareService is representing a specific,
  ///  schedulable service, the availableIn property can refer to a generic
  ///  service.
  final List<Reference>? _offeredIn;

  /// [offeredIn] When the HealthcareService is representing a specific,
  ///  schedulable service, the availableIn property can refer to a generic
  ///  service.
  @override
  List<Reference>? get offeredIn {
    final value = _offeredIn;
    if (value == null) return null;
    if (_offeredIn is EqualUnmodifiableListView) return _offeredIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [category] Identifies the broad category of service being performed or
  ///  delivered.
  final List<CodeableConcept>? _category;

  /// [category] Identifies the broad category of service being performed or
  ///  delivered.
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The specific type of service that may be delivered or performed.
  final List<CodeableConcept>? _type;

  /// [type] The specific type of service that may be delivered or performed.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [specialty] Collection of specialties handled by the Healthcare
  ///  service. This is more of a medical term.
  final List<CodeableConcept>? _specialty;

  /// [specialty] Collection of specialties handled by the Healthcare
  ///  service. This is more of a medical term.
  @override
  List<CodeableConcept>? get specialty {
    final value = _specialty;
    if (value == null) return null;
    if (_specialty is EqualUnmodifiableListView) return _specialty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [location] The location(s) where this healthcare service may be
  ///  provided.
  final List<Reference>? _location;

  /// [location] The location(s) where this healthcare service may be
  ///  provided.
  @override
  List<Reference>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] Further description of the service as it would be presented to a
  ///  consumer while searching.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [comment] Any additional description of the service and/or any specific
  ///  issues not covered by the other attributes, which can be displayed as
  ///  further detail under the serviceName.
  @override
  final FhirMarkdown? comment;

  /// [commentElement] ("_comment") Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [extraDetails] Extra details about the service that can't be placed in
  ///  the other fields.
  @override
  final FhirMarkdown? extraDetails;

  /// [extraDetailsElement] ("_extraDetails") Extensions for extraDetails
  @override
  @JsonKey(name: '_extraDetails')
  final Element? extraDetailsElement;

  /// [photo] If there is a photo/symbol associated with this
  ///  HealthcareService, it may be included here to facilitate quick
  ///  identification of the service in a list.
  @override
  final Attachment? photo;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific HealthcareService. This can include
  ///  addresses, phone numbers, fax numbers, mobile numbers, email addresses
  ///  and web sites.
  final List<ExtendedContactDetail>? _contact;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific HealthcareService. This can include
  ///  addresses, phone numbers, fax numbers, mobile numbers, email addresses
  ///  and web sites.
  @override
  List<ExtendedContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [coverageArea] The location(s) that this service is available to (not
  ///  where the service is provided).
  final List<Reference>? _coverageArea;

  /// [coverageArea] The location(s) that this service is available to (not
  ///  where the service is provided).
  @override
  List<Reference>? get coverageArea {
    final value = _coverageArea;
    if (value == null) return null;
    if (_coverageArea is EqualUnmodifiableListView) return _coverageArea;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [serviceProvisionCode] The code(s) that detail the conditions under
  ///  which the healthcare service is available/offered.
  final List<CodeableConcept>? _serviceProvisionCode;

  /// [serviceProvisionCode] The code(s) that detail the conditions under
  ///  which the healthcare service is available/offered.
  @override
  List<CodeableConcept>? get serviceProvisionCode {
    final value = _serviceProvisionCode;
    if (value == null) return null;
    if (_serviceProvisionCode is EqualUnmodifiableListView)
      return _serviceProvisionCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [eligibility] Does this service have specific eligibility requirements
  ///  that need to be met in order to use the service?
  final List<HealthcareServiceEligibility>? _eligibility;

  /// [eligibility] Does this service have specific eligibility requirements
  ///  that need to be met in order to use the service?
  @override
  List<HealthcareServiceEligibility>? get eligibility {
    final value = _eligibility;
    if (value == null) return null;
    if (_eligibility is EqualUnmodifiableListView) return _eligibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [program] Programs that this service is applicable to.
  final List<CodeableConcept>? _program;

  /// [program] Programs that this service is applicable to.
  @override
  List<CodeableConcept>? get program {
    final value = _program;
    if (value == null) return null;
    if (_program is EqualUnmodifiableListView) return _program;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [characteristic] Collection of characteristics (attributes).
  final List<CodeableConcept>? _characteristic;

  /// [characteristic] Collection of characteristics (attributes).
  @override
  List<CodeableConcept>? get characteristic {
    final value = _characteristic;
    if (value == null) return null;
    if (_characteristic is EqualUnmodifiableListView) return _characteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [communication] Some services are specifically made available in
  ///  multiple languages, this property permits a directory to declare the
  ///  languages this is offered in. Typically this is only provided where a
  ///  service operates in communities with mixed languages used.
  final List<CodeableConcept>? _communication;

  /// [communication] Some services are specifically made available in
  ///  multiple languages, this property permits a directory to declare the
  ///  languages this is offered in. Typically this is only provided where a
  ///  service operates in communities with mixed languages used.
  @override
  List<CodeableConcept>? get communication {
    final value = _communication;
    if (value == null) return null;
    if (_communication is EqualUnmodifiableListView) return _communication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [referralMethod] Ways that the service accepts referrals, if this is
  ///  not provided then it is implied that no referral is required.
  final List<CodeableConcept>? _referralMethod;

  /// [referralMethod] Ways that the service accepts referrals, if this is
  ///  not provided then it is implied that no referral is required.
  @override
  List<CodeableConcept>? get referralMethod {
    final value = _referralMethod;
    if (value == null) return null;
    if (_referralMethod is EqualUnmodifiableListView) return _referralMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [referralRequired] Indicates whether or not a prospective consumer will
  ///  require a referral for a particular service at a site to be provided
  ///  by the Organization.
  @override
  final FhirBoolean? referralRequired;

  /// [referralRequiredElement] ("_referralRequired") Extensions for
  ///  referralRequired
  @override
  @JsonKey(name: '_referralRequired')
  final Element? referralRequiredElement;

  /// [appointmentRequired] Indicates whether or not a prospective consumer
  ///  will require an appointment for a particular service at a site to be
  ///  provided by the Organization.
  @override
  final FhirBoolean? appointmentRequired;

  /// [appointmentRequiredElement] ("_appointmentRequired") Extensions for
  ///  appointmentRequired
  @override
  @JsonKey(name: '_appointmentRequired')
  final Element? appointmentRequiredElement;

  /// [availability] A collection of times that the healthcare service is
  ///  available.
  @override
  final Availability? availability;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the specific healthcare services defined at this resource.
  final List<Reference>? _endpoint;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the specific healthcare services defined at this resource.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HealthcareService(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, providedBy: $providedBy, offeredIn: $offeredIn, category: $category, type: $type, specialty: $specialty, location: $location, name: $name, nameElement: $nameElement, comment: $comment, commentElement: $commentElement, extraDetails: $extraDetails, extraDetailsElement: $extraDetailsElement, photo: $photo, contact: $contact, coverageArea: $coverageArea, serviceProvisionCode: $serviceProvisionCode, eligibility: $eligibility, program: $program, characteristic: $characteristic, communication: $communication, referralMethod: $referralMethod, referralRequired: $referralRequired, referralRequiredElement: $referralRequiredElement, appointmentRequired: $appointmentRequired, appointmentRequiredElement: $appointmentRequiredElement, availability: $availability, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareServiceImpl &&
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
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            (identical(other.providedBy, providedBy) ||
                other.providedBy == providedBy) &&
            const DeepCollectionEquality()
                .equals(other._offeredIn, _offeredIn) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality()
                .equals(other._specialty, _specialty) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement) &&
            (identical(other.extraDetails, extraDetails) ||
                other.extraDetails == extraDetails) &&
            (identical(other.extraDetailsElement, extraDetailsElement) ||
                other.extraDetailsElement == extraDetailsElement) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality()
                .equals(other._coverageArea, _coverageArea) &&
            const DeepCollectionEquality()
                .equals(other._serviceProvisionCode, _serviceProvisionCode) &&
            const DeepCollectionEquality()
                .equals(other._eligibility, _eligibility) &&
            const DeepCollectionEquality().equals(other._program, _program) &&
            const DeepCollectionEquality()
                .equals(other._characteristic, _characteristic) &&
            const DeepCollectionEquality()
                .equals(other._communication, _communication) &&
            const DeepCollectionEquality()
                .equals(other._referralMethod, _referralMethod) &&
            (identical(other.referralRequired, referralRequired) ||
                other.referralRequired == referralRequired) &&
            (identical(
                    other.referralRequiredElement, referralRequiredElement) ||
                other.referralRequiredElement == referralRequiredElement) &&
            (identical(other.appointmentRequired, appointmentRequired) ||
                other.appointmentRequired == appointmentRequired) &&
            (identical(other.appointmentRequiredElement,
                    appointmentRequiredElement) ||
                other.appointmentRequiredElement ==
                    appointmentRequiredElement) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint));
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
        active,
        activeElement,
        providedBy,
        const DeepCollectionEquality().hash(_offeredIn),
        const DeepCollectionEquality().hash(_category),
        const DeepCollectionEquality().hash(_type),
        const DeepCollectionEquality().hash(_specialty),
        const DeepCollectionEquality().hash(_location),
        name,
        nameElement,
        comment,
        commentElement,
        extraDetails,
        extraDetailsElement,
        photo,
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_coverageArea),
        const DeepCollectionEquality().hash(_serviceProvisionCode),
        const DeepCollectionEquality().hash(_eligibility),
        const DeepCollectionEquality().hash(_program),
        const DeepCollectionEquality().hash(_characteristic),
        const DeepCollectionEquality().hash(_communication),
        const DeepCollectionEquality().hash(_referralMethod),
        referralRequired,
        referralRequiredElement,
        appointmentRequired,
        appointmentRequiredElement,
        availability,
        const DeepCollectionEquality().hash(_endpoint)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthcareServiceImplCopyWith<_$HealthcareServiceImpl> get copyWith =>
      __$$HealthcareServiceImplCopyWithImpl<_$HealthcareServiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthcareServiceImplToJson(
      this,
    );
  }
}

abstract class _HealthcareService extends HealthcareService {
  const factory _HealthcareService(
      {@JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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
      final FhirBoolean? active,
      @JsonKey(name: '_active') final Element? activeElement,
      final Reference? providedBy,
      final List<Reference>? offeredIn,
      final List<CodeableConcept>? category,
      final List<CodeableConcept>? type,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      final String? name,
      @JsonKey(name: '_name') final Element? nameElement,
      final FhirMarkdown? comment,
      @JsonKey(name: '_comment') final Element? commentElement,
      final FhirMarkdown? extraDetails,
      @JsonKey(name: '_extraDetails') final Element? extraDetailsElement,
      final Attachment? photo,
      final List<ExtendedContactDetail>? contact,
      final List<Reference>? coverageArea,
      final List<CodeableConcept>? serviceProvisionCode,
      final List<HealthcareServiceEligibility>? eligibility,
      final List<CodeableConcept>? program,
      final List<CodeableConcept>? characteristic,
      final List<CodeableConcept>? communication,
      final List<CodeableConcept>? referralMethod,
      final FhirBoolean? referralRequired,
      @JsonKey(name: '_referralRequired')
      final Element? referralRequiredElement,
      final FhirBoolean? appointmentRequired,
      @JsonKey(name: '_appointmentRequired')
      final Element? appointmentRequiredElement,
      final Availability? availability,
      final List<Reference>? endpoint}) = _$HealthcareServiceImpl;
  const _HealthcareService._() : super._();

  factory _HealthcareService.fromJson(Map<String, dynamic> json) =
      _$HealthcareServiceImpl.fromJson;

  @override

  /// [resourceType] This is a HealthcareService resource
  @JsonKey(unknownEnumValue: R6ResourceType.HealthcareService)
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

  /// [identifier] External identifiers for this item.
  List<Identifier>? get identifier;
  @override

  /// [active] This flag is used to mark the record to not be used. This is
  ///  not used when a center is closed for maintenance, or for holidays, the
  ///  notAvailable period is to be used for this.
  FhirBoolean? get active;
  @override

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement;
  @override

  /// [providedBy] The organization that provides this healthcare service.
  Reference? get providedBy;
  @override

  /// [offeredIn] When the HealthcareService is representing a specific,
  ///  schedulable service, the availableIn property can refer to a generic
  ///  service.
  List<Reference>? get offeredIn;
  @override

  /// [category] Identifies the broad category of service being performed or
  ///  delivered.
  List<CodeableConcept>? get category;
  @override

  /// [type] The specific type of service that may be delivered or performed.
  List<CodeableConcept>? get type;
  @override

  /// [specialty] Collection of specialties handled by the Healthcare
  ///  service. This is more of a medical term.
  List<CodeableConcept>? get specialty;
  @override

  /// [location] The location(s) where this healthcare service may be
  ///  provided.
  List<Reference>? get location;
  @override

  /// [name] Further description of the service as it would be presented to a
  ///  consumer while searching.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override

  /// [comment] Any additional description of the service and/or any specific
  ///  issues not covered by the other attributes, which can be displayed as
  ///  further detail under the serviceName.
  FhirMarkdown? get comment;
  @override

  /// [commentElement] ("_comment") Extensions for comment
  @JsonKey(name: '_comment')
  Element? get commentElement;
  @override

  /// [extraDetails] Extra details about the service that can't be placed in
  ///  the other fields.
  FhirMarkdown? get extraDetails;
  @override

  /// [extraDetailsElement] ("_extraDetails") Extensions for extraDetails
  @JsonKey(name: '_extraDetails')
  Element? get extraDetailsElement;
  @override

  /// [photo] If there is a photo/symbol associated with this
  ///  HealthcareService, it may be included here to facilitate quick
  ///  identification of the service in a list.
  Attachment? get photo;
  @override

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific HealthcareService. This can include
  ///  addresses, phone numbers, fax numbers, mobile numbers, email addresses
  ///  and web sites.
  List<ExtendedContactDetail>? get contact;
  @override

  /// [coverageArea] The location(s) that this service is available to (not
  ///  where the service is provided).
  List<Reference>? get coverageArea;
  @override

  /// [serviceProvisionCode] The code(s) that detail the conditions under
  ///  which the healthcare service is available/offered.
  List<CodeableConcept>? get serviceProvisionCode;
  @override

  /// [eligibility] Does this service have specific eligibility requirements
  ///  that need to be met in order to use the service?
  List<HealthcareServiceEligibility>? get eligibility;
  @override

  /// [program] Programs that this service is applicable to.
  List<CodeableConcept>? get program;
  @override

  /// [characteristic] Collection of characteristics (attributes).
  List<CodeableConcept>? get characteristic;
  @override

  /// [communication] Some services are specifically made available in
  ///  multiple languages, this property permits a directory to declare the
  ///  languages this is offered in. Typically this is only provided where a
  ///  service operates in communities with mixed languages used.
  List<CodeableConcept>? get communication;
  @override

  /// [referralMethod] Ways that the service accepts referrals, if this is
  ///  not provided then it is implied that no referral is required.
  List<CodeableConcept>? get referralMethod;
  @override

  /// [referralRequired] Indicates whether or not a prospective consumer will
  ///  require a referral for a particular service at a site to be provided
  ///  by the Organization.
  FhirBoolean? get referralRequired;
  @override

  /// [referralRequiredElement] ("_referralRequired") Extensions for
  ///  referralRequired
  @JsonKey(name: '_referralRequired')
  Element? get referralRequiredElement;
  @override

  /// [appointmentRequired] Indicates whether or not a prospective consumer
  ///  will require an appointment for a particular service at a site to be
  ///  provided by the Organization.
  FhirBoolean? get appointmentRequired;
  @override

  /// [appointmentRequiredElement] ("_appointmentRequired") Extensions for
  ///  appointmentRequired
  @JsonKey(name: '_appointmentRequired')
  Element? get appointmentRequiredElement;
  @override

  /// [availability] A collection of times that the healthcare service is
  ///  available.
  Availability? get availability;
  @override

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the specific healthcare services defined at this resource.
  List<Reference>? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$HealthcareServiceImplCopyWith<_$HealthcareServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthcareServiceEligibility _$HealthcareServiceEligibilityFromJson(
    Map<String, dynamic> json) {
  return _HealthcareServiceEligibility.fromJson(json);
}

/// @nodoc
mixin _$HealthcareServiceEligibility {
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

  /// [code] Coded value for the eligibility.
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] Sometimes an eligibility code requires
  ///  additional data to calculate the eligibility rules.
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueBoolean] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  Element? get valueBooleanElement => throw _privateConstructorUsedError;

  /// [valueQuantity] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueRange] Sometimes an eligibility code requires additional data to
  ///  calculate the eligibility rules.
  Range? get valueRange => throw _privateConstructorUsedError;

  /// [valueReference] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  Reference? get valueReference => throw _privateConstructorUsedError;

  /// [comment] Describes the eligibility conditions for the service.
  FhirMarkdown? get comment => throw _privateConstructorUsedError;

  /// [commentElement] ("_comment") Extensions for comment
  @JsonKey(name: '_comment')
  Element? get commentElement => throw _privateConstructorUsedError;

  /// [period] The period that this eligibility rule is a requirement for
  ///  this service.
  FhirMarkdown? get period => throw _privateConstructorUsedError;

  /// [periodElement] ("_period") Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthcareServiceEligibilityCopyWith<HealthcareServiceEligibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthcareServiceEligibilityCopyWith<$Res> {
  factory $HealthcareServiceEligibilityCopyWith(
          HealthcareServiceEligibility value,
          $Res Function(HealthcareServiceEligibility) then) =
      _$HealthcareServiceEligibilityCopyWithImpl<$Res,
          HealthcareServiceEligibility>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? valueCodeableConcept,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,
      Quantity? valueQuantity,
      Range? valueRange,
      Reference? valueReference,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') Element? commentElement,
      FhirMarkdown? period,
      @JsonKey(name: '_period') Element? periodElement});

  $CodeableConceptCopyWith<$Res>? get code;
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $RangeCopyWith<$Res>? get valueRange;
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class _$HealthcareServiceEligibilityCopyWithImpl<$Res,
        $Val extends HealthcareServiceEligibility>
    implements $HealthcareServiceEligibilityCopyWith<$Res> {
  _$HealthcareServiceEligibilityCopyWithImpl(this._value, this._then);

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
    Object? code = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueReference = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_value.valueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.valueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(valueCodeableConcept: value) as $Val);
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
  $RangeCopyWith<$Res>? get valueRange {
    if (_value.valueRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.valueRange!, (value) {
      return _then(_value.copyWith(valueRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get valueReference {
    if (_value.valueReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.valueReference!, (value) {
      return _then(_value.copyWith(valueReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HealthcareServiceEligibilityImplCopyWith<$Res>
    implements $HealthcareServiceEligibilityCopyWith<$Res> {
  factory _$$HealthcareServiceEligibilityImplCopyWith(
          _$HealthcareServiceEligibilityImpl value,
          $Res Function(_$HealthcareServiceEligibilityImpl) then) =
      __$$HealthcareServiceEligibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? valueCodeableConcept,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,
      Quantity? valueQuantity,
      Range? valueRange,
      Reference? valueReference,
      FhirMarkdown? comment,
      @JsonKey(name: '_comment') Element? commentElement,
      FhirMarkdown? period,
      @JsonKey(name: '_period') Element? periodElement});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $RangeCopyWith<$Res>? get valueRange;
  @override
  $ReferenceCopyWith<$Res>? get valueReference;
}

/// @nodoc
class __$$HealthcareServiceEligibilityImplCopyWithImpl<$Res>
    extends _$HealthcareServiceEligibilityCopyWithImpl<$Res,
        _$HealthcareServiceEligibilityImpl>
    implements _$$HealthcareServiceEligibilityImplCopyWith<$Res> {
  __$$HealthcareServiceEligibilityImplCopyWithImpl(
      _$HealthcareServiceEligibilityImpl _value,
      $Res Function(_$HealthcareServiceEligibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? valueCodeableConcept = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
    Object? valueReference = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
  }) {
    return _then(_$HealthcareServiceEligibilityImpl(
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      valueReference: freezed == valueReference
          ? _value.valueReference
          : valueReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthcareServiceEligibilityImpl extends _HealthcareServiceEligibility {
  const _$HealthcareServiceEligibilityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      this.valueCodeableConcept,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueQuantity,
      this.valueRange,
      this.valueReference,
      this.comment,
      @JsonKey(name: '_comment') this.commentElement,
      this.period,
      @JsonKey(name: '_period') this.periodElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$HealthcareServiceEligibilityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HealthcareServiceEligibilityImplFromJson(json);

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

  /// [code] Coded value for the eligibility.
  @override
  final CodeableConcept? code;

  /// [valueCodeableConcept] Sometimes an eligibility code requires
  ///  additional data to calculate the eligibility rules.
  @override
  final CodeableConcept? valueCodeableConcept;

  /// [valueBoolean] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  @override
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueQuantity] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  @override
  final Quantity? valueQuantity;

  /// [valueRange] Sometimes an eligibility code requires additional data to
  ///  calculate the eligibility rules.
  @override
  final Range? valueRange;

  /// [valueReference] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  @override
  final Reference? valueReference;

  /// [comment] Describes the eligibility conditions for the service.
  @override
  final FhirMarkdown? comment;

  /// [commentElement] ("_comment") Extensions for comment
  @override
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [period] The period that this eligibility rule is a requirement for
  ///  this service.
  @override
  final FhirMarkdown? period;

  /// [periodElement] ("_period") Extensions for period
  @override
  @JsonKey(name: '_period')
  final Element? periodElement;

  @override
  String toString() {
    return 'HealthcareServiceEligibility(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, valueCodeableConcept: $valueCodeableConcept, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueQuantity: $valueQuantity, valueRange: $valueRange, valueReference: $valueReference, comment: $comment, commentElement: $commentElement, period: $period, periodElement: $periodElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareServiceEligibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.valueCodeableConcept, valueCodeableConcept) ||
                other.valueCodeableConcept == valueCodeableConcept) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueRange, valueRange) ||
                other.valueRange == valueRange) &&
            (identical(other.valueReference, valueReference) ||
                other.valueReference == valueReference) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentElement, commentElement) ||
                other.commentElement == commentElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.periodElement, periodElement) ||
                other.periodElement == periodElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      valueCodeableConcept,
      valueBoolean,
      valueBooleanElement,
      valueQuantity,
      valueRange,
      valueReference,
      comment,
      commentElement,
      period,
      periodElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthcareServiceEligibilityImplCopyWith<
          _$HealthcareServiceEligibilityImpl>
      get copyWith => __$$HealthcareServiceEligibilityImplCopyWithImpl<
          _$HealthcareServiceEligibilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthcareServiceEligibilityImplToJson(
      this,
    );
  }
}

abstract class _HealthcareServiceEligibility
    extends HealthcareServiceEligibility {
  const factory _HealthcareServiceEligibility(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? code,
          final CodeableConcept? valueCodeableConcept,
          final FhirBoolean? valueBoolean,
          @JsonKey(name: '_valueBoolean') final Element? valueBooleanElement,
          final Quantity? valueQuantity,
          final Range? valueRange,
          final Reference? valueReference,
          final FhirMarkdown? comment,
          @JsonKey(name: '_comment') final Element? commentElement,
          final FhirMarkdown? period,
          @JsonKey(name: '_period') final Element? periodElement}) =
      _$HealthcareServiceEligibilityImpl;
  const _HealthcareServiceEligibility._() : super._();

  factory _HealthcareServiceEligibility.fromJson(Map<String, dynamic> json) =
      _$HealthcareServiceEligibilityImpl.fromJson;

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

  /// [code] Coded value for the eligibility.
  CodeableConcept? get code;
  @override

  /// [valueCodeableConcept] Sometimes an eligibility code requires
  ///  additional data to calculate the eligibility rules.
  CodeableConcept? get valueCodeableConcept;
  @override

  /// [valueBoolean] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  @JsonKey(name: '_valueBoolean')
  Element? get valueBooleanElement;
  @override

  /// [valueQuantity] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  Quantity? get valueQuantity;
  @override

  /// [valueRange] Sometimes an eligibility code requires additional data to
  ///  calculate the eligibility rules.
  Range? get valueRange;
  @override

  /// [valueReference] Sometimes an eligibility code requires additional data
  ///  to calculate the eligibility rules.
  Reference? get valueReference;
  @override

  /// [comment] Describes the eligibility conditions for the service.
  FhirMarkdown? get comment;
  @override

  /// [commentElement] ("_comment") Extensions for comment
  @JsonKey(name: '_comment')
  Element? get commentElement;
  @override

  /// [period] The period that this eligibility rule is a requirement for
  ///  this service.
  FhirMarkdown? get period;
  @override

  /// [periodElement] ("_period") Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement;
  @override
  @JsonKey(ignore: true)
  _$$HealthcareServiceEligibilityImplCopyWith<
          _$HealthcareServiceEligibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  /// [resourceType] This is a Location resource
  @JsonKey(unknownEnumValue: R6ResourceType.Location)
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

  /// [identifier] Unique code or number identifying the location to its
  ///  users.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status property covers the general availability of the
  ///  resource, not the current value which may be covered by the
  ///  operationalStatus, or by a schedule/slots if they are configured for
  ///  the location.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement => throw _privateConstructorUsedError;

  /// [operationalStatus] The operational status covers operation values most
  ///  relevant to beds (but can also apply to rooms/units/chairs/etc. such
  ///  as an isolation unit/dialysis chair). This typically covers concepts
  ///  such as contamination, housekeeping, and other activities like
  ///  maintenance.
  Coding? get operationalStatus => throw _privateConstructorUsedError;

  /// [name] Name of the location as used by humans. Does not need to be
  ///  unique.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  /// [alias] A list of alternate names that the location is known as, or was
  ///  known as, in the past.
  List<String>? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] ("_alias") Extensions for alias
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement => throw _privateConstructorUsedError;

  /// [description] Description of the Location, which helps in finding or
  ///  referencing the place.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement => throw _privateConstructorUsedError;

  /// [mode] Indicates whether a resource instance represents a specific
  ///  location or a class of locations.
  FhirCode? get mode => throw _privateConstructorUsedError;

  /// [modeElement] ("_mode") Extensions for mode
  @JsonKey(name: '_mode')
  Element? get modeElement => throw _privateConstructorUsedError;

  /// [type] Indicates the type of function performed at the location.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [contact] The contact details of communication devices available at the
  ///  location. This can include addresses, phone numbers, fax numbers,
  ///  mobile numbers, email addresses and web sites.
  List<ExtendedContactDetail>? get contact =>
      throw _privateConstructorUsedError;

  /// [address] Physical location.
  Address? get address => throw _privateConstructorUsedError;

  /// [form] Physical form of the location, e.g. building, room, vehicle,
  ///  road, virtual.
  CodeableConcept? get form => throw _privateConstructorUsedError;

  /// [position] The absolute geographic location of the Location, expressed
  ///  using the WGS84 datum (This is the same co-ordinate system used in
  ///  KML).
  LocationPosition? get position => throw _privateConstructorUsedError;

  /// [managingOrganization] The organization responsible for the
  ///  provisioning and upkeep of the location.
  Reference? get managingOrganization => throw _privateConstructorUsedError;

  /// [partOf] Another Location of which this Location is physically a part
  ///  of.
  Reference? get partOf => throw _privateConstructorUsedError;

  /// [characteristic] Collection of characteristics (attributes).
  List<CodeableConcept>? get characteristic =>
      throw _privateConstructorUsedError;

  /// [hoursOfOperation] What days/times during a week is this location
  ///  usually open, and any exceptions where the location is not available.
  Availability? get hoursOfOperation => throw _privateConstructorUsedError;

  /// [virtualService] Connection details of a virtual service (e.g. shared
  ///  conference call facility with dedicated number/details).
  List<VirtualServiceDetail>? get virtualService =>
      throw _privateConstructorUsedError;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the location.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Location)
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
      Coding? operationalStatus,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element>? aliasElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      FhirCode? mode,
      @JsonKey(name: '_mode') Element? modeElement,
      List<CodeableConcept>? type,
      List<ExtendedContactDetail>? contact,
      Address? address,
      CodeableConcept? form,
      LocationPosition? position,
      Reference? managingOrganization,
      Reference? partOf,
      List<CodeableConcept>? characteristic,
      Availability? hoursOfOperation,
      List<VirtualServiceDetail>? virtualService,
      List<Reference>? endpoint});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodingCopyWith<$Res>? get operationalStatus;
  $AddressCopyWith<$Res>? get address;
  $CodeableConceptCopyWith<$Res>? get form;
  $LocationPositionCopyWith<$Res>? get position;
  $ReferenceCopyWith<$Res>? get managingOrganization;
  $ReferenceCopyWith<$Res>? get partOf;
  $AvailabilityCopyWith<$Res>? get hoursOfOperation;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

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
    Object? operationalStatus = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? type = freezed,
    Object? contact = freezed,
    Object? address = freezed,
    Object? form = freezed,
    Object? position = freezed,
    Object? managingOrganization = freezed,
    Object? partOf = freezed,
    Object? characteristic = freezed,
    Object? hoursOfOperation = freezed,
    Object? virtualService = freezed,
    Object? endpoint = freezed,
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
      operationalStatus: freezed == operationalStatus
          ? _value.operationalStatus
          : operationalStatus // ignore: cast_nullable_to_non_nullable
              as Coding?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationPosition?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      characteristic: freezed == characteristic
          ? _value.characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      hoursOfOperation: freezed == hoursOfOperation
          ? _value.hoursOfOperation
          : hoursOfOperation // ignore: cast_nullable_to_non_nullable
              as Availability?,
      virtualService: freezed == virtualService
          ? _value.virtualService
          : virtualService // ignore: cast_nullable_to_non_nullable
              as List<VirtualServiceDetail>?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $CodingCopyWith<$Res>? get operationalStatus {
    if (_value.operationalStatus == null) {
      return null;
    }

    return $CodingCopyWith<$Res>(_value.operationalStatus!, (value) {
      return _then(_value.copyWith(operationalStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $LocationPositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $LocationPositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get managingOrganization {
    if (_value.managingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.managingOrganization!, (value) {
      return _then(_value.copyWith(managingOrganization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get partOf {
    if (_value.partOf == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.partOf!, (value) {
      return _then(_value.copyWith(partOf: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get hoursOfOperation {
    if (_value.hoursOfOperation == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.hoursOfOperation!, (value) {
      return _then(_value.copyWith(hoursOfOperation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Location)
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
      Coding? operationalStatus,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element>? aliasElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      FhirCode? mode,
      @JsonKey(name: '_mode') Element? modeElement,
      List<CodeableConcept>? type,
      List<ExtendedContactDetail>? contact,
      Address? address,
      CodeableConcept? form,
      LocationPosition? position,
      Reference? managingOrganization,
      Reference? partOf,
      List<CodeableConcept>? characteristic,
      Availability? hoursOfOperation,
      List<VirtualServiceDetail>? virtualService,
      List<Reference>? endpoint});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodingCopyWith<$Res>? get operationalStatus;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CodeableConceptCopyWith<$Res>? get form;
  @override
  $LocationPositionCopyWith<$Res>? get position;
  @override
  $ReferenceCopyWith<$Res>? get managingOrganization;
  @override
  $ReferenceCopyWith<$Res>? get partOf;
  @override
  $AvailabilityCopyWith<$Res>? get hoursOfOperation;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
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
    Object? operationalStatus = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? mode = freezed,
    Object? modeElement = freezed,
    Object? type = freezed,
    Object? contact = freezed,
    Object? address = freezed,
    Object? form = freezed,
    Object? position = freezed,
    Object? managingOrganization = freezed,
    Object? partOf = freezed,
    Object? characteristic = freezed,
    Object? hoursOfOperation = freezed,
    Object? virtualService = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$LocationImpl(
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
      operationalStatus: freezed == operationalStatus
          ? _value.operationalStatus
          : operationalStatus // ignore: cast_nullable_to_non_nullable
              as Coding?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      alias: freezed == alias
          ? _value._alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value._aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      modeElement: freezed == modeElement
          ? _value.modeElement
          : modeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationPosition?,
      managingOrganization: freezed == managingOrganization
          ? _value.managingOrganization
          : managingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      characteristic: freezed == characteristic
          ? _value._characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      hoursOfOperation: freezed == hoursOfOperation
          ? _value.hoursOfOperation
          : hoursOfOperation // ignore: cast_nullable_to_non_nullable
              as Availability?,
      virtualService: freezed == virtualService
          ? _value._virtualService
          : virtualService // ignore: cast_nullable_to_non_nullable
              as List<VirtualServiceDetail>?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl extends _Location {
  const _$LocationImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.Location)
      this.resourceType = R6ResourceType.Location,
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
      this.operationalStatus,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<Element>? aliasElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.mode,
      @JsonKey(name: '_mode') this.modeElement,
      final List<CodeableConcept>? type,
      final List<ExtendedContactDetail>? contact,
      this.address,
      this.form,
      this.position,
      this.managingOrganization,
      this.partOf,
      final List<CodeableConcept>? characteristic,
      this.hoursOfOperation,
      final List<VirtualServiceDetail>? virtualService,
      final List<Reference>? endpoint})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _alias = alias,
        _aliasElement = aliasElement,
        _type = type,
        _contact = contact,
        _characteristic = characteristic,
        _virtualService = virtualService,
        _endpoint = endpoint,
        super._();

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  /// [resourceType] This is a Location resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.Location)
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

  /// [identifier] Unique code or number identifying the location to its
  ///  users.
  final List<Identifier>? _identifier;

  /// [identifier] Unique code or number identifying the location to its
  ///  users.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status property covers the general availability of the
  ///  resource, not the current value which may be covered by the
  ///  operationalStatus, or by a schedule/slots if they are configured for
  ///  the location.
  @override
  final FhirCode? status;

  /// [statusElement] ("_status") Extensions for status
  @override
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [operationalStatus] The operational status covers operation values most
  ///  relevant to beds (but can also apply to rooms/units/chairs/etc. such
  ///  as an isolation unit/dialysis chair). This typically covers concepts
  ///  such as contamination, housekeeping, and other activities like
  ///  maintenance.
  @override
  final Coding? operationalStatus;

  /// [name] Name of the location as used by humans. Does not need to be
  ///  unique.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [alias] A list of alternate names that the location is known as, or was
  ///  known as, in the past.
  final List<String>? _alias;

  /// [alias] A list of alternate names that the location is known as, or was
  ///  known as, in the past.
  @override
  List<String>? get alias {
    final value = _alias;
    if (value == null) return null;
    if (_alias is EqualUnmodifiableListView) return _alias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aliasElement] ("_alias") Extensions for alias
  final List<Element>? _aliasElement;

  /// [aliasElement] ("_alias") Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement {
    final value = _aliasElement;
    if (value == null) return null;
    if (_aliasElement is EqualUnmodifiableListView) return _aliasElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] Description of the Location, which helps in finding or
  ///  referencing the place.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] ("_description") Extensions for description
  @override
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [mode] Indicates whether a resource instance represents a specific
  ///  location or a class of locations.
  @override
  final FhirCode? mode;

  /// [modeElement] ("_mode") Extensions for mode
  @override
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [type] Indicates the type of function performed at the location.
  final List<CodeableConcept>? _type;

  /// [type] Indicates the type of function performed at the location.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contact] The contact details of communication devices available at the
  ///  location. This can include addresses, phone numbers, fax numbers,
  ///  mobile numbers, email addresses and web sites.
  final List<ExtendedContactDetail>? _contact;

  /// [contact] The contact details of communication devices available at the
  ///  location. This can include addresses, phone numbers, fax numbers,
  ///  mobile numbers, email addresses and web sites.
  @override
  List<ExtendedContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [address] Physical location.
  @override
  final Address? address;

  /// [form] Physical form of the location, e.g. building, room, vehicle,
  ///  road, virtual.
  @override
  final CodeableConcept? form;

  /// [position] The absolute geographic location of the Location, expressed
  ///  using the WGS84 datum (This is the same co-ordinate system used in
  ///  KML).
  @override
  final LocationPosition? position;

  /// [managingOrganization] The organization responsible for the
  ///  provisioning and upkeep of the location.
  @override
  final Reference? managingOrganization;

  /// [partOf] Another Location of which this Location is physically a part
  ///  of.
  @override
  final Reference? partOf;

  /// [characteristic] Collection of characteristics (attributes).
  final List<CodeableConcept>? _characteristic;

  /// [characteristic] Collection of characteristics (attributes).
  @override
  List<CodeableConcept>? get characteristic {
    final value = _characteristic;
    if (value == null) return null;
    if (_characteristic is EqualUnmodifiableListView) return _characteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [hoursOfOperation] What days/times during a week is this location
  ///  usually open, and any exceptions where the location is not available.
  @override
  final Availability? hoursOfOperation;

  /// [virtualService] Connection details of a virtual service (e.g. shared
  ///  conference call facility with dedicated number/details).
  final List<VirtualServiceDetail>? _virtualService;

  /// [virtualService] Connection details of a virtual service (e.g. shared
  ///  conference call facility with dedicated number/details).
  @override
  List<VirtualServiceDetail>? get virtualService {
    final value = _virtualService;
    if (value == null) return null;
    if (_virtualService is EqualUnmodifiableListView) return _virtualService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the location.
  final List<Reference>? _endpoint;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the location.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Location(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, operationalStatus: $operationalStatus, name: $name, nameElement: $nameElement, alias: $alias, aliasElement: $aliasElement, description: $description, descriptionElement: $descriptionElement, mode: $mode, modeElement: $modeElement, type: $type, contact: $contact, address: $address, form: $form, position: $position, managingOrganization: $managingOrganization, partOf: $partOf, characteristic: $characteristic, hoursOfOperation: $hoursOfOperation, virtualService: $virtualService, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
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
            (identical(other.operationalStatus, operationalStatus) ||
                other.operationalStatus == operationalStatus) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            const DeepCollectionEquality().equals(other._alias, _alias) &&
            const DeepCollectionEquality()
                .equals(other._aliasElement, _aliasElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.modeElement, modeElement) ||
                other.modeElement == modeElement) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managingOrganization, managingOrganization) ||
                other.managingOrganization == managingOrganization) &&
            (identical(other.partOf, partOf) || other.partOf == partOf) &&
            const DeepCollectionEquality()
                .equals(other._characteristic, _characteristic) &&
            (identical(other.hoursOfOperation, hoursOfOperation) ||
                other.hoursOfOperation == hoursOfOperation) &&
            const DeepCollectionEquality()
                .equals(other._virtualService, _virtualService) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint));
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
        operationalStatus,
        name,
        nameElement,
        const DeepCollectionEquality().hash(_alias),
        const DeepCollectionEquality().hash(_aliasElement),
        description,
        descriptionElement,
        mode,
        modeElement,
        const DeepCollectionEquality().hash(_type),
        const DeepCollectionEquality().hash(_contact),
        address,
        form,
        position,
        managingOrganization,
        partOf,
        const DeepCollectionEquality().hash(_characteristic),
        hoursOfOperation,
        const DeepCollectionEquality().hash(_virtualService),
        const DeepCollectionEquality().hash(_endpoint)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location extends Location {
  const factory _Location(
      {@JsonKey(unknownEnumValue: R6ResourceType.Location)
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
      final Coding? operationalStatus,
      final String? name,
      @JsonKey(name: '_name') final Element? nameElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<Element>? aliasElement,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final Element? descriptionElement,
      final FhirCode? mode,
      @JsonKey(name: '_mode') final Element? modeElement,
      final List<CodeableConcept>? type,
      final List<ExtendedContactDetail>? contact,
      final Address? address,
      final CodeableConcept? form,
      final LocationPosition? position,
      final Reference? managingOrganization,
      final Reference? partOf,
      final List<CodeableConcept>? characteristic,
      final Availability? hoursOfOperation,
      final List<VirtualServiceDetail>? virtualService,
      final List<Reference>? endpoint}) = _$LocationImpl;
  const _Location._() : super._();

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override

  /// [resourceType] This is a Location resource
  @JsonKey(unknownEnumValue: R6ResourceType.Location)
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

  /// [identifier] Unique code or number identifying the location to its
  ///  users.
  List<Identifier>? get identifier;
  @override

  /// [status] The status property covers the general availability of the
  ///  resource, not the current value which may be covered by the
  ///  operationalStatus, or by a schedule/slots if they are configured for
  ///  the location.
  FhirCode? get status;
  @override

  /// [statusElement] ("_status") Extensions for status
  @JsonKey(name: '_status')
  Element? get statusElement;
  @override

  /// [operationalStatus] The operational status covers operation values most
  ///  relevant to beds (but can also apply to rooms/units/chairs/etc. such
  ///  as an isolation unit/dialysis chair). This typically covers concepts
  ///  such as contamination, housekeeping, and other activities like
  ///  maintenance.
  Coding? get operationalStatus;
  @override

  /// [name] Name of the location as used by humans. Does not need to be
  ///  unique.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override

  /// [alias] A list of alternate names that the location is known as, or was
  ///  known as, in the past.
  List<String>? get alias;
  @override

  /// [aliasElement] ("_alias") Extensions for alias
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement;
  @override

  /// [description] Description of the Location, which helps in finding or
  ///  referencing the place.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement;
  @override

  /// [mode] Indicates whether a resource instance represents a specific
  ///  location or a class of locations.
  FhirCode? get mode;
  @override

  /// [modeElement] ("_mode") Extensions for mode
  @JsonKey(name: '_mode')
  Element? get modeElement;
  @override

  /// [type] Indicates the type of function performed at the location.
  List<CodeableConcept>? get type;
  @override

  /// [contact] The contact details of communication devices available at the
  ///  location. This can include addresses, phone numbers, fax numbers,
  ///  mobile numbers, email addresses and web sites.
  List<ExtendedContactDetail>? get contact;
  @override

  /// [address] Physical location.
  Address? get address;
  @override

  /// [form] Physical form of the location, e.g. building, room, vehicle,
  ///  road, virtual.
  CodeableConcept? get form;
  @override

  /// [position] The absolute geographic location of the Location, expressed
  ///  using the WGS84 datum (This is the same co-ordinate system used in
  ///  KML).
  LocationPosition? get position;
  @override

  /// [managingOrganization] The organization responsible for the
  ///  provisioning and upkeep of the location.
  Reference? get managingOrganization;
  @override

  /// [partOf] Another Location of which this Location is physically a part
  ///  of.
  Reference? get partOf;
  @override

  /// [characteristic] Collection of characteristics (attributes).
  List<CodeableConcept>? get characteristic;
  @override

  /// [hoursOfOperation] What days/times during a week is this location
  ///  usually open, and any exceptions where the location is not available.
  Availability? get hoursOfOperation;
  @override

  /// [virtualService] Connection details of a virtual service (e.g. shared
  ///  conference call facility with dedicated number/details).
  List<VirtualServiceDetail>? get virtualService;
  @override

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the location.
  List<Reference>? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationPosition _$LocationPositionFromJson(Map<String, dynamic> json) {
  return _LocationPosition.fromJson(json);
}

/// @nodoc
mixin _$LocationPosition {
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

  /// [longitude] Longitude. The value domain and the interpretation are the
  ///  same as for the text of the longitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get longitude => throw _privateConstructorUsedError;

  /// [longitudeElement] ("_longitude") Extensions for longitude
  @JsonKey(name: '_longitude')
  Element? get longitudeElement => throw _privateConstructorUsedError;

  /// [latitude] Latitude. The value domain and the interpretation are the
  ///  same as for the text of the latitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get latitude => throw _privateConstructorUsedError;

  /// [latitudeElement] ("_latitude") Extensions for latitude
  @JsonKey(name: '_latitude')
  Element? get latitudeElement => throw _privateConstructorUsedError;

  /// [altitude] Altitude. The value domain and the interpretation are the
  ///  same as for the text of the altitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get altitude => throw _privateConstructorUsedError;

  /// [altitudeElement] ("_altitude") Extensions for altitude
  @JsonKey(name: '_altitude')
  Element? get altitudeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationPositionCopyWith<LocationPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPositionCopyWith<$Res> {
  factory $LocationPositionCopyWith(
          LocationPosition value, $Res Function(LocationPosition) then) =
      _$LocationPositionCopyWithImpl<$Res, LocationPosition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDecimal? longitude,
      @JsonKey(name: '_longitude') Element? longitudeElement,
      FhirDecimal? latitude,
      @JsonKey(name: '_latitude') Element? latitudeElement,
      FhirDecimal? altitude,
      @JsonKey(name: '_altitude') Element? altitudeElement});
}

/// @nodoc
class _$LocationPositionCopyWithImpl<$Res, $Val extends LocationPosition>
    implements $LocationPositionCopyWith<$Res> {
  _$LocationPositionCopyWithImpl(this._value, this._then);

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
    Object? longitude = freezed,
    Object? longitudeElement = freezed,
    Object? latitude = freezed,
    Object? latitudeElement = freezed,
    Object? altitude = freezed,
    Object? altitudeElement = freezed,
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      longitudeElement: freezed == longitudeElement
          ? _value.longitudeElement
          : longitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      latitudeElement: freezed == latitudeElement
          ? _value.latitudeElement
          : latitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      altitudeElement: freezed == altitudeElement
          ? _value.altitudeElement
          : altitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationPositionImplCopyWith<$Res>
    implements $LocationPositionCopyWith<$Res> {
  factory _$$LocationPositionImplCopyWith(_$LocationPositionImpl value,
          $Res Function(_$LocationPositionImpl) then) =
      __$$LocationPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDecimal? longitude,
      @JsonKey(name: '_longitude') Element? longitudeElement,
      FhirDecimal? latitude,
      @JsonKey(name: '_latitude') Element? latitudeElement,
      FhirDecimal? altitude,
      @JsonKey(name: '_altitude') Element? altitudeElement});
}

/// @nodoc
class __$$LocationPositionImplCopyWithImpl<$Res>
    extends _$LocationPositionCopyWithImpl<$Res, _$LocationPositionImpl>
    implements _$$LocationPositionImplCopyWith<$Res> {
  __$$LocationPositionImplCopyWithImpl(_$LocationPositionImpl _value,
      $Res Function(_$LocationPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? longitude = freezed,
    Object? longitudeElement = freezed,
    Object? latitude = freezed,
    Object? latitudeElement = freezed,
    Object? altitude = freezed,
    Object? altitudeElement = freezed,
  }) {
    return _then(_$LocationPositionImpl(
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      longitudeElement: freezed == longitudeElement
          ? _value.longitudeElement
          : longitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      latitudeElement: freezed == latitudeElement
          ? _value.latitudeElement
          : latitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      altitudeElement: freezed == altitudeElement
          ? _value.altitudeElement
          : altitudeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPositionImpl extends _LocationPosition {
  const _$LocationPositionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.longitude,
      @JsonKey(name: '_longitude') this.longitudeElement,
      this.latitude,
      @JsonKey(name: '_latitude') this.latitudeElement,
      this.altitude,
      @JsonKey(name: '_altitude') this.altitudeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$LocationPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPositionImplFromJson(json);

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

  /// [longitude] Longitude. The value domain and the interpretation are the
  ///  same as for the text of the longitude element in KML (see notes on
  ///  Location main page).
  @override
  final FhirDecimal? longitude;

  /// [longitudeElement] ("_longitude") Extensions for longitude
  @override
  @JsonKey(name: '_longitude')
  final Element? longitudeElement;

  /// [latitude] Latitude. The value domain and the interpretation are the
  ///  same as for the text of the latitude element in KML (see notes on
  ///  Location main page).
  @override
  final FhirDecimal? latitude;

  /// [latitudeElement] ("_latitude") Extensions for latitude
  @override
  @JsonKey(name: '_latitude')
  final Element? latitudeElement;

  /// [altitude] Altitude. The value domain and the interpretation are the
  ///  same as for the text of the altitude element in KML (see notes on
  ///  Location main page).
  @override
  final FhirDecimal? altitude;

  /// [altitudeElement] ("_altitude") Extensions for altitude
  @override
  @JsonKey(name: '_altitude')
  final Element? altitudeElement;

  @override
  String toString() {
    return 'LocationPosition(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, longitude: $longitude, longitudeElement: $longitudeElement, latitude: $latitude, latitudeElement: $latitudeElement, altitude: $altitude, altitudeElement: $altitudeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPositionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.longitudeElement, longitudeElement) ||
                other.longitudeElement == longitudeElement) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.latitudeElement, latitudeElement) ||
                other.latitudeElement == latitudeElement) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.altitudeElement, altitudeElement) ||
                other.altitudeElement == altitudeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      longitude,
      longitudeElement,
      latitude,
      latitudeElement,
      altitude,
      altitudeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPositionImplCopyWith<_$LocationPositionImpl> get copyWith =>
      __$$LocationPositionImplCopyWithImpl<_$LocationPositionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationPositionImplToJson(
      this,
    );
  }
}

abstract class _LocationPosition extends LocationPosition {
  const factory _LocationPosition(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirDecimal? longitude,
          @JsonKey(name: '_longitude') final Element? longitudeElement,
          final FhirDecimal? latitude,
          @JsonKey(name: '_latitude') final Element? latitudeElement,
          final FhirDecimal? altitude,
          @JsonKey(name: '_altitude') final Element? altitudeElement}) =
      _$LocationPositionImpl;
  const _LocationPosition._() : super._();

  factory _LocationPosition.fromJson(Map<String, dynamic> json) =
      _$LocationPositionImpl.fromJson;

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

  /// [longitude] Longitude. The value domain and the interpretation are the
  ///  same as for the text of the longitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get longitude;
  @override

  /// [longitudeElement] ("_longitude") Extensions for longitude
  @JsonKey(name: '_longitude')
  Element? get longitudeElement;
  @override

  /// [latitude] Latitude. The value domain and the interpretation are the
  ///  same as for the text of the latitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get latitude;
  @override

  /// [latitudeElement] ("_latitude") Extensions for latitude
  @JsonKey(name: '_latitude')
  Element? get latitudeElement;
  @override

  /// [altitude] Altitude. The value domain and the interpretation are the
  ///  same as for the text of the altitude element in KML (see notes on
  ///  Location main page).
  FhirDecimal? get altitude;
  @override

  /// [altitudeElement] ("_altitude") Extensions for altitude
  @JsonKey(name: '_altitude')
  Element? get altitudeElement;
  @override
  @JsonKey(ignore: true)
  _$$LocationPositionImplCopyWith<_$LocationPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  /// [resourceType] This is a Organization resource
  @JsonKey(unknownEnumValue: R6ResourceType.Organization)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the organization across multiple disparate systems.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] Whether the organization's record is still in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement => throw _privateConstructorUsedError;

  /// [type] The kind(s) of organization that this is.
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;

  /// [name] A name associated with the organization.
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement => throw _privateConstructorUsedError;

  /// [alias] A list of alternate names that the organization is known as, or
  ///  was known as in the past.
  List<String>? get alias => throw _privateConstructorUsedError;

  /// [aliasElement] ("_alias") Extensions for alias
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement => throw _privateConstructorUsedError;

  /// [description] Description of the organization, which helps provide
  ///  additional general context on the organization to ensure that the
  ///  correct organization is selected.
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement => throw _privateConstructorUsedError;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific Organization. This can include addresses,
  ///  phone numbers, fax numbers, mobile numbers, email addresses and web
  ///  sites.
  List<ExtendedContactDetail>? get contact =>
      throw _privateConstructorUsedError;

  /// [partOf] The organization of which this organization forms a part.
  Reference? get partOf => throw _privateConstructorUsedError;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the organization.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  /// [qualification] The official certifications, accreditations, training,
  ///  designations and licenses that authorize and/or otherwise endorse the
  ///  provision of care by the organization. For example, an approval to
  ///  provide a type of services issued by a certifying body (such as the US
  ///  Joint Commission) to an organization.
  List<OrganizationQualification>? get qualification =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Organization)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      List<CodeableConcept>? type,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element>? aliasElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      List<ExtendedContactDetail>? contact,
      Reference? partOf,
      List<Reference>? endpoint,
      List<OrganizationQualification>? qualification});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get partOf;
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? contact = freezed,
    Object? partOf = freezed,
    Object? endpoint = freezed,
    Object? qualification = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value.aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as List<OrganizationQualification>?,
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
  $ReferenceCopyWith<$Res>? get partOf {
    if (_value.partOf == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.partOf!, (value) {
      return _then(_value.copyWith(partOf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationImplCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$OrganizationImplCopyWith(
          _$OrganizationImpl value, $Res Function(_$OrganizationImpl) then) =
      __$$OrganizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.Organization)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      List<CodeableConcept>? type,
      String? name,
      @JsonKey(name: '_name') Element? nameElement,
      List<String>? alias,
      @JsonKey(name: '_alias') List<Element>? aliasElement,
      FhirMarkdown? description,
      @JsonKey(name: '_description') Element? descriptionElement,
      List<ExtendedContactDetail>? contact,
      Reference? partOf,
      List<Reference>? endpoint,
      List<OrganizationQualification>? qualification});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get partOf;
}

/// @nodoc
class __$$OrganizationImplCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$OrganizationImpl>
    implements _$$OrganizationImplCopyWith<$Res> {
  __$$OrganizationImplCopyWithImpl(
      _$OrganizationImpl _value, $Res Function(_$OrganizationImpl) _then)
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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? alias = freezed,
    Object? aliasElement = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? contact = freezed,
    Object? partOf = freezed,
    Object? endpoint = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_$OrganizationImpl(
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      alias: freezed == alias
          ? _value._alias
          : alias // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aliasElement: freezed == aliasElement
          ? _value._aliasElement
          : aliasElement // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      qualification: freezed == qualification
          ? _value._qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as List<OrganizationQualification>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationImpl extends _Organization {
  const _$OrganizationImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.Organization)
      this.resourceType = R6ResourceType.Organization,
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
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      final List<CodeableConcept>? type,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      final List<String>? alias,
      @JsonKey(name: '_alias') final List<Element>? aliasElement,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<ExtendedContactDetail>? contact,
      this.partOf,
      final List<Reference>? endpoint,
      final List<OrganizationQualification>? qualification})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _type = type,
        _alias = alias,
        _aliasElement = aliasElement,
        _contact = contact,
        _endpoint = endpoint,
        _qualification = qualification,
        super._();

  factory _$OrganizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationImplFromJson(json);

  /// [resourceType] This is a Organization resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.Organization)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the organization across multiple disparate systems.
  final List<Identifier>? _identifier;

  /// [identifier] Identifier for the organization that is used to identify
  ///  the organization across multiple disparate systems.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] Whether the organization's record is still in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] ("_active") Extensions for active
  @override
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [type] The kind(s) of organization that this is.
  final List<CodeableConcept>? _type;

  /// [type] The kind(s) of organization that this is.
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A name associated with the organization.
  @override
  final String? name;

  /// [nameElement] ("_name") Extensions for name
  @override
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [alias] A list of alternate names that the organization is known as, or
  ///  was known as in the past.
  final List<String>? _alias;

  /// [alias] A list of alternate names that the organization is known as, or
  ///  was known as in the past.
  @override
  List<String>? get alias {
    final value = _alias;
    if (value == null) return null;
    if (_alias is EqualUnmodifiableListView) return _alias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [aliasElement] ("_alias") Extensions for alias
  final List<Element>? _aliasElement;

  /// [aliasElement] ("_alias") Extensions for alias
  @override
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement {
    final value = _aliasElement;
    if (value == null) return null;
    if (_aliasElement is EqualUnmodifiableListView) return _aliasElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] Description of the organization, which helps provide
  ///  additional general context on the organization to ensure that the
  ///  correct organization is selected.
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] ("_description") Extensions for description
  @override
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific Organization. This can include addresses,
  ///  phone numbers, fax numbers, mobile numbers, email addresses and web
  ///  sites.
  final List<ExtendedContactDetail>? _contact;

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific Organization. This can include addresses,
  ///  phone numbers, fax numbers, mobile numbers, email addresses and web
  ///  sites.
  @override
  List<ExtendedContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [partOf] The organization of which this organization forms a part.
  @override
  final Reference? partOf;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the organization.
  final List<Reference>? _endpoint;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the organization.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [qualification] The official certifications, accreditations, training,
  ///  designations and licenses that authorize and/or otherwise endorse the
  ///  provision of care by the organization. For example, an approval to
  ///  provide a type of services issued by a certifying body (such as the US
  ///  Joint Commission) to an organization.
  final List<OrganizationQualification>? _qualification;

  /// [qualification] The official certifications, accreditations, training,
  ///  designations and licenses that authorize and/or otherwise endorse the
  ///  provision of care by the organization. For example, an approval to
  ///  provide a type of services issued by a certifying body (such as the US
  ///  Joint Commission) to an organization.
  @override
  List<OrganizationQualification>? get qualification {
    final value = _qualification;
    if (value == null) return null;
    if (_qualification is EqualUnmodifiableListView) return _qualification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Organization(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, type: $type, name: $name, nameElement: $nameElement, alias: $alias, aliasElement: $aliasElement, description: $description, descriptionElement: $descriptionElement, contact: $contact, partOf: $partOf, endpoint: $endpoint, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationImpl &&
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
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            const DeepCollectionEquality().equals(other._alias, _alias) &&
            const DeepCollectionEquality()
                .equals(other._aliasElement, _aliasElement) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.partOf, partOf) || other.partOf == partOf) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint) &&
            const DeepCollectionEquality()
                .equals(other._qualification, _qualification));
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
        active,
        activeElement,
        const DeepCollectionEquality().hash(_type),
        name,
        nameElement,
        const DeepCollectionEquality().hash(_alias),
        const DeepCollectionEquality().hash(_aliasElement),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_contact),
        partOf,
        const DeepCollectionEquality().hash(_endpoint),
        const DeepCollectionEquality().hash(_qualification)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      __$$OrganizationImplCopyWithImpl<_$OrganizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationImplToJson(
      this,
    );
  }
}

abstract class _Organization extends Organization {
  const factory _Organization(
          {@JsonKey(unknownEnumValue: R6ResourceType.Organization)
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
          final FhirBoolean? active,
          @JsonKey(name: '_active') final Element? activeElement,
          final List<CodeableConcept>? type,
          final String? name,
          @JsonKey(name: '_name') final Element? nameElement,
          final List<String>? alias,
          @JsonKey(name: '_alias') final List<Element>? aliasElement,
          final FhirMarkdown? description,
          @JsonKey(name: '_description') final Element? descriptionElement,
          final List<ExtendedContactDetail>? contact,
          final Reference? partOf,
          final List<Reference>? endpoint,
          final List<OrganizationQualification>? qualification}) =
      _$OrganizationImpl;
  const _Organization._() : super._();

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$OrganizationImpl.fromJson;

  @override

  /// [resourceType] This is a Organization resource
  @JsonKey(unknownEnumValue: R6ResourceType.Organization)
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

  /// [identifier] Identifier for the organization that is used to identify
  ///  the organization across multiple disparate systems.
  List<Identifier>? get identifier;
  @override

  /// [active] Whether the organization's record is still in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement;
  @override

  /// [type] The kind(s) of organization that this is.
  List<CodeableConcept>? get type;
  @override

  /// [name] A name associated with the organization.
  String? get name;
  @override

  /// [nameElement] ("_name") Extensions for name
  @JsonKey(name: '_name')
  Element? get nameElement;
  @override

  /// [alias] A list of alternate names that the organization is known as, or
  ///  was known as in the past.
  List<String>? get alias;
  @override

  /// [aliasElement] ("_alias") Extensions for alias
  @JsonKey(name: '_alias')
  List<Element>? get aliasElement;
  @override

  /// [description] Description of the organization, which helps provide
  ///  additional general context on the organization to ensure that the
  ///  correct organization is selected.
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] ("_description") Extensions for description
  @JsonKey(name: '_description')
  Element? get descriptionElement;
  @override

  /// [contact] The contact details of communication devices available
  ///  relevant to the specific Organization. This can include addresses,
  ///  phone numbers, fax numbers, mobile numbers, email addresses and web
  ///  sites.
  List<ExtendedContactDetail>? get contact;
  @override

  /// [partOf] The organization of which this organization forms a part.
  Reference? get partOf;
  @override

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for the organization.
  List<Reference>? get endpoint;
  @override

  /// [qualification] The official certifications, accreditations, training,
  ///  designations and licenses that authorize and/or otherwise endorse the
  ///  provision of care by the organization. For example, an approval to
  ///  provide a type of services issued by a certifying body (such as the US
  ///  Joint Commission) to an organization.
  List<OrganizationQualification>? get qualification;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationImplCopyWith<_$OrganizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationQualification _$OrganizationQualificationFromJson(
    Map<String, dynamic> json) {
  return _OrganizationQualification.fromJson(json);
}

/// @nodoc
mixin _$OrganizationQualification {
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

  /// [identifier] An identifier allocated to this qualification for this
  ///  organization.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [code] Coded representation of the qualification.
  CodeableConcept get code => throw _privateConstructorUsedError;

  /// [status] Qualifications often take time to attain and might be tracked
  ///  during this time, and completed qualifications might not always be
  ///  valid. This status concept has some overlap with period and both
  ///  should be considered together. Refer to the descriptions of the codes
  ///  for how the period should be interpreted.
  /// If a qualification is revoked or otherwise cancelled, then the period
  ///  is likely to be ignored, and might be related to when it was active.
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [period] Period during which the qualification is valid.
  Period? get period => throw _privateConstructorUsedError;

  /// [issuer] Organization that regulates and issues the qualification.
  Reference? get issuer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationQualificationCopyWith<OrganizationQualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationQualificationCopyWith<$Res> {
  factory $OrganizationQualificationCopyWith(OrganizationQualification value,
          $Res Function(OrganizationQualification) then) =
      _$OrganizationQualificationCopyWithImpl<$Res, OrganizationQualification>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept code,
      CodeableConcept? status,
      Period? period,
      Reference? issuer});

  $CodeableConceptCopyWith<$Res> get code;
  $CodeableConceptCopyWith<$Res>? get status;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get issuer;
}

/// @nodoc
class _$OrganizationQualificationCopyWithImpl<$Res,
        $Val extends OrganizationQualification>
    implements $OrganizationQualificationCopyWith<$Res> {
  _$OrganizationQualificationCopyWithImpl(this._value, this._then);

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
    Object? identifier = freezed,
    Object? code = null,
    Object? status = freezed,
    Object? period = freezed,
    Object? issuer = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
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
  $ReferenceCopyWith<$Res>? get issuer {
    if (_value.issuer == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.issuer!, (value) {
      return _then(_value.copyWith(issuer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationQualificationImplCopyWith<$Res>
    implements $OrganizationQualificationCopyWith<$Res> {
  factory _$$OrganizationQualificationImplCopyWith(
          _$OrganizationQualificationImpl value,
          $Res Function(_$OrganizationQualificationImpl) then) =
      __$$OrganizationQualificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept code,
      CodeableConcept? status,
      Period? period,
      Reference? issuer});

  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get issuer;
}

/// @nodoc
class __$$OrganizationQualificationImplCopyWithImpl<$Res>
    extends _$OrganizationQualificationCopyWithImpl<$Res,
        _$OrganizationQualificationImpl>
    implements _$$OrganizationQualificationImplCopyWith<$Res> {
  __$$OrganizationQualificationImplCopyWithImpl(
      _$OrganizationQualificationImpl _value,
      $Res Function(_$OrganizationQualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? code = null,
    Object? status = freezed,
    Object? period = freezed,
    Object? issuer = freezed,
  }) {
    return _then(_$OrganizationQualificationImpl(
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
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationQualificationImpl extends _OrganizationQualification {
  const _$OrganizationQualificationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      required this.code,
      this.status,
      this.period,
      this.issuer})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$OrganizationQualificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationQualificationImplFromJson(json);

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

  /// [identifier] An identifier allocated to this qualification for this
  ///  organization.
  final List<Identifier>? _identifier;

  /// [identifier] An identifier allocated to this qualification for this
  ///  organization.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] Coded representation of the qualification.
  @override
  final CodeableConcept code;

  /// [status] Qualifications often take time to attain and might be tracked
  ///  during this time, and completed qualifications might not always be
  ///  valid. This status concept has some overlap with period and both
  ///  should be considered together. Refer to the descriptions of the codes
  ///  for how the period should be interpreted.
  /// If a qualification is revoked or otherwise cancelled, then the period
  ///  is likely to be ignored, and might be related to when it was active.
  @override
  final CodeableConcept? status;

  /// [period] Period during which the qualification is valid.
  @override
  final Period? period;

  /// [issuer] Organization that regulates and issues the qualification.
  @override
  final Reference? issuer;

  @override
  String toString() {
    return 'OrganizationQualification(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, code: $code, status: $status, period: $period, issuer: $issuer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationQualificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.issuer, issuer) || other.issuer == issuer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_identifier),
      code,
      status,
      period,
      issuer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationQualificationImplCopyWith<_$OrganizationQualificationImpl>
      get copyWith => __$$OrganizationQualificationImplCopyWithImpl<
          _$OrganizationQualificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationQualificationImplToJson(
      this,
    );
  }
}

abstract class _OrganizationQualification extends OrganizationQualification {
  const factory _OrganizationQualification(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      required final CodeableConcept code,
      final CodeableConcept? status,
      final Period? period,
      final Reference? issuer}) = _$OrganizationQualificationImpl;
  const _OrganizationQualification._() : super._();

  factory _OrganizationQualification.fromJson(Map<String, dynamic> json) =
      _$OrganizationQualificationImpl.fromJson;

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

  /// [identifier] An identifier allocated to this qualification for this
  ///  organization.
  List<Identifier>? get identifier;
  @override

  /// [code] Coded representation of the qualification.
  CodeableConcept get code;
  @override

  /// [status] Qualifications often take time to attain and might be tracked
  ///  during this time, and completed qualifications might not always be
  ///  valid. This status concept has some overlap with period and both
  ///  should be considered together. Refer to the descriptions of the codes
  ///  for how the period should be interpreted.
  /// If a qualification is revoked or otherwise cancelled, then the period
  ///  is likely to be ignored, and might be related to when it was active.
  CodeableConcept? get status;
  @override

  /// [period] Period during which the qualification is valid.
  Period? get period;
  @override

  /// [issuer] Organization that regulates and issues the qualification.
  Reference? get issuer;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationQualificationImplCopyWith<_$OrganizationQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrganizationAffiliation _$OrganizationAffiliationFromJson(
    Map<String, dynamic> json) {
  return _OrganizationAffiliation.fromJson(json);
}

/// @nodoc
mixin _$OrganizationAffiliation {
  /// [resourceType] This is a OrganizationAffiliation resource
  @JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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

  /// [identifier] Business identifiers that are specific to this role.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [active] Whether this organization affiliation record is in active use.
  FhirBoolean? get active => throw _privateConstructorUsedError;

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement => throw _privateConstructorUsedError;

  /// [period] The period during which the participatingOrganization is
  ///  affiliated with the primary organization.
  Period? get period => throw _privateConstructorUsedError;

  /// [organization] Organization where the role is available (primary
  ///  organization/has members).
  Reference? get organization => throw _privateConstructorUsedError;

  /// [participatingOrganization] The Participating Organization
  ///  provides/performs the role(s) defined by the code to the Primary
  ///  Organization (e.g. providing services or is a member of).
  Reference? get participatingOrganization =>
      throw _privateConstructorUsedError;

  /// [network] The network in which the participatingOrganization provides
  ///  the role's services (if defined) at the indicated locations (if
  ///  defined).
  List<Reference>? get network => throw _privateConstructorUsedError;

  /// [code] Definition of the role the participatingOrganization plays in
  ///  the association.
  List<CodeableConcept>? get code => throw _privateConstructorUsedError;

  /// [specialty] Specific specialty of the participatingOrganization in the
  ///  context of the role.
  List<CodeableConcept>? get specialty => throw _privateConstructorUsedError;

  /// [location] The location(s) at which the role occurs.
  List<Reference>? get location => throw _privateConstructorUsedError;

  /// [healthcareService] Healthcare services provided through the role.
  List<Reference>? get healthcareService => throw _privateConstructorUsedError;

  /// [contact] The contact details of communication devices available at the
  ///  participatingOrganization relevant to this Affiliation.
  List<ExtendedContactDetail>? get contact =>
      throw _privateConstructorUsedError;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for this role.
  List<Reference>? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationAffiliationCopyWith<OrganizationAffiliation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationAffiliationCopyWith<$Res> {
  factory $OrganizationAffiliationCopyWith(OrganizationAffiliation value,
          $Res Function(OrganizationAffiliation) then) =
      _$OrganizationAffiliationCopyWithImpl<$Res, OrganizationAffiliation>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      Period? period,
      Reference? organization,
      Reference? participatingOrganization,
      List<Reference>? network,
      List<CodeableConcept>? code,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      List<Reference>? healthcareService,
      List<ExtendedContactDetail>? contact,
      List<Reference>? endpoint});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get organization;
  $ReferenceCopyWith<$Res>? get participatingOrganization;
}

/// @nodoc
class _$OrganizationAffiliationCopyWithImpl<$Res,
        $Val extends OrganizationAffiliation>
    implements $OrganizationAffiliationCopyWith<$Res> {
  _$OrganizationAffiliationCopyWithImpl(this._value, this._then);

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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? period = freezed,
    Object? organization = freezed,
    Object? participatingOrganization = freezed,
    Object? network = freezed,
    Object? code = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? healthcareService = freezed,
    Object? contact = freezed,
    Object? endpoint = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      participatingOrganization: freezed == participatingOrganization
          ? _value.participatingOrganization
          : participatingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      healthcareService: freezed == healthcareService
          ? _value.healthcareService
          : healthcareService // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $ReferenceCopyWith<$Res>? get participatingOrganization {
    if (_value.participatingOrganization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.participatingOrganization!, (value) {
      return _then(_value.copyWith(participatingOrganization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationAffiliationImplCopyWith<$Res>
    implements $OrganizationAffiliationCopyWith<$Res> {
  factory _$$OrganizationAffiliationImplCopyWith(
          _$OrganizationAffiliationImpl value,
          $Res Function(_$OrganizationAffiliationImpl) then) =
      __$$OrganizationAffiliationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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
      FhirBoolean? active,
      @JsonKey(name: '_active') Element? activeElement,
      Period? period,
      Reference? organization,
      Reference? participatingOrganization,
      List<Reference>? network,
      List<CodeableConcept>? code,
      List<CodeableConcept>? specialty,
      List<Reference>? location,
      List<Reference>? healthcareService,
      List<ExtendedContactDetail>? contact,
      List<Reference>? endpoint});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get organization;
  @override
  $ReferenceCopyWith<$Res>? get participatingOrganization;
}

/// @nodoc
class __$$OrganizationAffiliationImplCopyWithImpl<$Res>
    extends _$OrganizationAffiliationCopyWithImpl<$Res,
        _$OrganizationAffiliationImpl>
    implements _$$OrganizationAffiliationImplCopyWith<$Res> {
  __$$OrganizationAffiliationImplCopyWithImpl(
      _$OrganizationAffiliationImpl _value,
      $Res Function(_$OrganizationAffiliationImpl) _then)
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
    Object? active = freezed,
    Object? activeElement = freezed,
    Object? period = freezed,
    Object? organization = freezed,
    Object? participatingOrganization = freezed,
    Object? network = freezed,
    Object? code = freezed,
    Object? specialty = freezed,
    Object? location = freezed,
    Object? healthcareService = freezed,
    Object? contact = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$OrganizationAffiliationImpl(
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      activeElement: freezed == activeElement
          ? _value.activeElement
          : activeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      participatingOrganization: freezed == participatingOrganization
          ? _value.participatingOrganization
          : participatingOrganization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      network: freezed == network
          ? _value._network
          : network // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      specialty: freezed == specialty
          ? _value._specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      healthcareService: freezed == healthcareService
          ? _value._healthcareService
          : healthcareService // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ExtendedContactDetail>?,
      endpoint: freezed == endpoint
          ? _value._endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationAffiliationImpl extends _OrganizationAffiliation {
  const _$OrganizationAffiliationImpl(
      {@JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
      this.resourceType = R6ResourceType.OrganizationAffiliation,
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
      this.active,
      @JsonKey(name: '_active') this.activeElement,
      this.period,
      this.organization,
      this.participatingOrganization,
      final List<Reference>? network,
      final List<CodeableConcept>? code,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      final List<Reference>? healthcareService,
      final List<ExtendedContactDetail>? contact,
      final List<Reference>? endpoint})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _network = network,
        _code = code,
        _specialty = specialty,
        _location = location,
        _healthcareService = healthcareService,
        _contact = contact,
        _endpoint = endpoint,
        super._();

  factory _$OrganizationAffiliationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationAffiliationImplFromJson(json);

  /// [resourceType] This is a OrganizationAffiliation resource
  @override
  @JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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

  /// [identifier] Business identifiers that are specific to this role.
  final List<Identifier>? _identifier;

  /// [identifier] Business identifiers that are specific to this role.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [active] Whether this organization affiliation record is in active use.
  @override
  final FhirBoolean? active;

  /// [activeElement] ("_active") Extensions for active
  @override
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [period] The period during which the participatingOrganization is
  ///  affiliated with the primary organization.
  @override
  final Period? period;

  /// [organization] Organization where the role is available (primary
  ///  organization/has members).
  @override
  final Reference? organization;

  /// [participatingOrganization] The Participating Organization
  ///  provides/performs the role(s) defined by the code to the Primary
  ///  Organization (e.g. providing services or is a member of).
  @override
  final Reference? participatingOrganization;

  /// [network] The network in which the participatingOrganization provides
  ///  the role's services (if defined) at the indicated locations (if
  ///  defined).
  final List<Reference>? _network;

  /// [network] The network in which the participatingOrganization provides
  ///  the role's services (if defined) at the indicated locations (if
  ///  defined).
  @override
  List<Reference>? get network {
    final value = _network;
    if (value == null) return null;
    if (_network is EqualUnmodifiableListView) return _network;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] Definition of the role the participatingOrganization plays in
  ///  the association.
  final List<CodeableConcept>? _code;

  /// [code] Definition of the role the participatingOrganization plays in
  ///  the association.
  @override
  List<CodeableConcept>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [specialty] Specific specialty of the participatingOrganization in the
  ///  context of the role.
  final List<CodeableConcept>? _specialty;

  /// [specialty] Specific specialty of the participatingOrganization in the
  ///  context of the role.
  @override
  List<CodeableConcept>? get specialty {
    final value = _specialty;
    if (value == null) return null;
    if (_specialty is EqualUnmodifiableListView) return _specialty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [location] The location(s) at which the role occurs.
  final List<Reference>? _location;

  /// [location] The location(s) at which the role occurs.
  @override
  List<Reference>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [healthcareService] Healthcare services provided through the role.
  final List<Reference>? _healthcareService;

  /// [healthcareService] Healthcare services provided through the role.
  @override
  List<Reference>? get healthcareService {
    final value = _healthcareService;
    if (value == null) return null;
    if (_healthcareService is EqualUnmodifiableListView)
      return _healthcareService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contact] The contact details of communication devices available at the
  ///  participatingOrganization relevant to this Affiliation.
  final List<ExtendedContactDetail>? _contact;

  /// [contact] The contact details of communication devices available at the
  ///  participatingOrganization relevant to this Affiliation.
  @override
  List<ExtendedContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for this role.
  final List<Reference>? _endpoint;

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for this role.
  @override
  List<Reference>? get endpoint {
    final value = _endpoint;
    if (value == null) return null;
    if (_endpoint is EqualUnmodifiableListView) return _endpoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrganizationAffiliation(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, active: $active, activeElement: $activeElement, period: $period, organization: $organization, participatingOrganization: $participatingOrganization, network: $network, code: $code, specialty: $specialty, location: $location, healthcareService: $healthcareService, contact: $contact, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationAffiliationImpl &&
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
            (identical(other.active, active) || other.active == active) &&
            (identical(other.activeElement, activeElement) ||
                other.activeElement == activeElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.participatingOrganization,
                    participatingOrganization) ||
                other.participatingOrganization == participatingOrganization) &&
            const DeepCollectionEquality().equals(other._network, _network) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality()
                .equals(other._specialty, _specialty) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality()
                .equals(other._healthcareService, _healthcareService) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality().equals(other._endpoint, _endpoint));
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
        active,
        activeElement,
        period,
        organization,
        participatingOrganization,
        const DeepCollectionEquality().hash(_network),
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_specialty),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(_healthcareService),
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_endpoint)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationAffiliationImplCopyWith<_$OrganizationAffiliationImpl>
      get copyWith => __$$OrganizationAffiliationImplCopyWithImpl<
          _$OrganizationAffiliationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationAffiliationImplToJson(
      this,
    );
  }
}

abstract class _OrganizationAffiliation extends OrganizationAffiliation {
  const factory _OrganizationAffiliation(
      {@JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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
      final FhirBoolean? active,
      @JsonKey(name: '_active') final Element? activeElement,
      final Period? period,
      final Reference? organization,
      final Reference? participatingOrganization,
      final List<Reference>? network,
      final List<CodeableConcept>? code,
      final List<CodeableConcept>? specialty,
      final List<Reference>? location,
      final List<Reference>? healthcareService,
      final List<ExtendedContactDetail>? contact,
      final List<Reference>? endpoint}) = _$OrganizationAffiliationImpl;
  const _OrganizationAffiliation._() : super._();

  factory _OrganizationAffiliation.fromJson(Map<String, dynamic> json) =
      _$OrganizationAffiliationImpl.fromJson;

  @override

  /// [resourceType] This is a OrganizationAffiliation resource
  @JsonKey(unknownEnumValue: R6ResourceType.OrganizationAffiliation)
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

  /// [identifier] Business identifiers that are specific to this role.
  List<Identifier>? get identifier;
  @override

  /// [active] Whether this organization affiliation record is in active use.
  FhirBoolean? get active;
  @override

  /// [activeElement] ("_active") Extensions for active
  @JsonKey(name: '_active')
  Element? get activeElement;
  @override

  /// [period] The period during which the participatingOrganization is
  ///  affiliated with the primary organization.
  Period? get period;
  @override

  /// [organization] Organization where the role is available (primary
  ///  organization/has members).
  Reference? get organization;
  @override

  /// [participatingOrganization] The Participating Organization
  ///  provides/performs the role(s) defined by the code to the Primary
  ///  Organization (e.g. providing services or is a member of).
  Reference? get participatingOrganization;
  @override

  /// [network] The network in which the participatingOrganization provides
  ///  the role's services (if defined) at the indicated locations (if
  ///  defined).
  List<Reference>? get network;
  @override

  /// [code] Definition of the role the participatingOrganization plays in
  ///  the association.
  List<CodeableConcept>? get code;
  @override

  /// [specialty] Specific specialty of the participatingOrganization in the
  ///  context of the role.
  List<CodeableConcept>? get specialty;
  @override

  /// [location] The location(s) at which the role occurs.
  List<Reference>? get location;
  @override

  /// [healthcareService] Healthcare services provided through the role.
  List<Reference>? get healthcareService;
  @override

  /// [contact] The contact details of communication devices available at the
  ///  participatingOrganization relevant to this Affiliation.
  List<ExtendedContactDetail>? get contact;
  @override

  /// [endpoint] Technical endpoints providing access to services operated
  ///  for this role.
  List<Reference>? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationAffiliationImplCopyWith<_$OrganizationAffiliationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
