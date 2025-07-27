// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [SubstanceDefinition] resource.
class SearchSubstanceDefinition extends SearchResource {
  /// a token search for [classification] in the resource
  /// [SubstanceDefinition]
  SearchSubstanceDefinition classification(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}classification'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [SubstanceDefinition]
  SearchSubstanceDefinition code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [domain] in the resource
  /// [SubstanceDefinition]
  SearchSubstanceDefinition domain(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}domain'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [SubstanceDefinition]
  SearchSubstanceDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [name] in the resource
  /// [SubstanceDefinition]
  SearchSubstanceDefinition name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}name'] = value.toString();
    return this;
  }
}
