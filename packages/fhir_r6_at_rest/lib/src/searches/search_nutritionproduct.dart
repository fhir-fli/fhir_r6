// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [NutritionProduct] resource.
class SearchNutritionProduct extends SearchResource {
  /// a token search for [code] in the resource
  /// [NutritionProduct]
  @override
  SearchNutritionProduct code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [expirationDate] in the resource
  /// [NutritionProduct]
  SearchNutritionProduct expirationDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['expiration_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [NutritionProduct]
  @override
  SearchNutritionProduct identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [ingredientItem] in the resource
  /// [NutritionProduct]
  SearchNutritionProduct ingredientItem(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['ingredient_item'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [lotNumber] in the resource
  /// [NutritionProduct]
  SearchNutritionProduct lotNumber(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['lot_number'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [serialNumber] in the resource
  /// [NutritionProduct]
  SearchNutritionProduct serialNumber(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['serial_number'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [NutritionProduct]
  @override
  SearchNutritionProduct status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
