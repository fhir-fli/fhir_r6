import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart' show Quantity, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [QuantityBuilder]
/// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely
/// quantified, including amounts involving arbitrary units and floating
/// currencies.
class QuantityBuilder extends DataTypeBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        ValueXAuditEventDetailBuilder,
        ValueXBiologicallyDerivedProductPropertyBuilder,
        ValueXClaimSupportingInfoBuilder,
        ValueXConceptMapDependsOnBuilder,
        ValueXConditionDefinitionPreconditionBuilder,
        ValueXContractAnswerBuilder,
        ValueXCoverageCostToBeneficiaryBuilder,
        ValueXDevicePropertyBuilder,
        ValueXDeviceDefinitionPropertyBuilder,
        ValueXDeviceRequestParameterBuilder,
        ValueXEvidenceReportCharacteristicBuilder,
        InstancesXEvidenceVariableCharacteristicBuilder,
        DurationXEvidenceVariableCharacteristicBuilder,
        ValueXEvidenceVariableDefinitionByTypeAndValueBuilder,
        ValueXEvidenceVariableCategoryBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        DetailXGoalTargetBuilder,
        ValueXGroupCharacteristicBuilder,
        PresentationXIngredientStrengthBuilder,
        ConcentrationXIngredientStrengthBuilder,
        StrengthXIngredientReferenceStrengthBuilder,
        ValueXInventoryItemCharacteristicBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        MeasureScoreXMeasureReportGroupBuilder,
        ValueXMeasureReportStratumBuilder,
        MeasureScoreXMeasureReportStratumBuilder,
        ValueXMeasureReportComponentBuilder,
        StrengthXMedicationIngredientBuilder,
        RateXMedicationAdministrationDosageBuilder,
        ValueXMedicationKnowledgePatientCharacteristicBuilder,
        ValueXMedicationKnowledgeEnvironmentalSettingBuilder,
        StrengthXMedicationKnowledgeIngredientBuilder,
        ValueXMedicationKnowledgeDrugCharacteristicBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        RateXNutritionOrderAdministrationBuilder,
        ValueXNutritionProductCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        DetailXPlanDefinitionTargetBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        QuantityXServiceRequestBuilder,
        ValueXServiceRequestParameterBuilder,
        MinimumVolumeXSpecimenDefinitionContainerBuilder,
        AmountXSubstanceDefinitionMoietyBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        AmountXSubstanceDefinitionRelationshipBuilder,
        AmountXSubstanceReferenceInformationTargetBuilder,
        ValueXSupplyRequestParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DoseXDosageDoseAndRateBuilder,
        RateXDosageDoseAndRateBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        ValueXUsageContextBuilder {
  /// Primary constructor for
  /// [QuantityBuilder]

  QuantityBuilder({
    super.id,
    super.extension_,
    this.value,
    this.comparator,
    this.unit,
    this.system,
    this.code,
    super.disallowExtensions,
    super.objectPath = 'QuantityBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory QuantityBuilder.empty() => QuantityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory QuantityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Quantity';
    return QuantityBuilder(
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
      value: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'value',
        FhirDecimalBuilder.fromJson,
        '$objectPath.value',
      ),
      comparator: JsonParser.parsePrimitive<QuantityComparatorBuilder>(
        json,
        'comparator',
        QuantityComparatorBuilder.fromJson,
        '$objectPath.comparator',
      ),
      unit: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'unit',
        FhirStringBuilder.fromJson,
        '$objectPath.unit',
      ),
      system: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'system',
        FhirUriBuilder.fromJson,
        '$objectPath.system',
      ),
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [QuantityBuilder]
  /// from a [String] or [YamlMap] object
  factory QuantityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return QuantityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return QuantityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'QuantityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [QuantityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory QuantityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return QuantityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Quantity';

  /// [value]
  /// The value of the measured amount. The value includes an implicit
  /// precision in the presentation of the value.
  FhirDecimalBuilder? value;

  /// [comparator]
  /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement
  /// issues; e.g. if the comparator is "<" , then the real value is < stated
  /// value.
  QuantityComparatorBuilder? comparator;

  /// [unit]
  /// A human-readable form of the unit.
  FhirStringBuilder? unit;

  /// [system]
  /// The identification of the system that provides the coded form of the
  /// unit.
  FhirUriBuilder? system;

  /// [code]
  /// A computer processable form of the unit in some unit representation
  /// system.
  FhirCodeBuilder? code;

  /// Converts a [QuantityBuilder]
  /// to [Quantity]
  @override
  Quantity build() => Quantity.fromJson(toJson());

  /// Converts a [QuantityBuilder]
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
    addField('value', value);
    addField('comparator', comparator);
    addField('unit', unit);
    addField('system', system);
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'value',
      'comparator',
      'unit',
      'system',
      'code',
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
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'value':
        {
          if (child is FhirDecimalBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  value = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comparator':
        {
          if (child is QuantityComparatorBuilder) {
            comparator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = QuantityComparatorBuilder(stringValue);
                comparator = converted;
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
      case 'unit':
        {
          if (child is FhirStringBuilder) {
            unit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                unit = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'system':
        {
          if (child is FhirUriBuilder) {
            system = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                system = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
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
      case 'value':
        return ['FhirDecimalBuilder'];
      case 'comparator':
        return ['FhirCodeEnumBuilder'];
      case 'unit':
        return ['FhirStringBuilder'];
      case 'system':
        return ['FhirUriBuilder'];
      case 'code':
        return ['FhirCodeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [QuantityBuilder]
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
      case 'value':
        {
          value = FhirDecimalBuilder.empty();
          return;
        }
      case 'comparator':
        {
          comparator = QuantityComparatorBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = FhirStringBuilder.empty();
          return;
        }
      case 'system':
        {
          system = FhirUriBuilder.empty();
          return;
        }
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  QuantityBuilder clone() => throw UnimplementedError();
  @override
  QuantityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirDecimalBuilder? value,
    QuantityComparatorBuilder? comparator,
    FhirStringBuilder? unit,
    FhirUriBuilder? system,
    FhirCodeBuilder? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = QuantityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      comparator: comparator ?? this.comparator,
      unit: unit ?? this.unit,
      system: system ?? this.system,
      code: code ?? this.code,
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
    if (o is! QuantityBuilder) {
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
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}
