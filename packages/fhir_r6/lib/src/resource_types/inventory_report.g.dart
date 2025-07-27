// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'inventory_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $InventoryReportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    InventoryReportStatus? status,
    InventoryCountType? countType,
    CodeableConcept? operationType,
    CodeableConcept? operationTypeReason,
    FhirDateTime? reportedDateTime,
    Reference? reporter,
    Period? reportingPeriod,
    List<InventoryReportInventoryListing>? inventoryListing,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$InventoryReportCopyWithImpl<T> implements $InventoryReportCopyWith<T> {
  final InventoryReport _value;
  final T Function(InventoryReport) _then;

  _$InventoryReportCopyWithImpl(this._value, this._then);

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
    Object? countType = fhirSentinel,
    Object? operationType = fhirSentinel,
    Object? operationTypeReason = fhirSentinel,
    Object? reportedDateTime = fhirSentinel,
    Object? reporter = fhirSentinel,
    Object? reportingPeriod = fhirSentinel,
    Object? inventoryListing = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryReport(
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
            : (status as InventoryReportStatus?) ?? _value.status,
        countType: identical(countType, fhirSentinel)
            ? _value.countType
            : (countType as InventoryCountType?) ?? _value.countType,
        operationType: identical(operationType, fhirSentinel)
            ? _value.operationType
            : operationType as CodeableConcept?,
        operationTypeReason: identical(operationTypeReason, fhirSentinel)
            ? _value.operationTypeReason
            : operationTypeReason as CodeableConcept?,
        reportedDateTime: identical(reportedDateTime, fhirSentinel)
            ? _value.reportedDateTime
            : (reportedDateTime as FhirDateTime?) ?? _value.reportedDateTime,
        reporter: identical(reporter, fhirSentinel)
            ? _value.reporter
            : reporter as Reference?,
        reportingPeriod: identical(reportingPeriod, fhirSentinel)
            ? _value.reportingPeriod
            : reportingPeriod as Period?,
        inventoryListing: identical(inventoryListing, fhirSentinel)
            ? _value.inventoryListing
            : inventoryListing as List<InventoryReportInventoryListing>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension InventoryReportCopyWithExtension on InventoryReport {
  $InventoryReportCopyWith<InventoryReport> get copyWith =>
      _$InventoryReportCopyWithImpl<InventoryReport>(
        this,
        (value) => value,
      );
}

abstract class $InventoryReportInventoryListingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    CodeableConcept? itemStatus,
    FhirDateTime? countingDateTime,
    List<InventoryReportItem>? item,
    bool? disallowExtensions,
  });
}

class _$InventoryReportInventoryListingCopyWithImpl<T>
    implements $InventoryReportInventoryListingCopyWith<T> {
  final InventoryReportInventoryListing _value;
  final T Function(InventoryReportInventoryListing) _then;

  _$InventoryReportInventoryListingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? location = fhirSentinel,
    Object? itemStatus = fhirSentinel,
    Object? countingDateTime = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryReportInventoryListing(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        itemStatus: identical(itemStatus, fhirSentinel)
            ? _value.itemStatus
            : itemStatus as CodeableConcept?,
        countingDateTime: identical(countingDateTime, fhirSentinel)
            ? _value.countingDateTime
            : countingDateTime as FhirDateTime?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<InventoryReportItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryReportInventoryListingCopyWithExtension
    on InventoryReportInventoryListing {
  $InventoryReportInventoryListingCopyWith<InventoryReportInventoryListing>
      get copyWith => _$InventoryReportInventoryListingCopyWithImpl<
              InventoryReportInventoryListing>(
            this,
            (value) => value,
          );
}

abstract class $InventoryReportItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Quantity? quantity,
    CodeableReference? item,
    bool? disallowExtensions,
  });
}

class _$InventoryReportItemCopyWithImpl<T>
    implements $InventoryReportItemCopyWith<T> {
  final InventoryReportItem _value;
  final T Function(InventoryReportItem) _then;

  _$InventoryReportItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      InventoryReportItem(
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
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Quantity?) ?? _value.quantity,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as CodeableReference?) ?? _value.item,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension InventoryReportItemCopyWithExtension on InventoryReportItem {
  $InventoryReportItemCopyWith<InventoryReportItem> get copyWith =>
      _$InventoryReportItemCopyWithImpl<InventoryReportItem>(
        this,
        (value) => value,
      );
}
