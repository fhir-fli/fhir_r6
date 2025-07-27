import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'biologically_derived_product_dispense.g.dart';

/// [BiologicallyDerivedProductDispense]
/// This resource reflects an instance of a biologically derived product
/// dispense. The supply or dispense of a biologically derived product from
/// the supply organization or department (e.g. hospital transfusion
/// laboratory) to the clinical team responsible for clinical application.
class BiologicallyDerivedProductDispense extends DomainResource {
  /// Primary constructor for
  /// [BiologicallyDerivedProductDispense]

  const BiologicallyDerivedProductDispense({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.originRelationshipType,
    required this.product,
    required this.patient,
    this.matchStatus,
    this.performer,
    this.location,
    this.quantity,
    this.preparedDate,
    this.whenHandedOver,
    this.destination,
    this.note,
    this.usageInstruction,
  }) : super(
          resourceType: R5ResourceType.BiologicallyDerivedProductDispense,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductDispense(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status:
          JsonParser.parsePrimitive<BiologicallyDerivedProductDispenseCodes>(
        json,
        'status',
        BiologicallyDerivedProductDispenseCodes.fromJson,
      )!,
      originRelationshipType: JsonParser.parseObject<CodeableConcept>(
        json,
        'originRelationshipType',
        CodeableConcept.fromJson,
      ),
      product: JsonParser.parseObject<Reference>(
        json,
        'product',
        Reference.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      matchStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'matchStatus',
        CodeableConcept.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductDispensePerformer>(
            (v) => BiologicallyDerivedProductDispensePerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      preparedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'preparedDate',
        FhirDateTime.fromJson,
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenHandedOver',
        FhirDateTime.fromJson,
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      usageInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'usageInstruction',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductDispense]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductDispense';

  /// [identifier]
  /// Unique instance identifiers assigned to a biologically derived product
  /// dispense. Note: This is a business identifier, not a resource
  /// identifier.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// The order or request that the dispense is fulfilling. This is a
  /// reference to a ServiceRequest resource.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the dispense event.
  final BiologicallyDerivedProductDispenseCodes status;

  /// [originRelationshipType]
  /// Indicates the relationship between the donor of the biologically
  /// derived product and the intended recipient.
  final CodeableConcept? originRelationshipType;

  /// [product]
  /// A link to a resource identifying the biologically derived product that
  /// is being dispensed.
  final Reference product;

  /// [patient]
  /// A link to a resource representing the patient that the product is
  /// dispensed for.
  final Reference patient;

  /// [matchStatus]
  /// Indicates the type of matching associated with the dispense.
  final CodeableConcept? matchStatus;

  /// [performer]
  /// Indicates who or what performed an action.
  final List<BiologicallyDerivedProductDispensePerformer>? performer;

  /// [location]
  /// The physical location where the dispense was performed.
  final Reference? location;

  /// [quantity]
  /// The amount of product in the dispense. Quantity will depend on the
  /// product being dispensed. Examples are: volume; cell count;
  /// concentration.
  final Quantity? quantity;

  /// [preparedDate]
  /// When the product was selected/ matched.
  final FhirDateTime? preparedDate;

  /// [whenHandedOver]
  /// When the product was dispatched for clinical use.
  final FhirDateTime? whenHandedOver;

  /// [destination]
  /// Link to a resource identifying the physical location that the product
  /// was dispatched to.
  final Reference? destination;

  /// [note]
  /// Additional notes.
  final List<Annotation>? note;

  /// [usageInstruction]
  /// Specific instructions for use.
  final FhirString? usageInstruction;
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
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'originRelationshipType',
      originRelationshipType,
    );
    addField(
      'product',
      product,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'matchStatus',
      matchStatus,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'preparedDate',
      preparedDate,
    );
    addField(
      'whenHandedOver',
      whenHandedOver,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'note',
      note,
    );
    addField(
      'usageInstruction',
      usageInstruction,
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
      'basedOn',
      'partOf',
      'status',
      'originRelationshipType',
      'product',
      'patient',
      'matchStatus',
      'performer',
      'location',
      'quantity',
      'preparedDate',
      'whenHandedOver',
      'destination',
      'note',
      'usageInstruction',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'originRelationshipType':
        if (originRelationshipType != null) {
          fields.add(originRelationshipType!);
        }
      case 'product':
        fields.add(product);
      case 'patient':
        fields.add(patient);
      case 'matchStatus':
        if (matchStatus != null) {
          fields.add(matchStatus!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'preparedDate':
        if (preparedDate != null) {
          fields.add(preparedDate!);
        }
      case 'whenHandedOver':
        if (whenHandedOver != null) {
          fields.add(whenHandedOver!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'usageInstruction':
        if (usageInstruction != null) {
          fields.add(usageInstruction!);
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
  BiologicallyDerivedProductDispense clone() => copyWith();

  /// Copy function for [BiologicallyDerivedProductDispense]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BiologicallyDerivedProductDispenseCopyWith<
          BiologicallyDerivedProductDispense>
      get copyWith => _$BiologicallyDerivedProductDispenseCopyWithImpl<
              BiologicallyDerivedProductDispense>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductDispense) {
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
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
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
      originRelationshipType,
      o.originRelationshipType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      product,
      o.product,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      matchStatus,
      o.matchStatus,
    )) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductDispensePerformer>(
      performer,
      o.performer,
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparedDate,
      o.preparedDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenHandedOver,
      o.whenHandedOver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usageInstruction,
      o.usageInstruction,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductDispensePerformer]
/// Indicates who or what performed an action.
class BiologicallyDerivedProductDispensePerformer extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductDispensePerformer]

  const BiologicallyDerivedProductDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductDispensePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductDispensePerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [BiologicallyDerivedProductDispensePerformer]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductDispensePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductDispensePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductDispensePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductDispensePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductDispensePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductDispensePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductDispensePerformer';

  /// [function_]
  /// Identifies the function of the performer during the dispense.
  final CodeableConcept? function_;

  /// [actor]
  /// Identifies the person responsible for the action.
  final Reference actor;
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
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
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  BiologicallyDerivedProductDispensePerformer clone() => copyWith();

  /// Copy function for [BiologicallyDerivedProductDispensePerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BiologicallyDerivedProductDispensePerformerCopyWith<
          BiologicallyDerivedProductDispensePerformer>
      get copyWith => _$BiologicallyDerivedProductDispensePerformerCopyWithImpl<
              BiologicallyDerivedProductDispensePerformer>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductDispensePerformer) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}
