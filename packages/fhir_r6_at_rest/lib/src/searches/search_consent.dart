// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Consent] resource.
class SearchConsent extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Consent]
  @override
  SearchConsent identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [Consent]
  @override
  SearchConsent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [action] in the resource
  /// [Consent]
  SearchConsent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['action'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Consent]
  SearchConsent category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['category'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [period] in the resource
  /// [Consent]
  SearchConsent period(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['period'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [Consent]
  SearchConsent purpose(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['purpose'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [securityLabel] in the resource
  /// [Consent]
  SearchConsent securityLabel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['security_label'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Consent]
  @override
  SearchConsent status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [verified] in the resource
  /// [Consent]
  SearchConsent verified(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['verified'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [verifiedDate] in the resource
  /// [Consent]
  SearchConsent verifiedDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['verified_date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
