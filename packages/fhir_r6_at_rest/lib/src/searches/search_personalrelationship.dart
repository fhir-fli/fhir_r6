// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [PersonalRelationship] resource.
class SearchPersonalRelationship extends SearchResource {
  /// a reference search for [patient] in the resource
  /// [PersonalRelationship]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPersonalRelationship patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [relationship] in the resource
  /// [PersonalRelationship]
  SearchPersonalRelationship relationship(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('relationship', paramValue);
    return this;
  }

  /// a reference search for [source] in the resource
  /// [PersonalRelationship]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPersonalRelationship source(FhirString value) {
    addParameterValue('source', value.toString());
    return this;
  }

  /// a reference search for [target] in the resource
  /// [PersonalRelationship]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchPersonalRelationship target(FhirString value) {
    addParameterValue('target', value.toString());
    return this;
  }
}
