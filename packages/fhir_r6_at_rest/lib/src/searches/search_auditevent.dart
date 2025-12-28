// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AuditEvent] resource.
class SearchAuditEvent extends SearchResource {
  /// a date search for [date] in the resource
  /// [AuditEvent]
  @override
  SearchAuditEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['date'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [action] in the resource
  /// [AuditEvent]
  SearchAuditEvent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['action'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [agentRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent agentRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['agent_role'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a string search for [entityDesc] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityDesc(
    FhirString value, {
    SearchModifier? modifier,
  }) {
    if (modifier != null && !['eq', 'ne'].contains(modifier.toString())) {
      throw ArgumentError('Modifier $modifier not allowed for string type');
    }
    parameters['entity_desc'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [entityRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['entity_role'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [AuditEvent]
  SearchAuditEvent outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['outcome'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a uri search for [policy] in the resource
  /// [AuditEvent]
  SearchAuditEvent policy(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['policy'] =
        (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [AuditEvent]
  SearchAuditEvent purpose(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['purpose'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [subtype] in the resource
  /// [AuditEvent]
  SearchAuditEvent subtype(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['subtype'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }

  /// a token search for [type] in the resource
  /// [AuditEvent]
  SearchAuditEvent type(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['type'] = system != null
        ? (modifier != null ? '$modifier:$system|$value' : '$system|$value')
        : (modifier != null ? '$modifier:$value' : value.toString());
    return this;
  }
}
