// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [SpecimenDefinition] resource.
class SearchSpecimenDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [SpecimenDefinition]
  @override
  SearchSpecimenDefinition identifier(
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
  /// [SpecimenDefinition]
  @override
  SearchSpecimenDefinition status(
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
  /// [SpecimenDefinition]
  SearchSpecimenDefinition title(
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
  /// [SpecimenDefinition]
  SearchSpecimenDefinition url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [container] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition container(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['container'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [experimental] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition experimental(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['experimental'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [isDerived] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition isDerived(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['is_derived'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [typeTested] in the resource
  /// [SpecimenDefinition]
  SearchSpecimenDefinition typeTested(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type_tested'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
