// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [InsurancePlan] resource.
class SearchInsurancePlan extends SearchResource {
  /// a reference search for [coverageArea] in the resource
  /// [InsurancePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsurancePlan coverageArea(FhirString value) {
    addParameterValue('coverage-area', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [network] in the resource
  /// [InsurancePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsurancePlan network(FhirString value) {
    addParameterValue('network', value.toString());
    return this;
  }

  /// a reference search for [product] in the resource
  /// [InsurancePlan]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsurancePlan product(FhirString value) {
    addParameterValue('product', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [InsurancePlan]
  SearchInsurancePlan type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
