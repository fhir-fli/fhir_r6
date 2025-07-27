// ignore_for_file: unused_local_variable

import 'package:fhir_r6/fhir_r6.dart';

void main() {
  final patient = Patient(
    id: FhirString('123'),
    name: [
      HumanName(
        family: 'Doe'.toFhirString,
        given: ['John'.toFhirString],
      ),
    ],
    birthDate: '1990-01-01'.toFhirDate,
  );

// Serialize to JSON Map
  final jsonMap = patient.toJson();

// Serialize directly to JSON String (convenience method)
  final jsonString = patient.toJsonString();

// Deserialize from JSON
  final parsedPatient = Patient.fromJson(jsonMap);

// Deserialize directly from JSON String (convenience method)
  final parsedFromString = Patient.fromJsonString(jsonString);

// YAML support
  final yamlString = patient.toYaml();

// Parse any FHIR resource from JSON
  final unknownResource = Resource.fromJson(jsonMap);

// Type checking
  if (unknownResource is Patient) {
    // Work with Patient fields
  }

// Creating primitive types
  final myString = FhirString('Hello');
  final myBoolean = FhirBoolean(true);
  final myDateTime = FhirDateTime.fromString('2023-06-15T13:30:45Z');

// Using extension methods
  final myString2 = 'Hello'.toFhirString;
  final myBoolean2 = true.toFhirBoolean;

// Accessing values
  final stringValue = myString.valueString;
  final boolValue = myBoolean.valueBoolean;

// Example with a polymorphic field
  final allergyIntolerance = AllergyIntolerance(
    id: FhirString('456'),
    patient: Reference(reference: FhirString('Patient/123')),
    onsetX: FhirDateTime.fromString('2023-01-01T00:00:00Z'),
    reaction: [
      AllergyIntoleranceReaction(
        manifestation: [
          CodeableReference(
            concept: CodeableConcept(
              coding: [
                Coding(
                  system: FhirUri('http://snomed.info/sct'),
                  code: FhirCode('123456'),
                  display: FhirString('Peanut Allergy'),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );

// Access polymorphic fields safely
  if (allergyIntolerance.onsetAge != null) {
    // Work with Age
  } else if (allergyIntolerance.onsetDateTime != null) {
    // Work with DateTime
  } else if (allergyIntolerance.onsetPeriod != null) {
    // Work with Period
  } else if (allergyIntolerance.onsetRange != null) {
    // Work with Range
  } else if (allergyIntolerance.onsetString != null) {
    // Work with String
  }

// Using predefined values
  const status = AccountStatus.active;

// Accessing metadata
  final displayText = status.display?.valueString; // 'in-progress'
  final system = status
      .system?.valueString; // 'http://hl7.org/fhir/ValueSet/account-status'

// Modify with copyWith
  final modifiedPatient = patient.copyWith(
    active: FhirBoolean(true),
  );
}
