import 'package:fhir_r6/fhir_r6.dart' as r6;
import 'package:fhir_r6_cql/fhir_r6_cql.dart';
import 'package:test/test.dart';

/// Smoke tests for the FHIR R6 binding: prove the [R6ModelResolver] maps R6
/// FHIR values to CQL System types and navigates R6 data. The CQL engine
/// itself is exercised exhaustively by the `cql` and `fhir_r4_cql` suites;
/// here we only verify the R6 boundary wiring.
void main() {
  const mr = R6ModelResolver();

  group('R6ModelResolver.toCqlSystemType', () {
    test('FHIR primitives → CQL System primitives', () {
      expect(mr.toCqlSystemType(r6.FhirBoolean(true)), isA<CqlBoolean>());
      expect(mr.toCqlSystemType(r6.FhirInteger(7)), isA<CqlInteger>());
      expect(mr.toCqlSystemType(r6.FhirString('hi')), isA<CqlString>());
      expect(mr.toCqlSystemType(r6.FhirDecimal(1.5)), isA<CqlDecimal>());
    });

    test('FHIR Coding → CQL Code', () {
      final code = mr.toCqlSystemType(
        r6.Coding(system: r6.FhirUri('s'), code: r6.FhirCode('c')),
      );
      expect(code, isA<CqlCode>());
      expect((code as CqlCode).code, 'c');
      expect(code.system, 's');
    });

    test('FHIR CodeableConcept → CQL Concept', () {
      final concept = mr.toCqlSystemType(
        r6.CodeableConcept(
          coding: [r6.Coding(system: r6.FhirUri('s'), code: r6.FhirCode('c'))],
        ),
      );
      expect(concept, isA<CqlConcept>());
    });
  });

  group('R6ModelResolver.is_', () {
    test('recognizes FHIR + System types', () {
      expect(mr.is_(r6.FhirBoolean(true), 'boolean'), isTrue);
      expect(mr.is_(const r6.Coding(), 'Coding'), isTrue);
      expect(mr.is_(CqlInteger(1), 'Integer'), isTrue);
      expect(mr.is_(r6.FhirBoolean(true), 'Coding'), isFalse);
    });
  });

  group('R6ModelResolver.resolvePath', () {
    test('navigates a raw FHIR R6 resource map', () async {
      final patient = <String, dynamic>{
        'resourceType': 'Patient',
        'id': 'example',
        'gender': 'male',
      };
      final gender = await mr.resolvePath(patient, 'gender');
      // Resolves to the FHIR code value; ToString-style conversion is the
      // engine's job via the translator-inserted FHIRHelpers.
      expect(gender, isNotNull);
    });
  });

  test('R6TerminologyProvider instantiates', () {
    expect(R6TerminologyProvider(), isA<TerminologyProvider>());
  });
}
