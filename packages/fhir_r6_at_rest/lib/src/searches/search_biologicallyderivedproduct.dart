// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [BiologicallyDerivedProduct] resource.
class SearchBiologicallyDerivedProduct extends SearchResource {
  /// a token search for [biologicalSourceEvent] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct biologicalSourceEvent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('biological-source-event', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [productCategory] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct productCategory(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('product-category', paramValue);
    return this;
  }

  /// a token search for [productStatus] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct productStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('product-status', paramValue);
    return this;
  }

  /// a token search for [serialNumber] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct serialNumber(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('serial-number', paramValue);
    return this;
  }
}
