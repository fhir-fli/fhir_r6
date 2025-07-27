// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [ClaimResponse] resource.
class SearchClaimResponse extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [ClaimResponse]
  SearchClaimResponse identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}identifier'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [created] in the resource
  /// [ClaimResponse]
  SearchClaimResponse created(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}created'] =
        value.toString();
    return this;
  }

  /// a string search for [disposition] in the resource
  /// [ClaimResponse]
  SearchClaimResponse disposition(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['${modifier != null ? '$modifier' : ''}disposition'] =
        value.toString();
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [ClaimResponse]
  SearchClaimResponse outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [paymentDate] in the resource
  /// [ClaimResponse]
  SearchClaimResponse paymentDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}payment_date'] =
        value.toString();
    return this;
  }

  /// a token search for [status] in the resource
  /// [ClaimResponse]
  SearchClaimResponse status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}status'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [use] in the resource
  /// [ClaimResponse]
  SearchClaimResponse use(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}use'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
