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
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('identifier', paramValue);
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
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [authored] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration authored(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('authored', paramValue);
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration groupIdentifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('group_identifier', paramValue);
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration instantiatesUri(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('instantiates_uri', paramValue);
    return this;
  }

  /// a token search for [intent] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration intent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('intent', paramValue);
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
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('priority', paramValue);
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
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('status', paramValue);
    return this;
  }
}
