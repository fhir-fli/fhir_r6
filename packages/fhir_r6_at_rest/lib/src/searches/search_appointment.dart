// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Appointment] resource.
class SearchAppointment extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Appointment]
  @override
  SearchAppointment identifier(
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

  /// a date search for [date] in the resource
  /// [Appointment]
  @override
  SearchAppointment date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [appointmentType] in the resource
  /// [Appointment]
  SearchAppointment appointmentType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('appointment_type', paramValue);
    return this;
  }

  /// a token search for [hasRecurrenceTemplate] in the resource
  /// [Appointment]
  SearchAppointment hasRecurrenceTemplate(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('has_recurrence_template', paramValue);
    return this;
  }

  /// a token search for [isRecurring] in the resource
  /// [Appointment]
  SearchAppointment isRecurring(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('is_recurring', paramValue);
    return this;
  }

  /// a token search for [occurrenceChanged] in the resource
  /// [Appointment]
  SearchAppointment occurrenceChanged(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('occurrence_changed', paramValue);
    return this;
  }

  /// a token search for [partStatus] in the resource
  /// [Appointment]
  SearchAppointment partStatus(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('part_status', paramValue);
    return this;
  }

  /// a token search for [reasonCode] in the resource
  /// [Appointment]
  SearchAppointment reasonCode(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('reason_code', paramValue);
    return this;
  }

  /// a date search for [requestedPeriod] in the resource
  /// [Appointment]
  SearchAppointment requestedPeriod(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('requested_period', paramValue);
    return this;
  }

  /// a token search for [serviceCategory] in the resource
  /// [Appointment]
  SearchAppointment serviceCategory(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('service_category', paramValue);
    return this;
  }

  /// a token search for [serviceType] in the resource
  /// [Appointment]
  SearchAppointment serviceType(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('service_type', paramValue);
    return this;
  }

  /// a token search for [specialty] in the resource
  /// [Appointment]
  SearchAppointment specialty(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final paramValue = system != null
        ? (modifier != null ? '$modifier$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('specialty', paramValue);
    return this;
  }

  /// a token search for [status] in the resource
  /// [Appointment]
  @override
  SearchAppointment status(
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
