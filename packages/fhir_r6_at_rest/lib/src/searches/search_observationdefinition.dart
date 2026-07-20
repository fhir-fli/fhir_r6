// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ObservationDefinition] resource.
class SearchObservationDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a string search for [title] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition title(FhirString value) {
    addParameterValue('title', value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition experimental(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('experimental', paramValue);
    return this;
  }

  /// a token search for [method] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition method(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('method', paramValue);
    return this;
  }
}
