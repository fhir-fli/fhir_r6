// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AdverseEvent] resource.
class SearchAdverseEvent extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [actuality] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent actuality(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('actuality', paramValue);
    return this;
  }

  /// a token search for [category] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a date search for [cause] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent cause(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('cause', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [effect] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent effect(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('effect', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a reference search for [recorder] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent recorder(FhirString value) {
    addParameterValue('recorder', value.toString());
    return this;
  }

  /// a token search for [resultingeffectCode] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent resultingeffectCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('resultingeffect-code', paramValue);
    return this;
  }

  /// a reference search for [resultingeffectReference] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent resultingeffectReference(FhirString value) {
    addParameterValue('resultingeffect-reference', value.toString());
    return this;
  }

  /// a token search for [seriousness] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent seriousness(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('seriousness', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [AdverseEvent]
  SearchAdverseEvent status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [study] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent study(FhirString value) {
    addParameterValue('study', value.toString());
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a reference search for [substance] in the resource
  /// [AdverseEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAdverseEvent substance(FhirString value) {
    addParameterValue('substance', value.toString());
    return this;
  }
}
