// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AuditEvent] resource.
class SearchAuditEvent extends SearchResource {
  /// a reference search for [patient] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a date search for [date] in the resource
  /// [AuditEvent]
  SearchAuditEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a token search for [action] in the resource
  /// [AuditEvent]
  SearchAuditEvent action(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('action', paramValue);
    return this;
  }

  /// a reference search for [agent] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent agent(FhirString value) {
    addParameterValue('agent', value.toString());
    return this;
  }

  /// a token search for [agentRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent agentRole(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('agent-role', paramValue);
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [entity] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent entity(FhirString value) {
    addParameterValue('entity', value.toString());
    return this;
  }

  /// a string search for [entityDesc] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityDesc(FhirString value) {
    addParameterValue('entity-desc', value.toString());
    return this;
  }

  /// a token search for [entityRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityRole(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('entity-role', paramValue);
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [AuditEvent]
  SearchAuditEvent outcome(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('outcome', paramValue);
    return this;
  }

  /// a uri search for [policy] in the resource
  /// [AuditEvent]
  SearchAuditEvent policy(FhirUri value) {
    addParameterValue('policy', value.toString());
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [AuditEvent]
  SearchAuditEvent purpose(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('purpose', paramValue);
    return this;
  }

  /// a reference search for [source] in the resource
  /// [AuditEvent]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchAuditEvent source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a token search for [subtype] in the resource
  /// [AuditEvent]
  SearchAuditEvent subtype(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('subtype', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [AuditEvent]
  SearchAuditEvent type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
