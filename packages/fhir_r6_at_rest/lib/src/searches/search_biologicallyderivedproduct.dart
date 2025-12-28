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
    SearchModifier? modifier,
  }) {
    parameters['biological_source_event'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [BiologicallyDerivedProduct]
  @override
  SearchBiologicallyDerivedProduct code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [BiologicallyDerivedProduct]
  @override
  SearchBiologicallyDerivedProduct identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [productCategory] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct productCategory(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['product_category'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [productStatus] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct productStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['product_status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [serialNumber] in the resource
  /// [BiologicallyDerivedProduct]
  SearchBiologicallyDerivedProduct serialNumber(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['serial_number'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
