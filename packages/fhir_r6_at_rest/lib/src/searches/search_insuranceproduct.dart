// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [InsuranceProduct] resource.
class SearchInsuranceProduct extends SearchResource {
  /// a reference search for [administeredBy] in the resource
  /// [InsuranceProduct]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsuranceProduct administeredBy(FhirString value) {
    addParameterValue('administered-by', value.toString());
    return this;
  }

  /// a string search for [contactAddress] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddress(FhirString value) {
    addParameterValue('contact-address', value.toString());
    return this;
  }

  /// a string search for [contactAddressCity] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddressCity(FhirString value) {
    addParameterValue('contact-address-city', value.toString());
    return this;
  }

  /// a string search for [contactAddressCountry] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddressCountry(FhirString value) {
    addParameterValue('contact-address-country', value.toString());
    return this;
  }

  /// a string search for [contactAddressPostalcode] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddressPostalcode(FhirString value) {
    addParameterValue('contact-address-postalcode', value.toString());
    return this;
  }

  /// a string search for [contactAddressState] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddressState(FhirString value) {
    addParameterValue('contact-address-state', value.toString());
    return this;
  }

  /// a token search for [contactAddressUse] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct contactAddressUse(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('contact-address-use', paramValue);
    return this;
  }

  /// a reference search for [endpoint] in the resource
  /// [InsuranceProduct]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsuranceProduct endpoint(FhirString value) {
    addParameterValue('endpoint', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a reference search for [ownedBy] in the resource
  /// [InsuranceProduct]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchInsuranceProduct ownedBy(FhirString value) {
    addParameterValue('owned-by', value.toString());
    return this;
  }

  /// a string search for [phonetic] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct phonetic(FhirString value) {
    addParameterValue('phonetic', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [InsuranceProduct]
  SearchInsuranceProduct type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
