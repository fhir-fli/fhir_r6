// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [NamingSystem] resource.
class SearchNamingSystem extends SearchResource {
  /// a token search for [context] in the resource
  /// [NamingSystem]
  SearchNamingSystem context(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context', paramValue);
    return this;
  }

  /// a quantity search for [contextQuantity] in the resource
  /// [NamingSystem]
  SearchNamingSystem contextQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('context-quantity', paramValue);
    return this;
  }

  /// a token search for [contextType] in the resource
  /// [NamingSystem]
  SearchNamingSystem contextType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('context-type', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [NamingSystem]
  SearchNamingSystem date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a string search for [description] in the resource
  /// [NamingSystem]
  SearchNamingSystem description(FhirString value) {
    addParameterValue('description', value.toString());
    return this;
  }

  /// a date search for [effective] in the resource
  /// [NamingSystem]
  SearchNamingSystem effective(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effective', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [NamingSystem]
  SearchNamingSystem identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [jurisdiction] in the resource
  /// [NamingSystem]
  SearchNamingSystem jurisdiction(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('jurisdiction', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [NamingSystem]
  SearchNamingSystem name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a string search for [publisher] in the resource
  /// [NamingSystem]
  SearchNamingSystem publisher(FhirString value) {
    addParameterValue('publisher', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [NamingSystem]
  SearchNamingSystem status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [topic] in the resource
  /// [NamingSystem]
  SearchNamingSystem topic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topic', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [NamingSystem]
  SearchNamingSystem url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }

  /// a token search for [version] in the resource
  /// [NamingSystem]
  SearchNamingSystem version(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('version', paramValue);
    return this;
  }

  /// a string search for [contact] in the resource
  /// [NamingSystem]
  SearchNamingSystem contact(FhirString value) {
    addParameterValue('contact', value.toString());
    return this;
  }

  /// a token search for [idType] in the resource
  /// [NamingSystem]
  SearchNamingSystem idType(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('id-type', paramValue);
    return this;
  }

  /// a token search for [kind] in the resource
  /// [NamingSystem]
  SearchNamingSystem kind(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('kind', paramValue);
    return this;
  }

  /// a date search for [period] in the resource
  /// [NamingSystem]
  SearchNamingSystem period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('period', paramValue);
    return this;
  }

  /// a string search for [responsible] in the resource
  /// [NamingSystem]
  SearchNamingSystem responsible(FhirString value) {
    addParameterValue('responsible', value.toString());
    return this;
  }

  /// a token search for [telecom] in the resource
  /// [NamingSystem]
  SearchNamingSystem telecom(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('telecom', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [NamingSystem]
  SearchNamingSystem type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a string search for [value] in the resource
  /// [NamingSystem]
  SearchNamingSystem value(FhirString value) {
    addParameterValue('value', value.toString());
    return this;
  }
}
