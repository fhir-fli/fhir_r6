// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'group.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirGroupCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    VersionAlgorithmXGroup? versionAlgorithmX,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirString? copyrightLabel,
    GroupType? type,
    GroupMembershipBasis? membership,
    CodeableConcept? code,
    FhirUnsignedInt? quantity,
    Reference? managingEntity,
    GroupCharacteristicCombination? combinationMethod,
    FhirPositiveInt? combinationThreshold,
    List<GroupCharacteristic>? characteristic,
    List<GroupMember>? member,
    bool? disallowExtensions,
  });
}

class _$FhirGroupCopyWithImpl<T> implements $FhirGroupCopyWith<T> {
  final FhirGroup _value;
  final T Function(FhirGroup) _then;

  _$FhirGroupCopyWithImpl(this._value, this._then);

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
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? versionAlgorithmX = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? copyrightLabel = fhirSentinel,
    Object? type = fhirSentinel,
    Object? membership = fhirSentinel,
    Object? code = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? managingEntity = fhirSentinel,
    Object? combinationMethod = fhirSentinel,
    Object? combinationThreshold = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? member = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirGroup(
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
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        versionAlgorithmX: identical(versionAlgorithmX, fhirSentinel)
            ? _value.versionAlgorithmX
            : versionAlgorithmX as VersionAlgorithmXGroup?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as PublicationStatus?,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        copyrightLabel: identical(copyrightLabel, fhirSentinel)
            ? _value.copyrightLabel
            : copyrightLabel as FhirString?,
        type: identical(type, fhirSentinel) ? _value.type : type as GroupType?,
        membership: identical(membership, fhirSentinel)
            ? _value.membership
            : (membership as GroupMembershipBasis?) ?? _value.membership,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as FhirUnsignedInt?,
        managingEntity: identical(managingEntity, fhirSentinel)
            ? _value.managingEntity
            : managingEntity as Reference?,
        combinationMethod: identical(combinationMethod, fhirSentinel)
            ? _value.combinationMethod
            : combinationMethod as GroupCharacteristicCombination?,
        combinationThreshold: identical(combinationThreshold, fhirSentinel)
            ? _value.combinationThreshold
            : combinationThreshold as FhirPositiveInt?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<GroupCharacteristic>?,
        member: identical(member, fhirSentinel)
            ? _value.member
            : member as List<GroupMember>?,
      ),
    );
  }
}

extension FhirGroupCopyWithExtension on FhirGroup {
  $FhirGroupCopyWith<FhirGroup> get copyWith =>
      _$FhirGroupCopyWithImpl<FhirGroup>(
        this,
        (value) => value,
      );
}

abstract class $GroupCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    ValueXGroupCharacteristic? valueX,
    FhirBoolean? exclude,
    FhirMarkdown? description,
    List<CodeableConcept>? method,
    DeterminedByXGroupCharacteristic? determinedByX,
    CodeableConcept? offset,
    InstancesXGroupCharacteristic? instancesX,
    DurationXGroupCharacteristic? durationX,
    Period? period,
    List<RelativeTime>? timing,
    bool? disallowExtensions,
  });
}

class _$GroupCharacteristicCopyWithImpl<T>
    implements $GroupCharacteristicCopyWith<T> {
  final GroupCharacteristic _value;
  final T Function(GroupCharacteristic) _then;

  _$GroupCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? description = fhirSentinel,
    Object? method = fhirSentinel,
    Object? determinedByX = fhirSentinel,
    Object? offset = fhirSentinel,
    Object? instancesX = fhirSentinel,
    Object? durationX = fhirSentinel,
    Object? period = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GroupCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as ValueXGroupCharacteristic?) ?? _value.valueX,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : (exclude as FhirBoolean?) ?? _value.exclude,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as List<CodeableConcept>?,
        determinedByX: identical(determinedByX, fhirSentinel)
            ? _value.determinedByX
            : determinedByX as DeterminedByXGroupCharacteristic?,
        offset: identical(offset, fhirSentinel)
            ? _value.offset
            : offset as CodeableConcept?,
        instancesX: identical(instancesX, fhirSentinel)
            ? _value.instancesX
            : instancesX as InstancesXGroupCharacteristic?,
        durationX: identical(durationX, fhirSentinel)
            ? _value.durationX
            : durationX as DurationXGroupCharacteristic?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        timing: identical(timing, fhirSentinel)
            ? _value.timing
            : timing as List<RelativeTime>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GroupCharacteristicCopyWithExtension on GroupCharacteristic {
  $GroupCharacteristicCopyWith<GroupCharacteristic> get copyWith =>
      _$GroupCharacteristicCopyWithImpl<GroupCharacteristic>(
        this,
        (value) => value,
      );
}

abstract class $GroupMemberCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? entity,
    List<CodeableConcept>? involvement,
    Period? period,
    FhirBoolean? inactive,
    bool? disallowExtensions,
  });
}

class _$GroupMemberCopyWithImpl<T> implements $GroupMemberCopyWith<T> {
  final GroupMember _value;
  final T Function(GroupMember) _then;

  _$GroupMemberCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? entity = fhirSentinel,
    Object? involvement = fhirSentinel,
    Object? period = fhirSentinel,
    Object? inactive = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GroupMember(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        entity: identical(entity, fhirSentinel)
            ? _value.entity
            : (entity as Reference?) ?? _value.entity,
        involvement: identical(involvement, fhirSentinel)
            ? _value.involvement
            : involvement as List<CodeableConcept>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        inactive: identical(inactive, fhirSentinel)
            ? _value.inactive
            : inactive as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension GroupMemberCopyWithExtension on GroupMember {
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      _$GroupMemberCopyWithImpl<GroupMember>(
        this,
        (value) => value,
      );
}
