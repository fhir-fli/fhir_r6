// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Communication] resource.
class SearchCommunication extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Communication]
  SearchCommunication identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [Communication]
  SearchCommunication category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [medium] in the resource
  /// [Communication]
  SearchCommunication medium(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('medium', paramValue);
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Communication]
  SearchCommunication reasonCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('reason-code', paramValue);
    return this;
  }

  /// a date search for [received] in the resource
  /// [Communication]
  SearchCommunication received(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('received', paramValue);
    return this;
  }

  /// a date search for [sent] in the resource
  /// [Communication]
  SearchCommunication sent(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('sent', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Communication]
  SearchCommunication status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [topic] in the resource
  /// [Communication]
  SearchCommunication topic(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topic', paramValue);
    return this;
  }
}
