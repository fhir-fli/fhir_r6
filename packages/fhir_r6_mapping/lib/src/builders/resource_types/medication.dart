import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Medication,
        MedicationBatch,
        MedicationIngredient,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicationBuilder]
/// This resource is primarily used for the identification and definition
/// of a medication, including ingredients, for the purposes of
/// prescribing, dispensing, and administering a medication as well as for
/// making statements about medication use.
class MedicationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationBuilder]

  MedicationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.marketingAuthorizationHolder,
    this.doseForm,
    this.totalVolume,
    this.ingredient,
    this.batch,
    this.definition,
  }) : super(
          objectPath: 'Medication',
          resourceType: R5ResourceType.Medication,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationBuilder.empty() => MedicationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication';
    return MedicationBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parsePrimitive<MedicationStatusCodesBuilder>(
        json,
        'status',
        MedicationStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      marketingAuthorizationHolder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'marketingAuthorizationHolder',
        ReferenceBuilder.fromJson,
        '$objectPath.marketingAuthorizationHolder',
      ),
      doseForm: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'doseForm',
        CodeableConceptBuilder.fromJson,
        '$objectPath.doseForm',
      ),
      totalVolume: JsonParser.parseObject<QuantityBuilder>(
        json,
        'totalVolume',
        QuantityBuilder.fromJson,
        '$objectPath.totalVolume',
      ),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<MedicationIngredientBuilder>(
            (v) => MedicationIngredientBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      batch: JsonParser.parseObject<MedicationBatchBuilder>(
        json,
        'batch',
        MedicationBatchBuilder.fromJson,
        '$objectPath.batch',
      ),
      definition: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'definition',
        ReferenceBuilder.fromJson,
        '$objectPath.definition',
      ),
    );
  }

  /// Deserialize [MedicationBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Medication';

  /// [identifier]
  /// Business identifier for this medication.
  List<IdentifierBuilder>? identifier;

  /// [code]
  /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a
  /// standard medication code such as a code from RxNorm, SNOMED CT, IDMP
  /// etc. It could also be a national or local formulary code, optionally
  /// with translations to other code systems.
  CodeableConceptBuilder? code;

  /// [status]
  /// A code to indicate if the medication is in active use.
  MedicationStatusCodesBuilder? status;

  /// [marketingAuthorizationHolder]
  /// The company or other legal entity that has authorization, from the
  /// appropriate drug regulatory authority, to market a medicine in one or
  /// more jurisdictions. Typically abbreviated MAH.Note: The MAH may
  /// manufacture the product and may also contract the manufacturing of the
  /// product to one or more companies (organizations).
  ReferenceBuilder? marketingAuthorizationHolder;

  /// [doseForm]
  /// Describes the form of the item. Powder; tablets; capsule.
  CodeableConceptBuilder? doseForm;

  /// [totalVolume]
  /// When the specified product code does not infer a package size, this is
  /// the specific amount of drug in the product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute
  /// provides additional clarification of the package amount (For example, 3
  /// mL, 10mL, etc.).
  QuantityBuilder? totalVolume;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  List<MedicationIngredientBuilder>? ingredient;

  /// [batch]
  /// Information that only applies to packages (not products).
  MedicationBatchBuilder? batch;

  /// [definition]
  /// A reference to a knowledge resource that provides more information
  /// about this medication.
  ReferenceBuilder? definition;

  /// Converts a [MedicationBuilder]
  /// to [Medication]
  @override
  Medication build() => Medication.fromJson(toJson());

  /// Converts a [MedicationBuilder]
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
    addField('code', code);
    addField('status', status);
    addField('marketingAuthorizationHolder', marketingAuthorizationHolder);
    addField('doseForm', doseForm);
    addField('totalVolume', totalVolume);
    addField('ingredient', ingredient);
    addField('batch', batch);
    addField('definition', definition);
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
      'code',
      'status',
      'marketingAuthorizationHolder',
      'doseForm',
      'totalVolume',
      'ingredient',
      'batch',
      'definition',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'marketingAuthorizationHolder':
        if (marketingAuthorizationHolder != null) {
          fields.add(marketingAuthorizationHolder!);
        }
      case 'doseForm':
        if (doseForm != null) {
          fields.add(doseForm!);
        }
      case 'totalVolume':
        if (totalVolume != null) {
          fields.add(totalVolume!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'batch':
        if (batch != null) {
          fields.add(batch!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is MedicationStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MedicationStatusCodesBuilder(stringValue);
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
      case 'marketingAuthorizationHolder':
        {
          if (child is ReferenceBuilder) {
            marketingAuthorizationHolder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseForm':
        {
          if (child is CodeableConceptBuilder) {
            doseForm = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'totalVolume':
        {
          if (child is QuantityBuilder) {
            totalVolume = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ingredient':
        {
          if (child is List<MedicationIngredientBuilder>) {
            // Replace or create new list
            ingredient = child;
            return;
          } else if (child is MedicationIngredientBuilder) {
            // Add single element to existing list or create new list
            ingredient = [
              ...(ingredient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'batch':
        {
          if (child is MedicationBatchBuilder) {
            batch = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is ReferenceBuilder) {
            definition = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'marketingAuthorizationHolder':
        return ['ReferenceBuilder'];
      case 'doseForm':
        return ['CodeableConceptBuilder'];
      case 'totalVolume':
        return ['QuantityBuilder'];
      case 'ingredient':
        return ['MedicationIngredientBuilder'];
      case 'batch':
        return ['MedicationBatchBuilder'];
      case 'definition':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = MedicationStatusCodesBuilder.empty();
          return;
        }
      case 'marketingAuthorizationHolder':
        {
          marketingAuthorizationHolder = ReferenceBuilder.empty();
          return;
        }
      case 'doseForm':
        {
          doseForm = CodeableConceptBuilder.empty();
          return;
        }
      case 'totalVolume':
        {
          totalVolume = QuantityBuilder.empty();
          return;
        }
      case 'ingredient':
        {
          ingredient = <MedicationIngredientBuilder>[];
          return;
        }
      case 'batch':
        {
          batch = MedicationBatchBuilder.empty();
          return;
        }
      case 'definition':
        {
          definition = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationBuilder clone() => throw UnimplementedError();
  @override
  MedicationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? code,
    MedicationStatusCodesBuilder? status,
    ReferenceBuilder? marketingAuthorizationHolder,
    CodeableConceptBuilder? doseForm,
    QuantityBuilder? totalVolume,
    List<MedicationIngredientBuilder>? ingredient,
    MedicationBatchBuilder? batch,
    ReferenceBuilder? definition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      status: status ?? this.status,
      marketingAuthorizationHolder:
          marketingAuthorizationHolder ?? this.marketingAuthorizationHolder,
      doseForm: doseForm ?? this.doseForm,
      totalVolume: totalVolume ?? this.totalVolume,
      ingredient: ingredient ?? this.ingredient,
      batch: batch ?? this.batch,
      definition: definition ?? this.definition,
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
    if (o is! MedicationBuilder) {
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
      code,
      o.code,
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
      marketingAuthorizationHolder,
      o.marketingAuthorizationHolder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseForm,
      o.doseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalVolume,
      o.totalVolume,
    )) {
      return false;
    }
    if (!listEquals<MedicationIngredientBuilder>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      batch,
      o.batch,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationIngredientBuilder]
/// Identifies a particular constituent of interest in the product.
class MedicationIngredientBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationIngredientBuilder]

  MedicationIngredientBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.isActive,
    StrengthXMedicationIngredientBuilder? strengthX,
    RatioBuilder? strengthRatio,
    CodeableConceptBuilder? strengthCodeableConcept,
    QuantityBuilder? strengthQuantity,
    super.disallowExtensions,
  })  : strengthX = strengthX ??
            strengthRatio ??
            strengthCodeableConcept ??
            strengthQuantity,
        super(
          objectPath: 'Medication.ingredient',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationIngredientBuilder.empty() => MedicationIngredientBuilder(
        item: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationIngredientBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication.ingredient';
    return MedicationIngredientBuilder(
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
      item: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'item',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
      isActive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isActive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isActive',
      ),
      strengthX:
          JsonParser.parsePolymorphic<StrengthXMedicationIngredientBuilder>(
        json,
        {
          'strengthRatio': RatioBuilder.fromJson,
          'strengthCodeableConcept': CodeableConceptBuilder.fromJson,
          'strengthQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationIngredientBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationIngredientBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationIngredientBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationIngredientBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationIngredientBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationIngredientBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationIngredientBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationIngredientBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationIngredient';

  /// [item]
  /// The ingredient (substance or medication) that the ingredient.strength
  /// relates to. This is represented as a concept from a code system or
  /// described in another resource (Substance or Medication).
  CodeableReferenceBuilder? item;

  /// [isActive]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  FhirBooleanBuilder? isActive;

  /// [strengthX]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet but
  /// can also be expressed a quantity when the denominator is assumed to be
  /// 1 tablet.
  StrengthXMedicationIngredientBuilder? strengthX;

  /// Getter for [strengthRatio] as a RatioBuilder
  RatioBuilder? get strengthRatio => strengthX?.isAs<RatioBuilder>();

  /// Getter for [strengthCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get strengthCodeableConcept =>
      strengthX?.isAs<CodeableConceptBuilder>();

  /// Getter for [strengthQuantity] as a QuantityBuilder
  QuantityBuilder? get strengthQuantity => strengthX?.isAs<QuantityBuilder>();

  /// Converts a [MedicationIngredientBuilder]
  /// to [MedicationIngredient]
  @override
  MedicationIngredient build() => MedicationIngredient.fromJson(toJson());

  /// Converts a [MedicationIngredientBuilder]
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
    addField('item', item);
    addField('isActive', isActive);
    if (strengthX != null) {
      final fhirType = strengthX!.fhirType;
      addField('strength${fhirType.capitalizeFirstLetter()}', strengthX);
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
      'item',
      'isActive',
      'strengthX',
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
      case 'item':
        if (item != null) {
          fields.add(item!);
        }
      case 'isActive':
        if (isActive != null) {
          fields.add(isActive!);
        }
      case 'strength':
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthX':
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthRatio':
        if (strengthX is RatioBuilder) {
          fields.add(strengthX!);
        }
      case 'strengthCodeableConcept':
        if (strengthX is CodeableConceptBuilder) {
          fields.add(strengthX!);
        }
      case 'strengthQuantity':
        if (strengthX is QuantityBuilder) {
          fields.add(strengthX!);
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
      case 'item':
        {
          if (child is CodeableReferenceBuilder) {
            item = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isActive':
        {
          if (child is FhirBooleanBuilder) {
            isActive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isActive = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strength':
      case 'strengthX':
        {
          if (child is StrengthXMedicationIngredientBuilder) {
            strengthX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              strengthX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              strengthX = child;
              return;
            }
            if (child is QuantityBuilder) {
              strengthX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strengthRatio':
        {
          if (child is RatioBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strengthCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strengthQuantity':
        {
          if (child is QuantityBuilder) {
            strengthX = child;
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
      case 'item':
        return ['CodeableReferenceBuilder'];
      case 'isActive':
        return ['FhirBooleanBuilder'];
      case 'strength':
      case 'strengthX':
        return [
          'RatioBuilder',
          'CodeableConceptBuilder',
          'QuantityBuilder',
        ];
      case 'strengthRatio':
        return ['RatioBuilder'];
      case 'strengthCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'strengthQuantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationIngredientBuilder]
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
      case 'item':
        {
          item = CodeableReferenceBuilder.empty();
          return;
        }
      case 'isActive':
        {
          isActive = FhirBooleanBuilder.empty();
          return;
        }
      case 'strength':
      case 'strengthX':
      case 'strengthRatio':
        {
          strengthX = RatioBuilder.empty();
          return;
        }
      case 'strengthCodeableConcept':
        {
          strengthX = CodeableConceptBuilder.empty();
          return;
        }
      case 'strengthQuantity':
        {
          strengthX = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationIngredientBuilder clone() => throw UnimplementedError();
  @override
  MedicationIngredientBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? item,
    FhirBooleanBuilder? isActive,
    StrengthXMedicationIngredientBuilder? strengthX,
    RatioBuilder? strengthRatio,
    CodeableConceptBuilder? strengthCodeableConcept,
    QuantityBuilder? strengthQuantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationIngredientBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      isActive: isActive ?? this.isActive,
      strengthX: strengthX ??
          strengthRatio ??
          strengthCodeableConcept ??
          strengthQuantity ??
          this.strengthX,
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
    if (o is! MedicationIngredientBuilder) {
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
      item,
      o.item,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isActive,
      o.isActive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strengthX,
      o.strengthX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationBatchBuilder]
/// Information that only applies to packages (not products).
class MedicationBatchBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationBatchBuilder]

  MedicationBatchBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.expirationDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Medication.batch',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationBatchBuilder.empty() => MedicationBatchBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationBatchBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication.batch';
    return MedicationBatchBuilder(
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
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'expirationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
    );
  }

  /// Deserialize [MedicationBatchBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationBatchBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationBatchBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationBatchBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationBatchBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationBatchBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationBatchBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationBatchBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationBatch';

  /// [lotNumber]
  /// The assigned lot number of a batch of the specified product.
  FhirStringBuilder? lotNumber;

  /// [expirationDate]
  /// When this specific batch of product will expire.
  FhirDateTimeBuilder? expirationDate;

  /// Converts a [MedicationBatchBuilder]
  /// to [MedicationBatch]
  @override
  MedicationBatch build() => MedicationBatch.fromJson(toJson());

  /// Converts a [MedicationBatchBuilder]
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
    addField('lotNumber', lotNumber);
    addField('expirationDate', expirationDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'lotNumber',
      'expirationDate',
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
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
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
      case 'lotNumber':
        {
          if (child is FhirStringBuilder) {
            lotNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                lotNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'expirationDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationBatchBuilder]
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
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationBatchBuilder clone() => throw UnimplementedError();
  @override
  MedicationBatchBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? lotNumber,
    FhirDateTimeBuilder? expirationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationBatchBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lotNumber: lotNumber ?? this.lotNumber,
      expirationDate: expirationDate ?? this.expirationDate,
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
    if (o is! MedicationBatchBuilder) {
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
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    return true;
  }
}
