// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MedicationKnowledge] resource.
class SearchMedicationKnowledge extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [classification] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classification(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('classification', paramValue);
    return this;
  }

  /// a token search for [classificationType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classificationType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('classification-type', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [doseform] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge doseform(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('doseform', paramValue);
    return this;
  }

  /// a token search for [ingredientCode] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge ingredientCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('ingredient-code', paramValue);
    return this;
  }

  /// a token search for [monitoringProgramName] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramName(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monitoring-program-name', paramValue);
    return this;
  }

  /// a token search for [monitoringProgramType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monitoring-program-type', paramValue);
    return this;
  }

  /// a token search for [monographType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monographType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('monograph-type', paramValue);
    return this;
  }

  /// a quantity search for [packagingCost] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge packagingCost(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('packaging-cost', paramValue);
    return this;
  }

  /// a token search for [packagingCostConcept] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge packagingCostConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('packaging-cost-concept', paramValue);
    return this;
  }

  /// a token search for [productType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge productType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('product-type', paramValue);
    return this;
  }

  /// a token search for [sourceCost] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge sourceCost(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('source-cost', paramValue);
    return this;
  }
}
