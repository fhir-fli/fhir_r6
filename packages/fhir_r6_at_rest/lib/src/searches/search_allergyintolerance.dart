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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [AllergyIntolerance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAllergyIntolerance patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [asserter] in the resource
  /// [AllergyIntolerance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAllergyIntolerance asserter(FhirString value) {
    addParameterValue('asserter', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [clinicalStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance clinicalStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('clinical-status', paramValue);
    return this;
  }

  /// a token search for [criticality] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance criticality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('criticality', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a date search for [lastReactionDate] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance lastReactionDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('last-reaction-date', paramValue);
    return this;
  }

  /// a token search for [manifestationCode] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance manifestationCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('manifestation-code', paramValue);
    return this;
  }

  /// a reference search for [manifestationReference] in the resource
  /// [AllergyIntolerance]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAllergyIntolerance manifestationReference(FhirString value) {
    addParameterValue('manifestation-reference', value.toString());
    return this;
  }

  /// a token search for [route] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance route(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('route', paramValue);
    return this;
  }

  /// a token search for [severity] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance severity(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('severity', paramValue);
    return this;
  }

  /// a token search for [verificationStatus] in the resource
  /// [AllergyIntolerance]
  SearchAllergyIntolerance verificationStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('verification-status', paramValue);
    return this;
  }
}
