// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Consent] resource.
class SearchConsent extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Consent]
  SearchConsent identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [Consent]
  SearchConsent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [action] in the resource
  /// [Consent]
  SearchConsent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the resource
  /// [Consent]
  SearchConsent category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [period] in the resource
  /// [Consent]
  SearchConsent period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}period'] =
        value.toString();
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [Consent]
  SearchConsent purpose(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}purpose'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [Consent]
  SearchConsent securityLabel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}security_label'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [Consent]
  SearchConsent status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [verified] in the resource
  /// [Consent]
  SearchConsent verified(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}verified'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [verifiedDate] in the resource
  /// [Consent]
  SearchConsent verifiedDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}verified_date'] =
        value.toString();
    return this;
  }
}
