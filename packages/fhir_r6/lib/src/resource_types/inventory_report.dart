import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'inventory_report.g.dart';

/// [InventoryReport]
/// A report of inventory or stock items.
class InventoryReport extends DomainResource {
  /// Primary constructor for
  /// [InventoryReport]

  const InventoryReport({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.countType,
    this.operationType,
    this.operationTypeReason,
    required this.reportedDateTime,
    this.reporter,
    this.reportingPeriod,
    this.inventoryListing,
    this.note,
  }) : super(
          resourceType: R6ResourceType.InventoryReport,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReport.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryReport(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InventoryReportStatus>(
        json,
        'status',
        InventoryReportStatus.fromJson,
      )!,
      countType: JsonParser.parsePrimitive<InventoryCountType>(
        json,
        'countType',
        InventoryCountType.fromJson,
      )!,
      operationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'operationType',
        CodeableConcept.fromJson,
      ),
      operationTypeReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'operationTypeReason',
        CodeableConcept.fromJson,
      ),
      reportedDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'reportedDateTime',
        FhirDateTime.fromJson,
      )!,
      reporter: JsonParser.parseObject<Reference>(
        json,
        'reporter',
        Reference.fromJson,
      ),
      reportingPeriod: JsonParser.parseObject<Period>(
        json,
        'reportingPeriod',
        Period.fromJson,
      ),
      inventoryListing: (json['inventoryListing'] as List<dynamic>?)
          ?.map<InventoryReportInventoryListing>(
            (v) => InventoryReportInventoryListing.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InventoryReport]
  /// from a [String] or [YamlMap] object
  factory InventoryReport.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReport.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReport.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReport '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReport]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReport.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReport';

  /// [identifier]
  /// Business identifier for the InventoryReport.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the inventory check or notification - whether this is
  /// draft (e.g. the report is still pending some updates) or active.
  final InventoryReportStatus status;

  /// [countType]
  /// Whether the report is about the current inventory count (snapshot) or a
  /// differential change in inventory (change).
  final InventoryCountType countType;

  /// [operationType]
  /// What type of operation is being performed - addition or subtraction.
  final CodeableConcept? operationType;

  /// [operationTypeReason]
  /// The reason for this count - regular count, ad-hoc count, new arrivals,
  /// etc.
  final CodeableConcept? operationTypeReason;

  /// [reportedDateTime]
  /// When the report has been submitted.
  final FhirDateTime reportedDateTime;

  /// [reporter]
  /// Who submits the report.
  final Reference? reporter;

  /// [reportingPeriod]
  /// The period the report refers to.
  final Period? reportingPeriod;

  /// [inventoryListing]
  /// An inventory listing section (grouped by any of the attributes).
  final List<InventoryReportInventoryListing>? inventoryListing;

  /// [note]
  /// A note associated with the InventoryReport.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'countType',
      countType,
    );
    addField(
      'operationType',
      operationType,
    );
    addField(
      'operationTypeReason',
      operationTypeReason,
    );
    addField(
      'reportedDateTime',
      reportedDateTime,
    );
    addField(
      'reporter',
      reporter,
    );
    addField(
      'reportingPeriod',
      reportingPeriod,
    );
    addField(
      'inventoryListing',
      inventoryListing,
    );
    addField(
      'note',
      note,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'countType',
      'operationType',
      'operationTypeReason',
      'reportedDateTime',
      'reporter',
      'reportingPeriod',
      'inventoryListing',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'countType':
        fields.add(countType);
      case 'operationType':
        if (operationType != null) {
          fields.add(operationType!);
        }
      case 'operationTypeReason':
        if (operationTypeReason != null) {
          fields.add(operationTypeReason!);
        }
      case 'reportedDateTime':
        fields.add(reportedDateTime);
      case 'reporter':
        if (reporter != null) {
          fields.add(reporter!);
        }
      case 'reportingPeriod':
        if (reportingPeriod != null) {
          fields.add(reportingPeriod!);
        }
      case 'inventoryListing':
        if (inventoryListing != null) {
          fields.addAll(inventoryListing!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  InventoryReport clone() => copyWith();

  /// Copy function for [InventoryReport]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryReportCopyWith<InventoryReport> get copyWith =>
      _$InventoryReportCopyWithImpl<InventoryReport>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryReport) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      countType,
      o.countType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationType,
      o.operationType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationTypeReason,
      o.operationTypeReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportedDateTime,
      o.reportedDateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reporter,
      o.reporter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportingPeriod,
      o.reportingPeriod,
    )) {
      return false;
    }
    if (!listEquals<InventoryReportInventoryListing>(
      inventoryListing,
      o.inventoryListing,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryReportInventoryListing]
/// An inventory listing section (grouped by any of the attributes).
class InventoryReportInventoryListing extends BackboneElement {
  /// Primary constructor for
  /// [InventoryReportInventoryListing]

  const InventoryReportInventoryListing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.location,
    this.itemStatus,
    this.countingDateTime,
    this.item,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReportInventoryListing.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryReportInventoryListing(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      itemStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'itemStatus',
        CodeableConcept.fromJson,
      ),
      countingDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'countingDateTime',
        FhirDateTime.fromJson,
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<InventoryReportItem>(
            (v) => InventoryReportItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InventoryReportInventoryListing]
  /// from a [String] or [YamlMap] object
  factory InventoryReportInventoryListing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReportInventoryListing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReportInventoryListing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReportInventoryListing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReportInventoryListing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReportInventoryListing.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReportInventoryListing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReportInventoryListing';

  /// [location]
  /// Location of the inventory items.
  final Reference? location;

  /// [itemStatus]
  /// The status of the items.
  final CodeableConcept? itemStatus;

  /// [countingDateTime]
  /// The date and time when the items were counted.
  final FhirDateTime? countingDateTime;

  /// [item]
  /// The item or items in this listing.
  final List<InventoryReportItem>? item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'location',
      location,
    );
    addField(
      'itemStatus',
      itemStatus,
    );
    addField(
      'countingDateTime',
      countingDateTime,
    );
    addField(
      'item',
      item,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'location',
      'itemStatus',
      'countingDateTime',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'itemStatus':
        if (itemStatus != null) {
          fields.add(itemStatus!);
        }
      case 'countingDateTime':
        if (countingDateTime != null) {
          fields.add(countingDateTime!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  InventoryReportInventoryListing clone() => copyWith();

  /// Copy function for [InventoryReportInventoryListing]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryReportInventoryListingCopyWith<InventoryReportInventoryListing>
      get copyWith => _$InventoryReportInventoryListingCopyWithImpl<
              InventoryReportInventoryListing>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryReportInventoryListing) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      itemStatus,
      o.itemStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      countingDateTime,
      o.countingDateTime,
    )) {
      return false;
    }
    if (!listEquals<InventoryReportItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryReportItem]
/// The item or items in this listing.
class InventoryReportItem extends BackboneElement {
  /// Primary constructor for
  /// [InventoryReportItem]

  const InventoryReportItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.quantity,
    required this.item,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReportItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryReportItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      )!,
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      )!,
    );
  }

  /// Deserialize [InventoryReportItem]
  /// from a [String] or [YamlMap] object
  factory InventoryReportItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReportItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReportItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReportItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReportItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReportItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReportItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReportItem';

  /// [category]
  /// The inventory category or classification of the items being reported.
  /// This is meant not for defining the product, but for inventory
  /// categories e.g. 'pending recount' or 'damaged'.
  final CodeableConcept? category;

  /// [quantity]
  /// The quantity of the item or items being reported.
  final Quantity quantity;

  /// [item]
  /// The code or reference to the item type.
  final CodeableReference item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'category',
      category,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'item',
      item,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'quantity',
      'item',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'quantity':
        fields.add(quantity);
      case 'item':
        fields.add(item);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  InventoryReportItem clone() => copyWith();

  /// Copy function for [InventoryReportItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryReportItemCopyWith<InventoryReportItem> get copyWith =>
      _$InventoryReportItemCopyWithImpl<InventoryReportItem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryReportItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}
