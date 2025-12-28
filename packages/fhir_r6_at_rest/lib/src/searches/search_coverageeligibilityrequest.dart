// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [CoverageEligibilityRequest] resource.
class SearchCoverageEligibilityRequest extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [CoverageEligibilityRequest]
  @override
  SearchCoverageEligibilityRequest identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [created] in the resource
  /// [CoverageEligibilityRequest]
  SearchCoverageEligibilityRequest created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['created'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [CoverageEligibilityRequest]
  @override
  SearchCoverageEligibilityRequest status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
