// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirString? displayName,
    CodeableReference? definition,
    List<DeviceUdiCarrier>? udiCarrier,
    FHIRDeviceStatus? status,
    CodeableConcept? availabilityStatus,
    Identifier? biologicalSourceEvent,
    FhirString? manufacturer,
    FhirDateTime? manufactureDate,
    FhirDateTime? expirationDate,
    FhirString? lotNumber,
    FhirString? serialNumber,
    List<DeviceName>? name,
    FhirString? modelNumber,
    FhirString? partNumber,
    List<CodeableConcept>? category,
    List<CodeableConcept>? type,
    List<DeviceVersion>? version,
    List<DeviceConformsTo>? conformsTo,
    List<DeviceProperty>? property,
    CodeableConcept? mode,
    Count? cycle,
    FhirDuration? duration,
    Reference? owner,
    List<ContactPoint>? contact,
    Reference? location,
    FhirUri? url,
    List<Reference>? endpoint,
    List<CodeableReference>? gateway,
    List<Annotation>? note,
    List<CodeableConcept>? safety,
    Reference? parent,
    bool? disallowExtensions,
  });
}

class _$DeviceCopyWithImpl<T> implements $DeviceCopyWith<T> {
  final Device _value;
  final T Function(Device) _then;

  _$DeviceCopyWithImpl(this._value, this._then);

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
    Object? displayName = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? udiCarrier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? availabilityStatus = fhirSentinel,
    Object? biologicalSourceEvent = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? manufactureDate = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? serialNumber = fhirSentinel,
    Object? name = fhirSentinel,
    Object? modelNumber = fhirSentinel,
    Object? partNumber = fhirSentinel,
    Object? category = fhirSentinel,
    Object? type = fhirSentinel,
    Object? version = fhirSentinel,
    Object? conformsTo = fhirSentinel,
    Object? property = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? cycle = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? location = fhirSentinel,
    Object? url = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? gateway = fhirSentinel,
    Object? note = fhirSentinel,
    Object? safety = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Device(
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
        displayName: identical(displayName, fhirSentinel)
            ? _value.displayName
            : displayName as FhirString?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as CodeableReference?,
        udiCarrier: identical(udiCarrier, fhirSentinel)
            ? _value.udiCarrier
            : udiCarrier as List<DeviceUdiCarrier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as FHIRDeviceStatus?,
        availabilityStatus: identical(availabilityStatus, fhirSentinel)
            ? _value.availabilityStatus
            : availabilityStatus as CodeableConcept?,
        biologicalSourceEvent: identical(biologicalSourceEvent, fhirSentinel)
            ? _value.biologicalSourceEvent
            : biologicalSourceEvent as Identifier?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as FhirString?,
        manufactureDate: identical(manufactureDate, fhirSentinel)
            ? _value.manufactureDate
            : manufactureDate as FhirDateTime?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDateTime?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        serialNumber: identical(serialNumber, fhirSentinel)
            ? _value.serialNumber
            : serialNumber as FhirString?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : name as List<DeviceName>?,
        modelNumber: identical(modelNumber, fhirSentinel)
            ? _value.modelNumber
            : modelNumber as FhirString?,
        partNumber: identical(partNumber, fhirSentinel)
            ? _value.partNumber
            : partNumber as FhirString?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as List<DeviceVersion>?,
        conformsTo: identical(conformsTo, fhirSentinel)
            ? _value.conformsTo
            : conformsTo as List<DeviceConformsTo>?,
        property: identical(property, fhirSentinel)
            ? _value.property
            : property as List<DeviceProperty>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : mode as CodeableConcept?,
        cycle: identical(cycle, fhirSentinel) ? _value.cycle : cycle as Count?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as FhirDuration?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        gateway: identical(gateway, fhirSentinel)
            ? _value.gateway
            : gateway as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        safety: identical(safety, fhirSentinel)
            ? _value.safety
            : safety as List<CodeableConcept>?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as Reference?,
      ),
    );
  }
}

extension DeviceCopyWithExtension on Device {
  $DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(
        this,
        (value) => value,
      );
}

abstract class $DeviceUdiCarrierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? deviceIdentifier,
    FhirUri? issuer,
    FhirUri? jurisdiction,
    FhirBase64Binary? carrierAIDC,
    FhirString? carrierHRF,
    UDIEntryType? entryType,
    bool? disallowExtensions,
  });
}

