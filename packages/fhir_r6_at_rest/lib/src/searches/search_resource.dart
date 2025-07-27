// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Resource] resource.
class SearchResource extends RestfulParameters {
  /// a token search for [id] in the resource
  /// [Resource]
  SearchResource id(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_id'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [language] in the resource
  /// [Resource]
  SearchResource language(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_language'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [lastUpdated] in the resource
  /// [Resource]
  SearchResource lastUpdated(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_lastUpdated'] =
        value.toString();
    return this;
  }

  /// a token search for [security] in the resource
  /// [Resource]
  SearchResource security(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_security'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [resourceSource] in the resource
  /// [Resource]
  SearchResource resourceSource(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_source'] =
        value.toString();
    return this;
  }

  /// a token search for [tag] in the resource
  /// [Resource]
  SearchResource tag(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}_tag'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [text] in the resource
  /// [Resource]
  SearchResource text(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}_text'] =
        value.toString();
    return this;
  }
}
