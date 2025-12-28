// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ObservationDefinition] resource.
class SearchObservationDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ObservationDefinition]
  @override
  SearchObservationDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [ObservationDefinition]
  @override
  SearchObservationDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [title] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['title'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [ObservationDefinition]
  @override
  SearchObservationDefinition code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['experimental'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [method] in the resource
  /// [ObservationDefinition]
  SearchObservationDefinition method(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['method'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
