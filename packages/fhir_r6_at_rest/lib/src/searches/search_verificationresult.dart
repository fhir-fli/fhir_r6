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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('attestation-method', paramValue);
    return this;
  }

  /// a reference search for [attestationOnbehalfof] in the resource
  /// [VerificationResult]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchVerificationResult attestationOnbehalfof(FhirString value) {
    addParameterValue('attestation-onbehalfof', value.toString());
    return this;
  }

  /// a reference search for [attestationWho] in the resource
  /// [VerificationResult]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchVerificationResult attestationWho(FhirString value) {
    addParameterValue('attestation-who', value.toString());
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
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('primarysource-type', paramValue);
    return this;
  }

  /// a reference search for [primarysourceWho] in the resource
  /// [VerificationResult]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchVerificationResult primarysourceWho(FhirString value) {
    addParameterValue('primarysource-who', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [VerificationResult]
  SearchVerificationResult status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
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

  /// a reference search for [target] in the resource
  /// [VerificationResult]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchVerificationResult target(FhirString value) {
    addParameterValue('target', value.toString());
    return this;
  }

  /// a reference search for [validatorOrganization] in the resource
  /// [VerificationResult]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchVerificationResult validatorOrganization(FhirString value) {
    addParameterValue('validator-organization', value.toString());
    return this;
  }
}
