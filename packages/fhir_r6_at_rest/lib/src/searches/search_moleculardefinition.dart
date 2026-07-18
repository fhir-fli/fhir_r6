// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [MolecularDefinition] resource.
class SearchMolecularDefinition extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [MolecularDefinition]
  SearchMolecularDefinition identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a token search for [moleculetype] in the resource
  /// [MolecularDefinition]
  SearchMolecularDefinition moleculetype(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('moleculetype', paramValue);
    return this;
  }

  /// a token search for [topology] in the resource
  /// [MolecularDefinition]
  SearchMolecularDefinition topology(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('topology', paramValue);
    return this;
  }

  /// a token search for [type] in the resource
  /// [MolecularDefinition]
  SearchMolecularDefinition type(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('type', paramValue);
    return this;
  }
}
