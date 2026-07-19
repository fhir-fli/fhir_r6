// This file is auto-generated. Do not edit directly.

// ignore_for_file: avoid_returning_this

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_at_rest/fhir_r6_at_rest.dart';

/// A class to build query parameters for RESTful requests for
/// the [Observation] resource.
class SearchObservation extends SearchResource {
  /// a token search for [identifier] in the resource
  /// [Observation]
  SearchObservation identifier(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('identifier', paramValue);
    return this;
  }

  /// a reference search for [patient] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation patient(FhirString value) {
    addParameterValue('patient', value.toString());
    return this;
  }

  /// a token search for [code] in the resource
  /// [Observation]
  SearchObservation code(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('code', paramValue);
    return this;
  }

  /// a date search for [date] in the resource
  /// [Observation]
  SearchObservation date(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('date', paramValue);
    return this;
  }

  /// a reference search for [encounter] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation encounter(FhirString value) {
    addParameterValue('encounter', value.toString());
    return this;
  }

  /// a reference search for [basedOn] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation basedOn(FhirString value) {
    addParameterValue('based-on', value.toString());
    return this;
  }

  /// a token search for [category] in the resource
  /// [Observation]
  SearchObservation category(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('category', paramValue);
    return this;
  }

  /// a token search for [comboCode] in the resource
  /// [Observation]
  SearchObservation comboCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('combo-code', paramValue);
    return this;
  }

  /// a token search for [comboDataAbsentReason] in the resource
  /// [Observation]
  SearchObservation comboDataAbsentReason(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('combo-data-absent-reason', paramValue);
    return this;
  }

  /// a token search for [comboInterpretation] in the resource
  /// [Observation]
  SearchObservation comboInterpretation(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('combo-interpretation', paramValue);
    return this;
  }

  /// a token search for [comboValueConcept] in the resource
  /// [Observation]
  SearchObservation comboValueConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('combo-value-concept', paramValue);
    return this;
  }

  /// a quantity search for [comboValueQuantity] in the resource
  /// [Observation]
  SearchObservation comboValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('combo-value-quantity', paramValue);
    return this;
  }

  /// a token search for [componentCode] in the resource
  /// [Observation]
  SearchObservation componentCode(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('component-code', paramValue);
    return this;
  }

  /// a token search for [componentDataAbsentReason] in the resource
  /// [Observation]
  SearchObservation componentDataAbsentReason(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('component-data-absent-reason', paramValue);
    return this;
  }

  /// a token search for [componentInterpretation] in the resource
  /// [Observation]
  SearchObservation componentInterpretation(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('component-interpretation', paramValue);
    return this;
  }

  /// a reference search for [componentValueCanonical] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation componentValueCanonical(FhirString value) {
    addParameterValue('component-value-canonical', value.toString());
    return this;
  }

  /// a token search for [componentValueConcept] in the resource
  /// [Observation]
  SearchObservation componentValueConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('component-value-concept', paramValue);
    return this;
  }

  /// a quantity search for [componentValueQuantity] in the resource
  /// [Observation]
  SearchObservation componentValueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('component-value-quantity', paramValue);
    return this;
  }

  /// a reference search for [componentValueReference] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation componentValueReference(FhirString value) {
    addParameterValue('component-value-reference', value.toString());
    return this;
  }

  /// a token search for [dataAbsentReason] in the resource
  /// [Observation]
  SearchObservation dataAbsentReason(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('data-absent-reason', paramValue);
    return this;
  }

  /// a reference search for [derivedFrom] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation derivedFrom(FhirString value) {
    addParameterValue('derived-from', value.toString());
    return this;
  }

  /// a reference search for [device] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation device(FhirString value) {
    addParameterValue('device', value.toString());
    return this;
  }

  /// a reference search for [focus] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation focus(FhirString value) {
    addParameterValue('focus', value.toString());
    return this;
  }

  /// a reference search for [hasMember] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation hasMember(FhirString value) {
    addParameterValue('has-member', value.toString());
    return this;
  }

  /// a uri search for [instantiatesCanonical] in the resource
  /// [Observation]
  SearchObservation instantiatesCanonical(FhirUri value) {
    addParameterValue('instantiates-canonical', value.toString());
    return this;
  }

  /// a reference search for [instantiatesReference] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation instantiatesReference(FhirString value) {
    addParameterValue('instantiates-reference', value.toString());
    return this;
  }

  /// a token search for [interpretation] in the resource
  /// [Observation]
  SearchObservation interpretation(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('interpretation', paramValue);
    return this;
  }

  /// a token search for [method] in the resource
  /// [Observation]
  SearchObservation method(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('method', paramValue);
    return this;
  }

  /// a reference search for [partOf] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation partOf(FhirString value) {
    addParameterValue('part-of', value.toString());
    return this;
  }

  /// a reference search for [performer] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation performer(FhirString value) {
    addParameterValue('performer', value.toString());
    return this;
  }

  /// a reference search for [specimen] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation specimen(FhirString value) {
    addParameterValue('specimen', value.toString());
    return this;
  }

  /// a token search for [status] in the resource
  /// [Observation]
  SearchObservation status(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('status', paramValue);
    return this;
  }

  /// a reference search for [subject] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation subject(FhirString value) {
    addParameterValue('subject', value.toString());
    return this;
  }

  /// a uri search for [valueCanonical] in the resource
  /// [Observation]
  SearchObservation valueCanonical(FhirUri value) {
    addParameterValue('value-canonical', value.toString());
    return this;
  }

  /// a token search for [valueConcept] in the resource
  /// [Observation]
  SearchObservation valueConcept(
    FhirString value, {
    FhirUri? system,
  }) {
    final paramValue = system != null ? '$system|$value' : value.toString();
    addParameterValue('value-concept', paramValue);
    return this;
  }

  /// a date search for [valueDate] in the resource
  /// [Observation]
  SearchObservation valueDate(
    FhirDateTime value, {
    SearchModifier? modifier,
  }) {
    final paramValue =
        (modifier != null ? '$modifier$value' : value.toString());
    addParameterValue('value-date', paramValue);
    return this;
  }

  /// a quantity search for [valueQuantity] in the resource
  /// [Observation]
  SearchObservation valueQuantity(
    FhirDecimal value, {
    FhirString? unit,
    FhirUri? system,
    SearchModifier? modifier,
  }) {
    final numberPart = modifier != null ? '$modifier$value' : value.toString();
    final paramValue = (system == null && unit == null)
        ? numberPart
        : '$numberPart|${system?.toString() ?? ''}|'
            '${unit?.toString() ?? ''}';
    addParameterValue('value-quantity', paramValue);
    return this;
  }

  /// a reference search for [valueReference] in the resource
  /// [Observation]
  /// (accepts an id, a `Type/id` relative reference, or a URL)
  SearchObservation valueReference(FhirString value) {
    addParameterValue('value-reference', value.toString());
    return this;
  }

  /// a string search for [valueString] in the resource
  /// [Observation]
  SearchObservation valueString(FhirString value) {
    addParameterValue('value-string', value.toString());
    return this;
  }
}
