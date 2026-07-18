// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [VerificationResult] resource.
class SearchVerificationResult extends SearchResource {
  /// a token search for [attestationMethod] in the resource
  /// [VerificationResult]
  SearchVerificationResult attestationMethod(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('attestation-method', paramValue);
    return this;
  }

  /// a date search for [primarysourceDate] in the resource
  /// [VerificationResult]
  SearchVerificationResult primarysourceDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('primarysource-date', paramValue);
    return this;
  }

  /// a token search for [primarysourceType] in the resource
  /// [VerificationResult]
  SearchVerificationResult primarysourceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('primarysource-type', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [VerificationResult]
  SearchVerificationResult status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }

  /// a date search for [statusDate] in the resource
  /// [VerificationResult]
  SearchVerificationResult statusDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status-date', paramValue);
    return this;
  }
}
