// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [NutritionIntake] resource.
class SearchNutritionIntake extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [NutritionIntake]
  SearchNutritionIntake identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [NutritionIntake]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionIntake patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [NutritionIntake]
  SearchNutritionIntake code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [NutritionIntake]
  SearchNutritionIntake date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [NutritionIntake]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionIntake encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a token search for [nutrition] in the resource
  /// [NutritionIntake]
  SearchNutritionIntake nutrition(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('nutrition', paramValue);
    return this;
  }

  /// a reference search for [source] in the resource
  /// [NutritionIntake]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionIntake source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [NutritionIntake]
  SearchNutritionIntake status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [NutritionIntake]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchNutritionIntake subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
