// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Device] resource.
class SearchDevice extends SearchResource {
  /// a token search for [biologicalSourceEvent] in the resource
  /// [Device]
  SearchDevice biologicalSourceEvent(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('biological-source-event', paramValue);
    return this;
  }

  /// a token search for [code] in the resource
  /// [Device]
  SearchDevice code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a reference search for [definition] in the resource
  /// [Device]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDevice definition(FhirString value) {
    addParameterValue('definition', value.toString());
    return this;
  }

  /// a string search for [deviceName] in the resource
  /// [Device]
  SearchDevice deviceName(FhirString value) {
    addParameterValue('device-name', value.toString());
    return this;
  }

  /// a date search for [expirationDate] in the resource
  /// [Device]
  SearchDevice expirationDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('expiration-date', paramValue);
    return this;
  }

  /// a token search for [identifier] in the resource
  /// [Device]
  SearchDevice identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [location] in the resource
  /// [Device]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDevice location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a string search for [lotNumber] in the resource
  /// [Device]
  SearchDevice lotNumber(FhirString value) {
    addParameterValue('lot-number', value.toString());
    return this;
  }

  /// a date search for [manufactureDate] in the resource
  /// [Device]
  SearchDevice manufactureDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('manufacture-date', paramValue);
    return this;
  }

  /// a string search for [manufacturer] in the resource
  /// [Device]
  SearchDevice manufacturer(FhirString value) {
    addParameterValue('manufacturer', value.toString());
    return this;
  }

  /// a string search for [model] in the resource
  /// [Device]
  SearchDevice model(FhirString value) {
    addParameterValue('model', value.toString());
    return this;
  }

  /// a reference search for [parent] in the resource
  /// [Device]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchDevice parent(FhirString value) {
    addParameterValue('parent', value.toString());
    return this;
  }

  /// a string search for [serialNumber] in the resource
  /// [Device]
  SearchDevice serialNumber(FhirString value) {
    addParameterValue('serial-number', value.toString());
    return this;
  }

  /// a token search for [specification] in the resource
  /// [Device]
  SearchDevice specification(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('specification', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Device]
  SearchDevice status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [Device]
  SearchDevice type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }

  /// a string search for [udiCarrierHrf] in the resource
  /// [Device]
  SearchDevice udiCarrierHrf(FhirString value) {
    addParameterValue('udi-carrier-hrf', value.toString());
    return this;
  }

  /// a string search for [udiDi] in the resource
  /// [Device]
  SearchDevice udiDi(FhirString value) {
    addParameterValue('udi-di', value.toString());
    return this;
  }

  /// a string search for [version] in the resource
  /// [Device]
  SearchDevice version(FhirString value) {
    addParameterValue('version', value.toString());
    return this;
  }
}
