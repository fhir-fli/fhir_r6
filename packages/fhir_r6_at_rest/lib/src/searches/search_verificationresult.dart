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
    parameters['${modifier != null ? '$modifier' : ''}attestation_method'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [primarysourceDate] in the resource
  /// [VerificationResult]
  SearchVerificationResult primarysourceDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}primarysource_date'] =
        value.toString();
    return this;
  }

  /// a token search for [primarysourceType] in the resource
  /// [VerificationResult]
  SearchVerificationResult primarysourceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}primarysource_type'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [status] in the resource
  /// [VerificationResult]
  SearchVerificationResult status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [statusDate] in the resource
  /// [VerificationResult]
  SearchVerificationResult statusDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status_date'] =
        value.toString();
    return this;
  }
}
