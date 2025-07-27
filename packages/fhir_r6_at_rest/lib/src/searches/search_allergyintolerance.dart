// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AllergyIntolerance] resource.
class SearchAllergyIntolerance extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [type] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [code] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [category] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [clinicalStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance clinicalStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}clinical_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [criticality] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance criticality(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}criticality'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [lastDate] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance lastDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}last_date'] =
        value.toString();
    return this;
  }

  /// a token search for [manifestationCode] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance manifestationCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}manifestation_code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [route] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance route(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}route'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [severity] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance severity(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}severity'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [verificationStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance verificationStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}verification_status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
