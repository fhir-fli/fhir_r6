import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        BiologicallyDerivedProductDispense,
        BiologicallyDerivedProductDispensePerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProductDispenseBuilder]
/// This resource reflects an instance of a biologically derived product
/// dispense. The supply or dispense of a biologically derived product from
/// the supply organization or department (e.g. hospital transfusion
/// laboratory) to the clinical team responsible for clinical application.
class BiologicallyDerivedProductDispenseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductDispenseBuilder]

  BiologicallyDerivedProductDispenseBuilder({
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
    this.status,
    this.originRelationshipType,
    this.product,
    this.patient,
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
          objectPath: 'BiologicallyDerivedProductDispense',
          resourceType: R5ResourceType.BiologicallyDerivedProductDispense,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductDispenseBuilder.empty() =>
      BiologicallyDerivedProductDispenseBuilder(
        status: BiologicallyDerivedProductDispenseCodesBuilder.values.first,
        product: ReferenceBuilder.empty(),
        patient: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductDispenseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProductDispense';
    return BiologicallyDerivedProductDispenseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<
          BiologicallyDerivedProductDispenseCodesBuilder>(
        json,
        'status',
        BiologicallyDerivedProductDispenseCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      originRelationshipType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'originRelationshipType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.originRelationshipType',
      ),
      product: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'product',
        ReferenceBuilder.fromJson,
        '$objectPath.product',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      matchStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'matchStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.matchStatus',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductDispensePerformerBuilder>(
            (v) => BiologicallyDerivedProductDispensePerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      preparedDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'preparedDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.preparedDate',
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'whenHandedOver',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.whenHandedOver',
      ),
      destination: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'destination',
        ReferenceBuilder.fromJson,
        '$objectPath.destination',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      usageInstruction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'usageInstruction',
        FhirStringBuilder.fromJson,
        '$objectPath.usageInstruction',
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductDispenseBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductDispenseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductDispenseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductDispenseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductDispenseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductDispenseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductDispenseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductDispenseBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// The order or request that the dispense is fulfilling. This is a
  /// reference to a ServiceRequest resource.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code specifying the state of the dispense event.
  BiologicallyDerivedProductDispenseCodesBuilder? status;

  /// [originRelationshipType]
  /// Indicates the relationship between the donor of the biologically
  /// derived product and the intended recipient.
  CodeableConceptBuilder? originRelationshipType;

  /// [product]
  /// A link to a resource identifying the biologically derived product that
  /// is being dispensed.
  ReferenceBuilder? product;

  /// [patient]
  /// A link to a resource representing the patient that the product is
  /// dispensed for.
  ReferenceBuilder? patient;

  /// [matchStatus]
  /// Indicates the type of matching associated with the dispense.
  CodeableConceptBuilder? matchStatus;

  /// [performer]
  /// Indicates who or what performed an action.
  List<BiologicallyDerivedProductDispensePerformerBuilder>? performer;

  /// [location]
  /// The physical location where the dispense was performed.
  ReferenceBuilder? location;

  /// [quantity]
  /// The amount of product in the dispense. Quantity will depend on the
  /// product being dispensed. Examples are: volume; cell count;
  /// concentration.
  QuantityBuilder? quantity;

  /// [preparedDate]
  /// When the product was selected/ matched.
  FhirDateTimeBuilder? preparedDate;

  /// [whenHandedOver]
  /// When the product was dispatched for clinical use.
  FhirDateTimeBuilder? whenHandedOver;

  /// [destination]
  /// Link to a resource identifying the physical location that the product
  /// was dispatched to.
  ReferenceBuilder? destination;

  /// [note]
  /// Additional notes.
  List<AnnotationBuilder>? note;

  /// [usageInstruction]
  /// Specific instructions for use.
  FhirStringBuilder? usageInstruction;

  /// Converts a [BiologicallyDerivedProductDispenseBuilder]
  /// to [BiologicallyDerivedProductDispense]
  @override
  BiologicallyDerivedProductDispense build() =>
      BiologicallyDerivedProductDispense.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductDispenseBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('originRelationshipType', originRelationshipType);
    addField('product', product);
    addField('patient', patient);
    addField('matchStatus', matchStatus);
    addField('performer', performer);
    addField('location', location);
    addField('quantity', quantity);
    addField('preparedDate', preparedDate);
    addField('whenHandedOver', whenHandedOver);
    addField('destination', destination);
    addField('note', note);
    addField('usageInstruction', usageInstruction);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
      case 'originRelationshipType':
        if (originRelationshipType != null) {
          fields.add(originRelationshipType!);
        }
      case 'product':
        if (product != null) {
          fields.add(product!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is BiologicallyDerivedProductDispenseCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    BiologicallyDerivedProductDispenseCodesBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'originRelationshipType':
        {
          if (child is CodeableConceptBuilder) {
            originRelationshipType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'product':
        {
          if (child is ReferenceBuilder) {
            product = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'matchStatus':
        {
          if (child is CodeableConceptBuilder) {
            matchStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child
              is List<BiologicallyDerivedProductDispensePerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child
              is BiologicallyDerivedProductDispensePerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preparedDate':
        {
          if (child is FhirDateTimeBuilder) {
            preparedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                preparedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whenHandedOver':
        {
          if (child is FhirDateTimeBuilder) {
            whenHandedOver = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                whenHandedOver = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'destination':
        {
          if (child is ReferenceBuilder) {
            destination = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usageInstruction':
        {
          if (child is FhirStringBuilder) {
            usageInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                usageInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'originRelationshipType':
        return ['CodeableConceptBuilder'];
      case 'product':
        return ['ReferenceBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'matchStatus':
        return ['CodeableConceptBuilder'];
      case 'performer':
        return ['BiologicallyDerivedProductDispensePerformerBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'preparedDate':
        return ['FhirDateTimeBuilder'];
      case 'whenHandedOver':
        return ['FhirDateTimeBuilder'];
      case 'destination':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'usageInstruction':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductDispenseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = BiologicallyDerivedProductDispenseCodesBuilder.empty();
          return;
        }
      case 'originRelationshipType':
        {
          originRelationshipType = CodeableConceptBuilder.empty();
          return;
        }
      case 'product':
        {
          product = ReferenceBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'matchStatus':
        {
          matchStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <BiologicallyDerivedProductDispensePerformerBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'preparedDate':
        {
          preparedDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'whenHandedOver':
        {
          whenHandedOver = FhirDateTimeBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = ReferenceBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'usageInstruction':
        {
          usageInstruction = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductDispenseBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductDispenseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? partOf,
    BiologicallyDerivedProductDispenseCodesBuilder? status,
    CodeableConceptBuilder? originRelationshipType,
    ReferenceBuilder? product,
    ReferenceBuilder? patient,
    CodeableConceptBuilder? matchStatus,
    List<BiologicallyDerivedProductDispensePerformerBuilder>? performer,
    ReferenceBuilder? location,
    QuantityBuilder? quantity,
    FhirDateTimeBuilder? preparedDate,
    FhirDateTimeBuilder? whenHandedOver,
    ReferenceBuilder? destination,
    List<AnnotationBuilder>? note,
    FhirStringBuilder? usageInstruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BiologicallyDerivedProductDispenseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      originRelationshipType:
          originRelationshipType ?? this.originRelationshipType,
      product: product ?? this.product,
      patient: patient ?? this.patient,
      matchStatus: matchStatus ?? this.matchStatus,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      quantity: quantity ?? this.quantity,
      preparedDate: preparedDate ?? this.preparedDate,
      whenHandedOver: whenHandedOver ?? this.whenHandedOver,
      destination: destination ?? this.destination,
      note: note ?? this.note,
      usageInstruction: usageInstruction ?? this.usageInstruction,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BiologicallyDerivedProductDispenseBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<BiologicallyDerivedProductDispensePerformerBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
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

/// [BiologicallyDerivedProductDispensePerformerBuilder]
/// Indicates who or what performed an action.
class BiologicallyDerivedProductDispensePerformerBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductDispensePerformerBuilder]

  BiologicallyDerivedProductDispensePerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BiologicallyDerivedProductDispense.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductDispensePerformerBuilder.empty() =>
      BiologicallyDerivedProductDispensePerformerBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductDispensePerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProductDispense.performer';
    return BiologicallyDerivedProductDispensePerformerBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductDispensePerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductDispensePerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductDispensePerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductDispensePerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductDispensePerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductDispensePerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductDispensePerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductDispensePerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductDispensePerformer';

  /// [function_]
  /// Identifies the function of the performer during the dispense.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Identifies the person responsible for the action.
  ReferenceBuilder? actor;

  /// Converts a [BiologicallyDerivedProductDispensePerformerBuilder]
  /// to [BiologicallyDerivedProductDispensePerformer]
  @override
  BiologicallyDerivedProductDispensePerformer build() =>
      BiologicallyDerivedProductDispensePerformer.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductDispensePerformerBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('function', function_);
    addField('actor', actor);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (actor != null) {
          fields.add(actor!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductDispensePerformerBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductDispensePerformerBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductDispensePerformerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductDispensePerformerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BiologicallyDerivedProductDispensePerformerBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
