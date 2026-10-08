import 'package:fhir_r6/fhir_r6.dart' as r6;
import 'package:fhir_r6_cql/fhir_r6_cql.dart';
import 'package:test/test.dart';

/// The boundary contract between FHIR data and the model-free cql engine
/// (ported from the fhir_r4_cql fix measured 2026-10-07 against the June
/// 2026 suite): `resolvePath` hands a FHIR primitive or a composite the
/// model info maps (Quantity, Coding, CodeableConcept, Period, Range,
/// Ratio) to the engine as its System value; a value that crossed the
/// boundary still `is` its FHIR type; a map with no resourceType is a CQL
/// Tuple (ELM 04, Property: "the source may be a Tuple") whose element is
/// the key.
void main() {
  const mr = R6ModelResolver();
  final patient = r6.Patient(
    active: r6.FhirBoolean(true),
    birthDate: r6.FhirDate.fromString('2000-01-01'),
    maritalStatus: r6.CodeableConcept(
      coding: [
        r6.Coding(
          system: r6.FhirUri(
            'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
          ),
          code: r6.FhirCode('M'),
        ),
      ],
    ),
  );

  test('resolvePath answers System values for primitives', () async {
    expect(await mr.resolvePath(patient, 'active'), CqlBoolean(true));
    expect(await mr.resolvePath(patient, 'birthDate'), isA<CqlDate>());
  });

  test('resolvePath answers a System Concept for a CodeableConcept', () async {
    final concept = await mr.resolvePath(patient, 'maritalStatus');
    expect(concept, isA<CqlConcept>());
    expect((concept as CqlConcept).codes.single.code, 'M');
  });

  test('a converted value still is its FHIR type', () async {
    expect(mr.is_(await mr.resolvePath(patient, 'active'), 'boolean'), isTrue);
    expect(mr.is_(await mr.resolvePath(patient, 'birthDate'), 'date'), isTrue);
    expect(
      mr.is_(await mr.resolvePath(patient, 'maritalStatus'), 'CodeableConcept'),
      isTrue,
    );
    expect(mr.is_(await mr.resolvePath(patient, 'active'), 'date'), isFalse);
  });

  test('a map without resourceType is a Tuple: the element is the key',
      () async {
    final tuple = <String, dynamic>{'x': CqlInteger(3)};
    expect(await mr.resolvePath(tuple, 'x'), CqlInteger(3));
    expect(await mr.resolvePath(tuple, 'y'), isNull);
  });
}
