// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_at_rest/fhir_r5_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [AuditEvent] resource.
class SearchAuditEvent extends SearchResource {
  /// a token search for [code] in the resource
  /// [AuditEvent]
  SearchAuditEvent code(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}code'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a date search for [date] in the resource
  /// [AuditEvent]
  SearchAuditEvent date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}date'] = value.toString();
    return this;
  }

  /// a token search for [action] in the resource
  /// [AuditEvent]
  SearchAuditEvent action(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}action'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [agentRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent agentRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}agent_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [category] in the resource
  /// [AuditEvent]
  SearchAuditEvent category(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}category'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [entityRole] in the resource
  /// [AuditEvent]
  SearchAuditEvent entityRole(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}entity_role'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a token search for [outcome] in the resource
  /// [AuditEvent]
  SearchAuditEvent outcome(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}outcome'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }

  /// a uri search for [policy] in the resource
  /// [AuditEvent]
  SearchAuditEvent policy(
    FhirUri value, {
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}policy'] =
        value.toString();
    return this;
  }

  /// a token search for [purpose] in the resource
  /// [AuditEvent]
  SearchAuditEvent purpose(
    FhirString value, {
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    parameters['${modifier != null ? '$modifier' : ''}purpose'] =
        system != null ? '$system|$value' : '$value';
    return this;
  }
}
