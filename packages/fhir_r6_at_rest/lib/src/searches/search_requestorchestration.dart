// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [RequestOrchestration] resource.
class SearchRequestOrchestration extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [actionResource] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration actionResource(FhirString value) {
    addParameterValue('action-resource', value.toString());
    return this;
  }

  /// a reference search for [author] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration author(FhirString value) {
    addParameterValue('author', value.toString());
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

  /// a reference search for [basedOn] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [groupIdentifier] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration groupIdentifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('group-identifier', paramValue);
    return this;
  }

  /// a reference search for [instantiatesCanonical] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration instantiatesCanonical(FhirString value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a uri search for [instantiatesUri] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration instantiatesUri(FhirUri value) {
    addParameterValue('instantiates-uri', value.toString());
    return this;
  }

  /// a token search for [intent] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration intent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('intent', paramValue);
    return this;
  }

  /// a reference search for [participant] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration participant(FhirString value) {
    addParameterValue('participant', value.toString());
    return this;
  }

  /// a token search for [priority] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration priority(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('priority', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [RequestOrchestration]
  SearchRequestOrchestration status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [RequestOrchestration]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchRequestOrchestration subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }
}
