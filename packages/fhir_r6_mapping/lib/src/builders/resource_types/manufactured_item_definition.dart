import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ManufacturedItemDefinition,
        ManufacturedItemDefinitionComponent,
        ManufacturedItemDefinitionConstituent,
        ManufacturedItemDefinitionProperty,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ManufacturedItemDefinitionBuilder]
/// The definition and characteristics of a medicinal manufactured item,
/// such as a tablet or capsule, as contained in a packaged medicinal
/// product.
class ManufacturedItemDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionBuilder]

  ManufacturedItemDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.name,
    this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.marketingStatus,
    this.ingredient,
    this.property,
    this.component,
  }) : super(
          objectPath: 'ManufacturedItemDefinition',
          resourceType: R5ResourceType.ManufacturedItemDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ManufacturedItemDefinitionBuilder.empty() =>
      ManufacturedItemDefinitionBuilder(
        status: PublicationStatusBuilder.values.first,
        manufacturedDoseForm: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ManufacturedItemDefinition';
    return ManufacturedItemDefinitionBuilder(
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
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      manufacturedDoseForm: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'manufacturedDoseForm',
        CodeableConceptBuilder.fromJson,
        '$objectPath.manufacturedDoseForm',
      ),
      unitOfPresentation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unitOfPresentation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unitOfPresentation',
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatusBuilder>(
            (v) => MarketingStatusBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.marketingStatus',
              },
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionPropertyBuilder>(
            (v) => ManufacturedItemDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionComponentBuilder>(
            (v) => ManufacturedItemDefinitionComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinition';

  /// [identifier]
  /// Unique identifier.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of this item. Enables tracking the life-cycle of the
  /// content.
  PublicationStatusBuilder? status;

  /// [name]
  /// A descriptive name applied to this item.
  FhirStringBuilder? name;

  /// [manufacturedDoseForm]
  /// Dose form as manufactured and before any transformation into the
  /// pharmaceutical product.
  CodeableConceptBuilder? manufacturedDoseForm;

  /// [unitOfPresentation]
  /// The “real-world” units in which the quantity of the manufactured item
  /// is described.
  CodeableConceptBuilder? unitOfPresentation;

  /// [manufacturer]
  /// Manufacturer of the item, one of several possible.
  List<ReferenceBuilder>? manufacturer;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  List<MarketingStatusBuilder>? marketingStatus;

  /// [ingredient]
  /// The ingredients of this manufactured item. This is only needed if the
  /// ingredients are not specified by incoming references from the
  /// Ingredient resource.
  List<CodeableConceptBuilder>? ingredient;

  /// [property]
  /// General characteristics of this item.
  List<ManufacturedItemDefinitionPropertyBuilder>? property;

  /// [component]
  /// Physical parts of the manufactured item, that it is intrisically made
  /// from. This is distinct from the ingredients that are part of its
  /// chemical makeup.
  List<ManufacturedItemDefinitionComponentBuilder>? component;

  /// Converts a [ManufacturedItemDefinitionBuilder]
  /// to [ManufacturedItemDefinition]
  @override
  ManufacturedItemDefinition build() =>
      ManufacturedItemDefinition.fromJson(toJson());

  /// Converts a [ManufacturedItemDefinitionBuilder]
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
    addField('status', status);
    addField('name', name);
    addField('manufacturedDoseForm', manufacturedDoseForm);
    addField('unitOfPresentation', unitOfPresentation);
    addField('manufacturer', manufacturer);
    addField('marketingStatus', marketingStatus);
    addField('ingredient', ingredient);
    addField('property', property);
    addField('component', component);
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
      'name',
      'manufacturedDoseForm',
      'unitOfPresentation',
      'manufacturer',
      'marketingStatus',
      'ingredient',
      'property',
      'component',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'manufacturedDoseForm':
        if (manufacturedDoseForm != null) {
          fields.add(manufacturedDoseForm!);
        }
      case 'unitOfPresentation':
        if (unitOfPresentation != null) {
          fields.add(unitOfPresentation!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'marketingStatus':
        if (marketingStatus != null) {
          fields.addAll(marketingStatus!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturedDoseForm':
        {
          if (child is CodeableConceptBuilder) {
            manufacturedDoseForm = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitOfPresentation':
        {
          if (child is CodeableConceptBuilder) {
            unitOfPresentation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            manufacturer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            manufacturer = [
              ...(manufacturer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'marketingStatus':
        {
          if (child is List<MarketingStatusBuilder>) {
            // Replace or create new list
            marketingStatus = child;
            return;
          } else if (child is MarketingStatusBuilder) {
            // Add single element to existing list or create new list
            marketingStatus = [
              ...(marketingStatus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ingredient':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            ingredient = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            ingredient = [
              ...(ingredient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<ManufacturedItemDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is ManufacturedItemDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'component':
        {
          if (child is List<ManufacturedItemDefinitionComponentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is ManufacturedItemDefinitionComponentBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'manufacturedDoseForm':
        return ['CodeableConceptBuilder'];
      case 'unitOfPresentation':
        return ['CodeableConceptBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'marketingStatus':
        return ['MarketingStatusBuilder'];
      case 'ingredient':
        return ['CodeableConceptBuilder'];
      case 'property':
        return ['ManufacturedItemDefinitionPropertyBuilder'];
      case 'component':
        return ['ManufacturedItemDefinitionComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ManufacturedItemDefinitionBuilder]
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
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'manufacturedDoseForm':
        {
          manufacturedDoseForm = CodeableConceptBuilder.empty();
          return;
        }
      case 'unitOfPresentation':
        {
          unitOfPresentation = CodeableConceptBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = <ReferenceBuilder>[];
          return;
        }
      case 'marketingStatus':
        {
          marketingStatus = <MarketingStatusBuilder>[];
          return;
        }
      case 'ingredient':
        {
          ingredient = <CodeableConceptBuilder>[];
          return;
        }
      case 'property':
        {
          property = <ManufacturedItemDefinitionPropertyBuilder>[];
          return;
        }
      case 'component':
        {
          component = <ManufacturedItemDefinitionComponentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ManufacturedItemDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ManufacturedItemDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    PublicationStatusBuilder? status,
    FhirStringBuilder? name,
    CodeableConceptBuilder? manufacturedDoseForm,
    CodeableConceptBuilder? unitOfPresentation,
    List<ReferenceBuilder>? manufacturer,
    List<MarketingStatusBuilder>? marketingStatus,
    List<CodeableConceptBuilder>? ingredient,
    List<ManufacturedItemDefinitionPropertyBuilder>? property,
    List<ManufacturedItemDefinitionComponentBuilder>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ManufacturedItemDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      name: name ?? this.name,
      manufacturedDoseForm: manufacturedDoseForm ?? this.manufacturedDoseForm,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
      manufacturer: manufacturer ?? this.manufacturer,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      ingredient: ingredient ?? this.ingredient,
      property: property ?? this.property,
      component: component ?? this.component,
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
    if (o is! ManufacturedItemDefinitionBuilder) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturedDoseForm,
      o.manufacturedDoseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfPresentation,
      o.unitOfPresentation,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<MarketingStatusBuilder>(
      marketingStatus,
      o.marketingStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionComponentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ManufacturedItemDefinitionPropertyBuilder]
/// General characteristics of this item.
class ManufacturedItemDefinitionPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionPropertyBuilder]

  ManufacturedItemDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXManufacturedItemDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    FhirMarkdownBuilder? valueMarkdown,
    AttachmentBuilder? valueAttachment,
    ReferenceBuilder? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueMarkdown ??
            valueAttachment ??
            valueReference,
        super(
          objectPath: 'ManufacturedItemDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ManufacturedItemDefinitionPropertyBuilder.empty() =>
      ManufacturedItemDefinitionPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ManufacturedItemDefinition.property';
    return ManufacturedItemDefinitionPropertyBuilder(
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
          ValueXManufacturedItemDefinitionPropertyBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueMarkdown': FhirMarkdownBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// A value for the characteristic.
  ValueXManufacturedItemDefinitionPropertyBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get valueMarkdown => valueX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Converts a [ManufacturedItemDefinitionPropertyBuilder]
  /// to [ManufacturedItemDefinitionProperty]
  @override
  ManufacturedItemDefinitionProperty build() =>
      ManufacturedItemDefinitionProperty.fromJson(toJson());

  /// Converts a [ManufacturedItemDefinitionPropertyBuilder]
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
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdownBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
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
          if (child is ValueXManufacturedItemDefinitionPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'valueMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
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
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
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
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'FhirDateBuilder',
          'FhirBooleanBuilder',
          'FhirMarkdownBuilder',
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ManufacturedItemDefinitionPropertyBuilder]
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
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueMarkdown':
        {
          valueX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ManufacturedItemDefinitionPropertyBuilder clone() =>
      throw UnimplementedError();
  @override
  ManufacturedItemDefinitionPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXManufacturedItemDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    FhirMarkdownBuilder? valueMarkdown,
    AttachmentBuilder? valueAttachment,
    ReferenceBuilder? valueReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ManufacturedItemDefinitionPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueDate ??
          valueBoolean ??
          valueMarkdown ??
          valueAttachment ??
          valueReference ??
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
    if (o is! ManufacturedItemDefinitionPropertyBuilder) {
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

/// [ManufacturedItemDefinitionComponentBuilder]
/// Physical parts of the manufactured item, that it is intrisically made
/// from. This is distinct from the ingredients that are part of its
/// chemical makeup.
class ManufacturedItemDefinitionComponentBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionComponentBuilder]

  ManufacturedItemDefinitionComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.function_,
    this.amount,
    this.constituent,
    this.property,
    this.component,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ManufacturedItemDefinition.component',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ManufacturedItemDefinitionComponentBuilder.empty() =>
      ManufacturedItemDefinitionComponentBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ManufacturedItemDefinition.component';
    return ManufacturedItemDefinitionComponentBuilder(
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
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.function',
              },
            ),
          )
          .toList(),
      amount: (json['amount'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.amount',
              },
            ),
          )
          .toList(),
      constituent: (json['constituent'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionConstituentBuilder>(
            (v) => ManufacturedItemDefinitionConstituentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.constituent',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionPropertyBuilder>(
            (v) => ManufacturedItemDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionComponentBuilder>(
            (v) => ManufacturedItemDefinitionComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionComponentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionComponent';

  /// [type]
  /// Defining type of the component e.g. shell, layer, ink.
  CodeableConceptBuilder? type;

  /// [function_]
  /// The function of this component within the item e.g. delivers active
  /// ingredient, masks taste.
  List<CodeableConceptBuilder>? function_;

  /// [amount]
  /// The measurable amount of total quantity of all substances in the
  /// component, expressable in different ways (e.g. by mass or volume).
  List<QuantityBuilder>? amount;

  /// [constituent]
  /// A reference to a constituent of the manufactured item as a whole,
  /// linked here so that its component location within the item can be
  /// indicated. This not where the item's ingredient are primarily stated
  /// (for which see Ingredient.for or
  /// ManufacturedItemDefinition.ingredient).
  List<ManufacturedItemDefinitionConstituentBuilder>? constituent;

  /// [property]
  /// General characteristics of this component.
  List<ManufacturedItemDefinitionPropertyBuilder>? property;

  /// [component]
  /// A component that this component contains or is made from.
  List<ManufacturedItemDefinitionComponentBuilder>? component;

  /// Converts a [ManufacturedItemDefinitionComponentBuilder]
  /// to [ManufacturedItemDefinitionComponent]
  @override
  ManufacturedItemDefinitionComponent build() =>
      ManufacturedItemDefinitionComponent.fromJson(toJson());

  /// Converts a [ManufacturedItemDefinitionComponentBuilder]
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
    addField('function', function_);
    addField('amount', amount);
    addField('constituent', constituent);
    addField('property', property);
    addField('component', component);
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
      'function',
      'amount',
      'constituent',
      'property',
      'component',
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
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'amount':
        if (amount != null) {
          fields.addAll(amount!);
        }
      case 'constituent':
        if (constituent != null) {
          fields.addAll(constituent!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
      case 'function':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            function_ = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            function_ = [
              ...(function_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            amount = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            amount = [
              ...(amount ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'constituent':
        {
          if (child is List<ManufacturedItemDefinitionConstituentBuilder>) {
            // Replace or create new list
            constituent = child;
            return;
          } else if (child is ManufacturedItemDefinitionConstituentBuilder) {
            // Add single element to existing list or create new list
            constituent = [
              ...(constituent ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<ManufacturedItemDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is ManufacturedItemDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'component':
        {
          if (child is List<ManufacturedItemDefinitionComponentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is ManufacturedItemDefinitionComponentBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      case 'constituent':
        return ['ManufacturedItemDefinitionConstituentBuilder'];
      case 'property':
        return ['ManufacturedItemDefinitionPropertyBuilder'];
      case 'component':
        return ['ManufacturedItemDefinitionComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ManufacturedItemDefinitionComponentBuilder]
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
      case 'function':
        {
          function_ = <CodeableConceptBuilder>[];
          return;
        }
      case 'amount':
        {
          amount = <QuantityBuilder>[];
          return;
        }
      case 'constituent':
        {
          constituent = <ManufacturedItemDefinitionConstituentBuilder>[];
          return;
        }
      case 'property':
        {
          property = <ManufacturedItemDefinitionPropertyBuilder>[];
          return;
        }
      case 'component':
        {
          component = <ManufacturedItemDefinitionComponentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ManufacturedItemDefinitionComponentBuilder clone() =>
      throw UnimplementedError();
  @override
  ManufacturedItemDefinitionComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? function_,
    List<QuantityBuilder>? amount,
    List<ManufacturedItemDefinitionConstituentBuilder>? constituent,
    List<ManufacturedItemDefinitionPropertyBuilder>? property,
    List<ManufacturedItemDefinitionComponentBuilder>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ManufacturedItemDefinitionComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      function_: function_ ?? this.function_,
      amount: amount ?? this.amount,
      constituent: constituent ?? this.constituent,
      property: property ?? this.property,
      component: component ?? this.component,
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
    if (o is! ManufacturedItemDefinitionComponentBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!listEquals<QuantityBuilder>(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionConstituentBuilder>(
      constituent,
      o.constituent,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionComponentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ManufacturedItemDefinitionConstituentBuilder]
/// A reference to a constituent of the manufactured item as a whole,
/// linked here so that its component location within the item can be
/// indicated. This not where the item's ingredient are primarily stated
/// (for which see Ingredient.for or
/// ManufacturedItemDefinition.ingredient).
class ManufacturedItemDefinitionConstituentBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionConstituentBuilder]

  ManufacturedItemDefinitionConstituentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.amount,
    this.location,
    this.function_,
    this.hasIngredient,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ManufacturedItemDefinition.component.constituent',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ManufacturedItemDefinitionConstituentBuilder.empty() =>
      ManufacturedItemDefinitionConstituentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionConstituentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ManufacturedItemDefinition.component.constituent';
    return ManufacturedItemDefinitionConstituentBuilder(
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
      amount: (json['amount'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.amount',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.function',
              },
            ),
          )
          .toList(),
      hasIngredient: (json['hasIngredient'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hasIngredient',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionConstituentBuilder]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionConstituentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionConstituentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionConstituentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionConstituentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionConstituentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionConstituentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionConstituentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionConstituent';

  /// [amount]
  /// The measurable amount of the substance, expressable in different ways
  /// (e.g. by mass or volume).
  List<QuantityBuilder>? amount;

  /// [location]
  /// The physical location of the constituent/ingredient within the
  /// component. Example – if the component is the bead in the capsule, then
  /// the location would be where the ingredient resides within the product
  /// part – intragranular, extra-granular, etc.
  List<CodeableConceptBuilder>? location;

  /// [function_]
  /// The function of this constituent within the component e.g. binder.
  List<CodeableConceptBuilder>? function_;

  /// [hasIngredient]
  /// The ingredient that is the constituent of the given component.
  List<CodeableReferenceBuilder>? hasIngredient;

  /// Converts a [ManufacturedItemDefinitionConstituentBuilder]
  /// to [ManufacturedItemDefinitionConstituent]
  @override
  ManufacturedItemDefinitionConstituent build() =>
      ManufacturedItemDefinitionConstituent.fromJson(toJson());

  /// Converts a [ManufacturedItemDefinitionConstituentBuilder]
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
    addField('amount', amount);
    addField('location', location);
    addField('function', function_);
    addField('hasIngredient', hasIngredient);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'amount',
      'location',
      'function',
      'hasIngredient',
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
      case 'amount':
        if (amount != null) {
          fields.addAll(amount!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'hasIngredient':
        if (hasIngredient != null) {
          fields.addAll(hasIngredient!);
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
      case 'amount':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            amount = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            amount = [
              ...(amount ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            location = [
              ...(location ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'function':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            function_ = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            function_ = [
              ...(function_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hasIngredient':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            hasIngredient = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            hasIngredient = [
              ...(hasIngredient ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      case 'location':
        return ['CodeableConceptBuilder'];
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'hasIngredient':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ManufacturedItemDefinitionConstituentBuilder]
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
      case 'amount':
        {
          amount = <QuantityBuilder>[];
          return;
        }
      case 'location':
        {
          location = <CodeableConceptBuilder>[];
          return;
        }
      case 'function':
        {
          function_ = <CodeableConceptBuilder>[];
          return;
        }
      case 'hasIngredient':
        {
          hasIngredient = <CodeableReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ManufacturedItemDefinitionConstituentBuilder clone() =>
      throw UnimplementedError();
  @override
  ManufacturedItemDefinitionConstituentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<QuantityBuilder>? amount,
    List<CodeableConceptBuilder>? location,
    List<CodeableConceptBuilder>? function_,
    List<CodeableReferenceBuilder>? hasIngredient,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ManufacturedItemDefinitionConstituentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      amount: amount ?? this.amount,
      location: location ?? this.location,
      function_: function_ ?? this.function_,
      hasIngredient: hasIngredient ?? this.hasIngredient,
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
    if (o is! ManufacturedItemDefinitionConstituentBuilder) {
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
    if (!listEquals<QuantityBuilder>(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      hasIngredient,
      o.hasIngredient,
    )) {
      return false;
    }
    return true;
  }
}
