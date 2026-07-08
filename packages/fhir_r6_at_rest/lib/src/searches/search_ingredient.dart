// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Ingredient] resource.
class SearchIngredient extends SearchResource {
  /// a token search for [function] in the resource
  /// [Ingredient]
  SearchIngredient function(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('function', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Ingredient]
  @override
  SearchIngredient identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [role] in the resource
  /// [Ingredient]
  SearchIngredient role(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('role', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Ingredient]
  @override
  SearchIngredient status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_concentration_denominator', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_concentration_numerator', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_concentration_quantity', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_presentation_denominator', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_presentation_numerator', paramValue);
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
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for quantity type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('strength_presentation_quantity', paramValue);
    return this;
  }

  /// a token search for [substanceCode] in the resource
  /// [Ingredient]
  SearchIngredient substanceCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('substance_code', paramValue);
    return this;
  }
}
