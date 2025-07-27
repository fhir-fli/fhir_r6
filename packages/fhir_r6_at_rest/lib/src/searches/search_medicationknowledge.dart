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
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [classification] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [classificationType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge classificationType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}classification_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [doseform] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge doseform(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}doseform'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [ingredientCode] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge ingredientCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}ingredient_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [monitoringProgramName] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramName(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters[
            '${modifier != null ? '$modifier' : ''}monitoring_program_name'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [monitoringProgramType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monitoringProgramType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters[
            '${modifier != null ? '$modifier' : ''}monitoring_program_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [monographType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge monographType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}monograph_type'] =
        system != null ? '$system|$value' : '$value';
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    parameters['${modifier != null ? '$modifier' : ''}packaging_cost'] =
        '$value|${system?.toString() ?? ''}|${unit?.toString() ?? ''}';
    return this;
  }

  /// a token search for [packagingCostConcept] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge packagingCostConcept(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}packaging_cost_concept'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [productType] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge productType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}product_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [sourceCost] in the resource
  /// [MedicationKnowledge]
  SearchMedicationKnowledge sourceCost(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}source_cost'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