class _$DeviceUdiCarrierCopyWithImpl<T>
    implements $DeviceUdiCarrierCopyWith<T> {
  final DeviceUdiCarrier _value;
  final T Function(DeviceUdiCarrier) _then;

  _$DeviceUdiCarrierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? deviceIdentifier = fhirSentinel,
    Object? issuer = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? carrierAIDC = fhirSentinel,
    Object? carrierHRF = fhirSentinel,
    Object? entryType = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceUdiCarrier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        deviceIdentifier: identical(deviceIdentifier, fhirSentinel)
            ? _value.deviceIdentifier
            : (deviceIdentifier as FhirString?) ?? _value.deviceIdentifier,
        issuer: identical(issuer, fhirSentinel)
            ? _value.issuer
            : (issuer as FhirUri?) ?? _value.issuer,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as FhirUri?,
        carrierAIDC: identical(carrierAIDC, fhirSentinel)
            ? _value.carrierAIDC
            : carrierAIDC as FhirBase64Binary?,
        carrierHRF: identical(carrierHRF, fhirSentinel)
            ? _value.carrierHRF
            : carrierHRF as FhirString?,
        entryType: identical(entryType, fhirSentinel)
            ? _value.entryType
            : entryType as UDIEntryType?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceUdiCarrierCopyWithExtension on DeviceUdiCarrier {
  $DeviceUdiCarrierCopyWith<DeviceUdiCarrier> get copyWith =>
      _$DeviceUdiCarrierCopyWithImpl<DeviceUdiCarrier>(
        this,
        (value) => value,
      );
}

abstract class $DeviceNameCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? value,
    DeviceNameType? type,
    FhirBoolean? display,
    bool? disallowExtensions,
  });
}

class _$DeviceNameCopyWithImpl<T> implements $DeviceNameCopyWith<T> {
  final DeviceName _value;
  final T Function(DeviceName) _then;

  _$DeviceNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? value = fhirSentinel,
    Object? type = fhirSentinel,
    Object? display = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as DeviceNameType?) ?? _value.type,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceNameCopyWithExtension on DeviceName {
  $DeviceNameCopyWith<DeviceName> get copyWith =>
      _$DeviceNameCopyWithImpl<DeviceName>(
        this,
        (value) => value,
      );
}

abstract class $DeviceVersionCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Identifier? component,
    FhirDateTime? installDate,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$DeviceVersionCopyWithImpl<T> implements $DeviceVersionCopyWith<T> {
  final DeviceVersion _value;
  final T Function(DeviceVersion) _then;

  _$DeviceVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? component = fhirSentinel,
    Object? installDate = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceVersion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as Identifier?,
        installDate: identical(installDate, fhirSentinel)
            ? _value.installDate
            : installDate as FhirDateTime?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceVersionCopyWithExtension on DeviceVersion {
  $DeviceVersionCopyWith<DeviceVersion> get copyWith =>
      _$DeviceVersionCopyWithImpl<DeviceVersion>(
        this,
        (value) => value,
      );
}

abstract class $DeviceConformsToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? specification,
    FhirString? version,
    bool? disallowExtensions,
  });
}

class _$DeviceConformsToCopyWithImpl<T>
    implements $DeviceConformsToCopyWith<T> {
  final DeviceConformsTo _value;
  final T Function(DeviceConformsTo) _then;

  _$DeviceConformsToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? specification = fhirSentinel,
    Object? version = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceConformsTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        specification: identical(specification, fhirSentinel)
            ? _value.specification
            : (specification as CodeableConcept?) ?? _value.specification,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceConformsToCopyWithExtension on DeviceConformsTo {
  $DeviceConformsToCopyWith<DeviceConformsTo> get copyWith =>
      _$DeviceConformsToCopyWithImpl<DeviceConformsTo>(
        this,
        (value) => value,
      );
}

abstract class $DevicePropertyCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueX,
    bool? disallowExtensions,
  });
}

class _$DevicePropertyCopyWithImpl<T> implements $DevicePropertyCopyWith<T> {
  final DeviceProperty _value;
  final T Function(DeviceProperty) _then;

  _$DevicePropertyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceProperty(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as Quantity?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DevicePropertyCopyWithExtension on DeviceProperty {
  $DevicePropertyCopyWith<DeviceProperty> get copyWith =>
      _$DevicePropertyCopyWithImpl<DeviceProperty>(
        this,
        (value) => value,
      );
}
