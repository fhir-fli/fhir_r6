import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        BiologicallyDerivedProduct,
        BiologicallyDerivedProductCollection,
        BiologicallyDerivedProductProperty,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [BiologicallyDerivedProductBuilder]
/// This resource reflects an instance of a biologically derived product. A
/// material substance originating from a biological entity intended to be
/// transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProductBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductBuilder]

  BiologicallyDerivedProductBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.productCategory,
    this.productCode,
    this.parent,
    this.request,
    this.identifier,
    this.biologicalSourceEvent,
    this.processingFacility,
    this.division,
    this.productStatus,
    this.expirationDate,
    this.collection,
    this.storageTempRequirements,
    this.property,
  }) : super(
          objectPath: 'BiologicallyDerivedProduct',
          resourceType: R6ResourceType.BiologicallyDerivedProduct,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductBuilder.empty() =>
      BiologicallyDerivedProductBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct';
    return BiologicallyDerivedProductBuilder(
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
      productCategory: JsonParser.parseObject<CodingBuilder>(
        json,
        'productCategory',
        CodingBuilder.fromJson,
        '$objectPath.productCategory',
      ),
      productCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productCode',
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parent',
              },
            ),
          )
          .toList(),
      request: (json['request'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.request',
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
      biologicalSourceEvent: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'biologicalSourceEvent',
        IdentifierBuilder.fromJson,
        '$objectPath.biologicalSourceEvent',
      ),
      processingFacility: (json['processingFacility'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processingFacility',
              },
            ),
          )
          .toList(),
      division: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'division',
        FhirStringBuilder.fromJson,
        '$objectPath.division',
      ),
      productStatus: JsonParser.parseObject<CodingBuilder>(
        json,
        'productStatus',
        CodingBuilder.fromJson,
        '$objectPath.productStatus',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'expirationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      collection:
          JsonParser.parseObject<BiologicallyDerivedProductCollectionBuilder>(
        json,
        'collection',
        BiologicallyDerivedProductCollectionBuilder.fromJson,
        '$objectPath.collection',
      ),
      storageTempRequirements: JsonParser.parseObject<RangeBuilder>(
        json,
        'storageTempRequirements',
        RangeBuilder.fromJson,
        '$objectPath.storageTempRequirements',
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductPropertyBuilder>(
            (v) => BiologicallyDerivedProductPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BiologicallyDerivedProductBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// [productCategory]
  /// Broad category of this product.
  CodingBuilder? productCategory;

  /// [productCode]
  /// A codified value that systematically supports characterization and
  /// classification of medical products of human origin inclusive of
  /// processing conditions such as additives, volumes and handling
  /// conditions.
  CodeableConceptBuilder? productCode;

  /// [parent]
  /// Parent product (if any) for this biologically-derived product.
  List<ReferenceBuilder>? parent;

  /// [request]
  /// Request to obtain and/or infuse this biologically derived product.
  List<ReferenceBuilder>? request;

  /// [identifier]
  /// Unique instance identifiers assigned to a biologically derived product.
  /// Note: This is a business identifier, not a resource identifier.
  List<IdentifierBuilder>? identifier;

  /// [biologicalSourceEvent]
  /// An identifier that supports traceability to the event during which
  /// material in this product from one or more biological entities was
  /// obtained or pooled.
  IdentifierBuilder? biologicalSourceEvent;

  /// [processingFacility]
  /// Processing facilities responsible for the labeling and distribution of
  /// this biologically derived product.
  List<ReferenceBuilder>? processingFacility;

  /// [division]
  /// A unique identifier for an aliquot of a product. Used to distinguish
  /// individual aliquots of a product carrying the same biologicalSource and
  /// productCode identifiers.
  FhirStringBuilder? division;

  /// [productStatus]
  /// Whether the product is currently available.
  CodingBuilder? productStatus;

  /// [expirationDate]
  /// Date, and where relevant time, of expiration.
  FhirDateTimeBuilder? expirationDate;

  /// [collection]
  /// How this product was collected.
  BiologicallyDerivedProductCollectionBuilder? collection;

  /// [storageTempRequirements]
  /// The temperature requirements for storage of the biologically-derived
  /// product.
  RangeBuilder? storageTempRequirements;

  /// [property]
  /// A property that is specific to this BiologicallyDerviedProduct
  /// instance.
  List<BiologicallyDerivedProductPropertyBuilder>? property;

  /// Converts a [BiologicallyDerivedProductBuilder]
  /// to [BiologicallyDerivedProduct]
  @override
  BiologicallyDerivedProduct build() =>
      BiologicallyDerivedProduct.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductBuilder]
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
    addField('productCategory', productCategory);
    addField('productCode', productCode);
    addField('parent', parent);
    addField('request', request);
    addField('identifier', identifier);
    addField('biologicalSourceEvent', biologicalSourceEvent);
    addField('processingFacility', processingFacility);
    addField('division', division);
    addField('productStatus', productStatus);
    addField('expirationDate', expirationDate);
    addField('collection', collection);
    addField('storageTempRequirements', storageTempRequirements);
    addField('property', property);
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
      'productCategory',
      'productCode',
      'parent',
      'request',
      'identifier',
      'biologicalSourceEvent',
      'processingFacility',
      'division',
      'productStatus',
      'expirationDate',
      'collection',
      'storageTempRequirements',
      'property',
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
      case 'productCategory':
        if (productCategory != null) {
          fields.add(productCategory!);
        }
      case 'productCode':
        if (productCode != null) {
          fields.add(productCode!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'biologicalSourceEvent':
        if (biologicalSourceEvent != null) {
          fields.add(biologicalSourceEvent!);
        }
      case 'processingFacility':
        if (processingFacility != null) {
          fields.addAll(processingFacility!);
        }
      case 'division':
        if (division != null) {
          fields.add(division!);
        }
      case 'productStatus':
        if (productStatus != null) {
          fields.add(productStatus!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'collection':
        if (collection != null) {
          fields.add(collection!);
        }
      case 'storageTempRequirements':
        if (storageTempRequirements != null) {
          fields.add(storageTempRequirements!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
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
      case 'productCategory':
        {
          if (child is CodingBuilder) {
            productCategory = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productCode':
        {
          if (child is CodeableConceptBuilder) {
            productCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parent':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            parent = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            parent = [
              ...(parent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            request = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            request = [
              ...(request ?? []),
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
      case 'biologicalSourceEvent':
        {
          if (child is IdentifierBuilder) {
            biologicalSourceEvent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processingFacility':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            processingFacility = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            processingFacility = [
              ...(processingFacility ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'division':
        {
          if (child is FhirStringBuilder) {
            division = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                division = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productStatus':
        {
          if (child is CodingBuilder) {
            productStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expirationDate':
        {
          if (child is FhirDateTimeBuilder) {
            expirationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                expirationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collection':
        {
          if (child is BiologicallyDerivedProductCollectionBuilder) {
            collection = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'storageTempRequirements':
        {
          if (child is RangeBuilder) {
            storageTempRequirements = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<BiologicallyDerivedProductPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is BiologicallyDerivedProductPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
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
      case 'productCategory':
        return ['CodingBuilder'];
      case 'productCode':
        return ['CodeableConceptBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'biologicalSourceEvent':
        return ['IdentifierBuilder'];
      case 'processingFacility':
        return ['ReferenceBuilder'];
      case 'division':
        return ['FhirStringBuilder'];
      case 'productStatus':
        return ['CodingBuilder'];
      case 'expirationDate':
        return ['FhirDateTimeBuilder'];
      case 'collection':
        return ['BiologicallyDerivedProductCollectionBuilder'];
      case 'storageTempRequirements':
        return ['RangeBuilder'];
      case 'property':
        return ['BiologicallyDerivedProductPropertyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductBuilder]
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
      case 'productCategory':
        {
          productCategory = CodingBuilder.empty();
          return;
        }
      case 'productCode':
        {
          productCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = <ReferenceBuilder>[];
          return;
        }
      case 'request':
        {
          request = <ReferenceBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'biologicalSourceEvent':
        {
          biologicalSourceEvent = IdentifierBuilder.empty();
          return;
        }
      case 'processingFacility':
        {
          processingFacility = <ReferenceBuilder>[];
          return;
        }
      case 'division':
        {
          division = FhirStringBuilder.empty();
          return;
        }
      case 'productStatus':
        {
          productStatus = CodingBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'collection':
        {
          collection = BiologicallyDerivedProductCollectionBuilder.empty();
          return;
        }
      case 'storageTempRequirements':
        {
          storageTempRequirements = RangeBuilder.empty();
          return;
        }
      case 'property':
        {
          property = <BiologicallyDerivedProductPropertyBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductBuilder clone() => throw UnimplementedError();
  @override
  BiologicallyDerivedProductBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? productCategory,
    CodeableConceptBuilder? productCode,
    List<ReferenceBuilder>? parent,
    List<ReferenceBuilder>? request,
    List<IdentifierBuilder>? identifier,
    IdentifierBuilder? biologicalSourceEvent,
    List<ReferenceBuilder>? processingFacility,
    FhirStringBuilder? division,
    CodingBuilder? productStatus,
    FhirDateTimeBuilder? expirationDate,
    BiologicallyDerivedProductCollectionBuilder? collection,
    RangeBuilder? storageTempRequirements,
    List<BiologicallyDerivedProductPropertyBuilder>? property,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BiologicallyDerivedProductBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productCategory: productCategory ?? this.productCategory,
      productCode: productCode ?? this.productCode,
      parent: parent ?? this.parent,
      request: request ?? this.request,
      identifier: identifier ?? this.identifier,
      biologicalSourceEvent:
          biologicalSourceEvent ?? this.biologicalSourceEvent,
      processingFacility: processingFacility ?? this.processingFacility,
      division: division ?? this.division,
      productStatus: productStatus ?? this.productStatus,
      expirationDate: expirationDate ?? this.expirationDate,
      collection: collection ?? this.collection,
      storageTempRequirements:
          storageTempRequirements ?? this.storageTempRequirements,
      property: property ?? this.property,
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
    if (o is! BiologicallyDerivedProductBuilder) {
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
    if (!equalsDeepWithNull(
      productCategory,
      o.productCategory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productCode,
      o.productCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      request,
      o.request,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      biologicalSourceEvent,
      o.biologicalSourceEvent,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      processingFacility,
      o.processingFacility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      division,
      o.division,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productStatus,
      o.productStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      storageTempRequirements,
      o.storageTempRequirements,
    )) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductCollectionBuilder]
/// How this product was collected.
class BiologicallyDerivedProductCollectionBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductCollectionBuilder]

  BiologicallyDerivedProductCollectionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    CollectedXBiologicallyDerivedProductCollectionBuilder? collectedX,
    FhirDateTimeBuilder? collectedDateTime,
    PeriodBuilder? collectedPeriod,
    super.disallowExtensions,
  })  : collectedX = collectedX ?? collectedDateTime ?? collectedPeriod,
        super(
          objectPath: 'BiologicallyDerivedProduct.collection',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductCollectionBuilder.empty() =>
      BiologicallyDerivedProductCollectionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductCollectionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.collection';
    return BiologicallyDerivedProductCollectionBuilder(
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
      collector: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'collector',
        ReferenceBuilder.fromJson,
        '$objectPath.collector',
      ),
      source: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'source',
        ReferenceBuilder.fromJson,
        '$objectPath.source',
      ),
      collectedX: JsonParser.parsePolymorphic<
          CollectedXBiologicallyDerivedProductCollectionBuilder>(
        json,
        {
          'collectedDateTime': FhirDateTimeBuilder.fromJson,
          'collectedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductCollectionBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductCollectionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductCollectionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductCollectionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollectionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductCollectionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [collector]
  /// Healthcare professional who is performing the collection.
  ReferenceBuilder? collector;

  /// [source]
  /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  ReferenceBuilder? source;

  /// [collectedX]
  /// Time of product collection.
  CollectedXBiologicallyDerivedProductCollectionBuilder? collectedX;

  /// Getter for [collectedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get collectedDateTime =>
      collectedX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [collectedPeriod] as a PeriodBuilder
  PeriodBuilder? get collectedPeriod => collectedX?.isAs<PeriodBuilder>();

  /// Converts a [BiologicallyDerivedProductCollectionBuilder]
  /// to [BiologicallyDerivedProductCollection]
  @override
  BiologicallyDerivedProductCollection build() =>
      BiologicallyDerivedProductCollection.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductCollectionBuilder]
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
    addField('collector', collector);
    addField('source', source);
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField('collected${fhirType.capitalizeFirstLetter()}', collectedX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'collector',
      'source',
      'collectedX',
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
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'collected':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedX':
        if (collectedX != null) {
          fields.add(collectedX!);
        }
      case 'collectedDateTime':
        if (collectedX is FhirDateTimeBuilder) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is PeriodBuilder) {
          fields.add(collectedX!);
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
      case 'collector':
        {
          if (child is ReferenceBuilder) {
            collector = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is ReferenceBuilder) {
            source = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collected':
      case 'collectedX':
        {
          if (child is CollectedXBiologicallyDerivedProductCollectionBuilder) {
            collectedX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              collectedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              collectedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collectedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            collectedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'collectedPeriod':
        {
          if (child is PeriodBuilder) {
            collectedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'collector':
        return ['ReferenceBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      case 'collected':
      case 'collectedX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'collectedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'collectedPeriod':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductCollectionBuilder]
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
      case 'collector':
        {
          collector = ReferenceBuilder.empty();
          return;
        }
      case 'source':
        {
          source = ReferenceBuilder.empty();
          return;
        }
      case 'collected':
      case 'collectedX':
      case 'collectedDateTime':
        {
          collectedX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'collectedPeriod':
        {
          collectedX = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductCollectionBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductCollectionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? collector,
    ReferenceBuilder? source,
    CollectedXBiologicallyDerivedProductCollectionBuilder? collectedX,
    FhirDateTimeBuilder? collectedDateTime,
    PeriodBuilder? collectedPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductCollectionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      source: source ?? this.source,
      collectedX:
          collectedX ?? collectedDateTime ?? collectedPeriod ?? this.collectedX,
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
    if (o is! BiologicallyDerivedProductCollectionBuilder) {
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
      collector,
      o.collector,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collectedX,
      o.collectedX,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductPropertyBuilder]
/// A property that is specific to this BiologicallyDerviedProduct
/// instance.
class BiologicallyDerivedProductPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BiologicallyDerivedProductPropertyBuilder]

  BiologicallyDerivedProductPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXBiologicallyDerivedProductPropertyBuilder? valueX,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    CodeableConceptBuilder? valueCodeableConcept,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    FhirStringBuilder? valueString,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueBoolean ??
            valueInteger ??
            valueCodeableConcept ??
            valuePeriod ??
            valueQuantity ??
            valueRange ??
            valueRatio ??
            valueString ??
            valueAttachment,
        super(
          objectPath: 'BiologicallyDerivedProduct.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BiologicallyDerivedProductPropertyBuilder.empty() =>
      BiologicallyDerivedProductPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BiologicallyDerivedProduct.property';
    return BiologicallyDerivedProductPropertyBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXBiologicallyDerivedProductPropertyBuilder>(
        json,
        {
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductProperty';

  /// [type]
  /// Code that specifies the property. It should reference an established
  /// coding system.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// Property values.
  ValueXBiologicallyDerivedProductPropertyBuilder? valueX;

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [BiologicallyDerivedProductPropertyBuilder]
  /// to [BiologicallyDerivedProductProperty]
  @override
  BiologicallyDerivedProductProperty build() =>
      BiologicallyDerivedProductProperty.fromJson(toJson());

  /// Converts a [BiologicallyDerivedProductPropertyBuilder]
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
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXBiologicallyDerivedProductPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'CodeableConceptBuilder',
          'PeriodBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'FhirStringBuilder',
          'AttachmentBuilder',
        ];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BiologicallyDerivedProductPropertyBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BiologicallyDerivedProductPropertyBuilder clone() =>
      throw UnimplementedError();
  @override
  BiologicallyDerivedProductPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXBiologicallyDerivedProductPropertyBuilder? valueX,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    CodeableConceptBuilder? valueCodeableConcept,
    PeriodBuilder? valuePeriod,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    FhirStringBuilder? valueString,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BiologicallyDerivedProductPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueBoolean ??
          valueInteger ??
          valueCodeableConcept ??
          valuePeriod ??
          valueQuantity ??
          valueRange ??
          valueRatio ??
          valueString ??
          valueAttachment ??
          this.valueX,
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
    if (o is! BiologicallyDerivedProductPropertyBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
