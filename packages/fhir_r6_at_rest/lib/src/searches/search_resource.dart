// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Resource] resource.
class SearchResource extends RestfulParameters {
  /// a token search for [id] in the resource
  /// [Resource]
  SearchResource id(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('_id', paramValue);
    return this;
  }

  /// a reference search for [in_] in the resource
  /// [Resource]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchResource in_(FhirString value) {
    addParameterValue('_in', value.toString());
    return this;
  }

  /// a token search for [language] in the resource
  /// [Resource]
  SearchResource language(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('_language', paramValue);
    return this;
  }

  /// a date search for [lastUpdated] in the resource
  /// [Resource]
  SearchResource lastUpdated(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('_lastUpdated', paramValue);
    return this;
  }

  /// a reference search for [profile] in the resource
  /// [Resource]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchResource profile(FhirString value) {
    addParameterValue('_profile', value.toString());
    return this;
  }

  /// a token search for [security] in the resource
  /// [Resource]
  SearchResource security(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('_security', paramValue);
    return this;
  }

  /// a uri search for [resourceSource] in the resource
  /// [Resource]
  SearchResource resourceSource(FhirUri value) {
    addParameterValue('_source', value.toString());
    return this;
  }

  /// a token search for [tag] in the resource
  /// [Resource]
  SearchResource tag(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('_tag', paramValue);
    return this;
  }
}
