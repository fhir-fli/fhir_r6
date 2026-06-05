import 'package:fhir_r6_path/fhir_r6_path.dart';
import 'package:test/test.dart';

/// Regression guard for FHIRPath Math empty-propagation conformance.
/// See fhir_r4_path/test/test_math_empty_propagation.dart for the rationale.
void main() {
  group('Math empty-input propagation -> empty (FHIRPath spec)', () {
    for (final expr in [
      '{}.abs()',
      '{}.ceiling()',
      '{}.exp()',
      '{}.floor()',
      '{}.ln()',
      '{}.log(10)',
      '{}.power(2)',
      '{}.round()',
      '{}.sqrt()',
      '{}.truncate()',
    ]) {
      test('$expr is empty', () async {
        expect(
          await walkFhirPath(context: null, pathExpression: expr),
          isEmpty,
        );
      });
    }
  });

  group('Math empty-argument propagation -> empty', () {
    for (final expr in ['(1).power({})', '(1).log({})']) {
      test('$expr is empty', () async {
        expect(
          await walkFhirPath(context: null, pathExpression: expr),
          isEmpty,
        );
      });
    }
  });

  group('Math >1 input/argument still signals an error', () {
    test('(1 | 2).sqrt() throws', () {
      expect(
        walkFhirPath(context: null, pathExpression: '(1 | 2).sqrt()'),
        throwsA(isA<PathEngineException>()),
      );
    });
    test('(2).power(1 | 2) throws', () {
      expect(
        walkFhirPath(context: null, pathExpression: '(2).power(1 | 2)'),
        throwsA(isA<PathEngineException>()),
      );
    });
  });
}
