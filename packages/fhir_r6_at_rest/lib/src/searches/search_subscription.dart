// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Subscription] resource.
class SearchSubscription extends SearchResource {
  /// a token search for [contact] in the resource
  /// [Subscription]
  SearchSubscription contact(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('contact', paramValue);
    return this;
  }

  /// a token search for [contentLevel] in the resource
  /// [Subscription]
  SearchSubscription contentLevel(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('content-level', paramValue);
    return this;
  }

  /// a token search for [filterEvent] in the resource
  /// [Subscription]
  SearchSubscription filterEvent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('filter-event', paramValue);
    return this;
  }

  /// a string search for [filterValue] in the resource
  /// [Subscription]
  SearchSubscription filterValue(FhirString value) {
    addParameterValue('filter-value', value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Subscription]
  SearchSubscription identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a string search for [name] in the resource
  /// [Subscription]
  SearchSubscription name(FhirString value) {
    addParameterValue('name', value.toString());
    return this;
  }

  /// a token search for [payload] in the resource
  /// [Subscription]
  SearchSubscription payload(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('payload', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Subscription]
  SearchSubscription status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a uri search for [topic] in the resource
  /// [Subscription]
  SearchSubscription topic(FhirUri value) {
    addParameterValue('topic', value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Subscription]
  SearchSubscription type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Subscription]
  SearchSubscription url(FhirUri value) {
    addParameterValue('url', value.toString());
    return this;
  }
}
