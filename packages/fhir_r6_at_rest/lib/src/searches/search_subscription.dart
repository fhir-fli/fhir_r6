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
    SearchModifier? modifier,
  }) {
    parameters['contact'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [contentLevel] in the resource
  /// [Subscription]
  SearchSubscription contentLevel(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['content_level'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [filterEvent] in the resource
  /// [Subscription]
  SearchSubscription filterEvent(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['filter_event'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [filterValue] in the resource
  /// [Subscription]
  SearchSubscription filterValue(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['filter_value'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Subscription]
  @override
  SearchSubscription identifier(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['identifier'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [name] in the resource
  /// [Subscription]
  @override
  SearchSubscription name(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['name'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [payload] in the resource
  /// [Subscription]
  SearchSubscription payload(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['payload'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Subscription]
  @override
  SearchSubscription status(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['status'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [topic] in the resource
  /// [Subscription]
  SearchSubscription topic(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['topic'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [Subscription]
  SearchSubscription type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [url] in the resource
  /// [Subscription]
  SearchSubscription url(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['url'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
