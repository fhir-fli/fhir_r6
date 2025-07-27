import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'period.g.dart';

/// [Period]
/// A time period defined by a start and end date and optionally time.
class Period extends DataType
    implements
        OccurrenceXAdverseEvent,
        OnsetXAllergyIntolerance,
        OccurredXAuditEvent,
        ValueXAuditEventDetail,
        CollectedXBiologicallyDerivedProductCollection,
        ValueXBiologicallyDerivedProductProperty,
        CoverageXCareTeamParticipant,
        OccurrenceXChargeItem,
        WhenXClaimEvent,
        TimingXClaimSupportingInfo,
        ServicedXClaimItem,
        WhenXClaimResponseEvent,
        ServicedXClaimResponseAddItem,
        EffectiveXClinicalImpression,
        OccurrenceXCommunicationRequest,
        OnsetXCondition,
        AbatementXCondition,
        OccurrenceXContractAction,
        ServicedXCoverageEligibilityRequest,
        WhenXCoverageEligibilityRequestEvent,
        ServicedXCoverageEligibilityResponse,
        WhenXCoverageEligibilityResponseEvent,
        IdentifiedXDetectedIssue,
        OccurrenceXDeviceRequest,
        TimingXDeviceUsage,
        EffectiveXDiagnosticReport,
        WhenXExplanationOfBenefitEvent,
        TimingXExplanationOfBenefitSupportingInfo,
        ServicedXExplanationOfBenefitItem,
        ServicedXExplanationOfBenefitAddItem,
        BornXFamilyMemberHistory,
        OnsetXFamilyMemberHistoryCondition,
        PerformedXFamilyMemberHistoryProcedure,
        PeriodXInvoice,
        ServicedXInvoiceLineItem,
        MeasureScoreXMeasureReportGroup,
        MeasureScoreXMeasureReportStratum,
        OccurenceXMedicationAdministration,
        EffectiveXMedicationStatement,
        OccurrenceXNutritionIntake,
        EffectiveXObservation,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        OccurrenceXProcedure,
        OccurredXProvenance,
        DateXRegulatedAuthorizationCase,
        TimingXRequestOrchestrationAction,
        OccurrenceXRiskAssessment,
        WhenXRiskAssessmentPrediction,
        OccurrenceXServiceRequest,
        ValueXServiceRequestParameter,
        CollectedXSpecimenCollection,
        TimeXSpecimenProcessing,
        OccurrenceXSupplyDelivery,
        OccurrenceXSupplyRequest,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        ValueXDataRequirementDateFilter,
        ValueXDataRequirementValueFilter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        BoundsXTimingRepeat {
  /// Primary constructor for
  /// [Period]

  const Period({
    super.id,
    super.extension_,
    this.start,
    this.end,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Period.fromJson(
    Map<String, dynamic> json,
  ) {
    return Period(
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
      start: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'start',
        FhirDateTime.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'end',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [Period]
  /// from a [String] or [YamlMap] object
  factory Period.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Period.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Period.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Period '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Period]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Period.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Period.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Period';

  /// [start]
  /// The start of the period. The boundary is inclusive.
  final FhirDateTime? start;

  /// [end]
  /// The end of the period. If the end of the period is missing, it means no
  /// end was known or planned at the time the instance was created. The
  /// start may be in the past, and the end date in the future, which means
  /// that period is expected/planned to end at that time.
  final FhirDateTime? end;
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
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'start',
      'end',
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
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
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
  Period clone() => copyWith();

  /// Copy function for [Period]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PeriodCopyWith<Period> get copyWith => _$PeriodCopyWithImpl<Period>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Period) {
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
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    return true;
  }
}
