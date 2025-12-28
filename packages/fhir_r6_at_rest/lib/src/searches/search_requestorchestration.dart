// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RequestOrchestration] resource.
class SearchRequestOrchestration extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [RequestOrchestration]
  @override
  SearchRequestOrchestration identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [RequestOrchestration]
  @override
  SearchRequestOrchestration code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['code'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a date search for [authored] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['authored'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['group_identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['instantiates_uri'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['intent'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [RequestOrchestration]
  @override
  SearchRequestOrchestration priority(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['priority'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [RequestOrchestration]
  @override
  SearchRequestOrchestration status(
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
