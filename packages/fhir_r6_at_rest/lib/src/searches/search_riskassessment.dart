// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RiskAssessment] resource.
class SearchRiskAssessment extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [RiskAssessment]
  @override
  SearchRiskAssessment identifier(
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

  /// a date search for [date] in the resource
  /// [RiskAssessment]
  @override
  SearchRiskAssessment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [method] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment method(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('method', paramValue);
    return this;
  }

  /// a numerical search for [probability] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment probability(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    if (modifier != null &&
        !['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for number type');
    }
    final systemStr = system?.toString() ?? '';
    final unitStr = unit?.toString() ?? '';
    final paramValue = modifier != null
        ? '$modifier$value|$systemStr|$unitStr'
        : '$value|$systemStr|$unitStr';
    addParameterValue('probability', paramValue);
    return this;
  }

  /// a token search for [risk] in the resource
  /// [RiskAssessment]
  SearchRiskAssessment risk(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('risk', paramValue);
    return this;
  }
}
