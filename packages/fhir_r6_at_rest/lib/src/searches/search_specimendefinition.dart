// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [SpecimenDefinition] resource.
class SearchSpecimenDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a string search for [title] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition title(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}title'] =
        value.toString();
    return this;
  }

  /// a uri search for [url] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}url'] = value.toString();
    return this;
  }

  /// a token search for [container] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition container(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}container'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}experimental'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [isDerived] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition isDerived(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}is_derived'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [typeTested] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition typeTested(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type_tested'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
