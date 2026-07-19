// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Ingredient] resource.
class SearchIngredient extends SearchResource {
  /// a reference search for [for_] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient for_(FhirString value) {
    addParameterValue('for', value.toString());
    return this;
  }

  /// a token search for [function] in the resource
  /// [Ingredient]
  SearchIngredient function(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('function', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Ingredient]
  SearchIngredient identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [manufacturer] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a token search for [role] in the resource
  /// [Ingredient]
  SearchIngredient role(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('role', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Ingredient]
  SearchIngredient status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a quantity search for [strengthConcentrationDenominator] in the resource
  /// [Ingredient]
  SearchIngredient strengthConcentrationDenominator(
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
    addParameterValue('strength-concentration-denominator', paramValue);
    return this;
  }

  /// a quantity search for [strengthConcentrationNumerator] in the resource
  /// [Ingredient]
  SearchIngredient strengthConcentrationNumerator(
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
    addParameterValue('strength-concentration-numerator', paramValue);
    return this;
  }

  /// a quantity search for [strengthConcentrationQuantity] in the resource
  /// [Ingredient]
  SearchIngredient strengthConcentrationQuantity(
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
    addParameterValue('strength-concentration-quantity', paramValue);
    return this;
  }

  /// a quantity search for [strengthPresentationDenominator] in the resource
  /// [Ingredient]
  SearchIngredient strengthPresentationDenominator(
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
    addParameterValue('strength-presentation-denominator', paramValue);
    return this;
  }

  /// a quantity search for [strengthPresentationNumerator] in the resource
  /// [Ingredient]
  SearchIngredient strengthPresentationNumerator(
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
    addParameterValue('strength-presentation-numerator', paramValue);
    return this;
  }

  /// a quantity search for [strengthPresentationQuantity] in the resource
  /// [Ingredient]
  SearchIngredient strengthPresentationQuantity(
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
    addParameterValue('strength-presentation-quantity', paramValue);
    return this;
  }

  /// a reference search for [substance] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient substance(FhirString value) {
    addParameterValue('substance', value.toString());
    return this;
  }

  /// a token search for [substanceCode] in the resource
  /// [Ingredient]
  SearchIngredient substanceCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('substance-code', paramValue);
    return this;
  }

  /// a reference search for [substanceDefinition] in the resource
  /// [Ingredient]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchIngredient substanceDefinition(FhirString value) {
    addParameterValue('substance-definition', value.toString());
    return this;
  }
}
