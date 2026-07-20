// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AppointmentResponse] resource.
class SearchAppointmentResponse extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [AppointmentResponse]
  SearchAppointmentResponse identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a reference search for [actor] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse actor(FhirString value) {
    addParameterValue('actor', value.toString());
    return this;
  }

  /// a reference search for [appointment] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse appointment(FhirString value) {
    addParameterValue('appointment', value.toString());
    return this;
  }

  /// a reference search for [group] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse group(FhirString value) {
    addParameterValue('group', value.toString());
    return this;
  }

  /// a reference search for [location] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse location(FhirString value) {
    addParameterValue('location', value.toString());
    return this;
  }

  /// a token search for [partStatus] in the resource
  /// [AppointmentResponse]
  SearchAppointmentResponse partStatus(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('part-status', paramValue);
    return this;
  }

  /// a reference search for [practitioner] in the resource
  /// [AppointmentResponse]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAppointmentResponse practitioner(FhirString value) {
    addParameterValue('practitioner', value.toString());
    return this;
  }
}
