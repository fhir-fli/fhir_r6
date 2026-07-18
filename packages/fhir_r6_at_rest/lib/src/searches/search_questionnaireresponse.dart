// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [QuestionnaireResponse] resource.
class SearchQuestionnaireResponse extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [answerConcept] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse answerConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('answer-concept', paramValue);
    return this;
  }

  /// a date search for [answerDate] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse answerDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('answer-date', paramValue);
    return this;
  }

  /// a numerical search for [answerNumber] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse answerNumber(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('answer-number', paramValue);
    return this;
  }

  /// a quantity search for [answerQuantity] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse answerQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = modifier != null
        ? '$modifier$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}'
        : '$value|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('answer-quantity', paramValue);
    return this;
  }

  /// a string search for [answerString] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse answerString(FhirString value) {
    addParameterValue('answer-string', value.toString());
    return this;
  }

  /// a date search for [authored] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a token search for [linkid] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse linkid(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('linkid', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [QuestionnaireResponse]
  SearchQuestionnaireResponse status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }
}
