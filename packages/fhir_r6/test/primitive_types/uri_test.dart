import 'package:fhir_r6/fhir_r6.dart';
import 'package:test/test.dart';

void uriTest() {
  group('FhirUri Tests', () {
    test('Valid Canonical URI', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.valueUri, equals(Uri.parse(validCanonicalString)));
      expect(canonical.toJson(), equals({'value': validCanonicalString}));
      expect(canonical.toYaml(), equals('value: "$validCanonicalString"'));
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('Valid Relative Canonical URI', () {
      const relativeCanonicalString = 'Patient/123';
      final canonical = FhirUri(relativeCanonicalString);
      expect(canonical.valueUri, equals(Uri.parse(relativeCanonicalString)));
      expect(canonical.toJson(), equals({'value': relativeCanonicalString}));
      expect(canonical.toYaml(), equals('value: $relativeCanonicalString'));
      expect(canonical.toString(), equals(relativeCanonicalString));
    });

    test('TryParse - Valid Canonical String', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri.tryParse(validCanonicalString);
      expect(canonical, isNotNull);
      expect(canonical!.valueUri, equals(Uri.parse(validCanonicalString)));
    });

    test('TryParse - Non-String Input', () {
      final canonical = FhirUri.tryParse(12345);
      expect(canonical, isNull);
    });

    test('FromJson - Valid Canonical String', () {
      final canonical =
          FhirUri.fromJson({'value': 'http://example.com/Patient/123'});
      expect(
        canonical.valueUri,
        equals(Uri.parse('http://example.com/Patient/123')),
      );
    });

    test('FromJson - Both cannot be null', () {
      expect(
        () => FhirUri.fromJson({'value': null}),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('FromYaml - Valid Yaml String', () {
      const validYamlString = 'http://example.com/Patient/123';
      final canonical =
          FhirUri.fromYaml('value: "http://example.com/Patient/123"');
      expect(canonical.valueUri, equals(Uri.parse(validYamlString)));
    });

    test('Equality - FhirUri', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical1 = FhirUri(validCanonicalString);
      final canonical2 = FhirUri(validCanonicalString);
      expect(canonical1, equals(canonical2));
    });

    test('Equality - Uri', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == Uri.parse(validCanonicalString), isTrue);
    });

    test('Equality - String', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      // ignore: unrelated_type_equality_checks
      expect(canonical == validCanonicalString, isTrue);
    });

    test('Inequality - FhirUri', () {
      const validCanonicalString1 = 'http://example.com/Patient/123';
      const validCanonicalString2 = 'http://example.com/Patient/456';
      final canonical1 = FhirUri(validCanonicalString1);
      final canonical2 = FhirUri(validCanonicalString2);
      expect(canonical1, isNot(equals(canonical2)));
    });

    test('Clone', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      final clonedCanonical = canonical.clone();
      expect(clonedCanonical, equals(canonical));
      expect(clonedCanonical.valueUri, equals(Uri.parse(validCanonicalString)));
    });

    test('CopyWith - No New Value', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      final copiedCanonical = canonical.copyWith();
      expect(copiedCanonical.valueUri, equals(canonical.valueUri));
    });

    test('CopyWith - New Value', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      const newCanonicalString = 'http://example.com/Patient/456';
      final canonical = FhirUri(validCanonicalString);
      final copiedCanonical = canonical.copyWith(
        newValue: Uri.parse(newCanonicalString),
      );
      expect(copiedCanonical.valueUri, equals(Uri.parse(newCanonicalString)));
    });

    test('Path Segments', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.pathSegments, equals(<String>['Patient', '123']));
    });

    test('File Path', () {
      const validCanonicalString = 'file:///home/user/file.txt';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.toFilePath(), equals('/home/user/file.txt'));
    });

    test('Host', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.host, equals('example.com'));
    });

    test('User Info', () {
      const validCanonicalString = 'http://user:pass@example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.userInfo, equals('user:pass'));
    });

    test('Port', () {
      const validCanonicalString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.port, equals(8080));
    });

    test('Authority', () {
      const validCanonicalString = 'http://example.com:8080/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.authority, equals('example.com:8080'));
    });

    test('Query', () {
      const validCanonicalString = 'http://example.com/Patient/123?name=John';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.query, equals('name=John'));
    });

    test('Split Query String All', () {
      const query = 'name=John&age=30';
      final splitQuery = FhirUri.splitQueryStringAll(query);
      expect(
        splitQuery,
        equals(<String, List<String>>{
          'name': <String>['John'],
          'age': <String>['30'],
        }),
      );
    });

    test('Encode Query Component', () {
      const text = 'name=John Doe';
      final encoded = FhirUri.encodeQueryComponent(text);
      expect(encoded, equals('name%3DJohn+Doe'));
    });

    test('Decode Query Component', () {
      const encodedText = 'name%3DJohn%20Doe';
      final decoded = FhirUri.decodeQueryComponent(encodedText);
      expect(decoded, equals('name=John Doe'));
    });

    test('ToJson', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.toJson(), equals({'value': validCanonicalString}));
    });

    test('ToYaml', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.toYaml(), equals('value: "$validCanonicalString"'));
    });

    test('ToString', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(canonical.toString(), equals(validCanonicalString));
    });

    test('ToJsonString', () {
      const validCanonicalString = 'http://example.com/Patient/123';
      final canonical = FhirUri(validCanonicalString);
      expect(
        canonical.toJsonString(),
        equals('{"value":"$validCanonicalString"}'),
      );
    });
  });

  group('FhirUri copyWith Tests:', () {
    test('should copy with new uri values', () {
      final original = FhirUri('http://example.org/fhir');
      expect(original.valueString, equals('http://example.org/fhir'));

      final copied = original.copyWith(newValue: 'http://hl7.org/fhir');
      expect(copied.valueString, equals('http://hl7.org/fhir'));
      expect(
        original.valueString,
        equals('http://example.org/fhir'),
      ); // Original unchanged
    });

    test('should accept Uri objects as new values', () {
      final original = FhirUri('http://example.org/fhir');
      final newUri = Uri.parse('http://hl7.org/fhir');

      final copied = original.copyWith(newValue: newUri);
      expect(copied.valueString, equals('http://hl7.org/fhir'));
    });

    test('should clear value when explicitly passed null', () {
      final original = FhirUri('http://example.org/fhir');
      expect(original.valueString, isNotNull);

      // ignore: avoid_redundant_argument_values
      final cleared = original.copyWith(
        newValue: null,
        element: const Element(),
      );
      expect(cleared.valueString, isNull);
      expect(original.valueString, isNotNull); // Original unchanged
    });

    test('should maintain URI properties on copied values', () {
      final original = FhirUri('http://example.org/fhir/Patient/123');
      final copied = original.copyWith(
        newValue: 'https://hl7.org/fhir/ValueSet/patient-gender',
      );

      expect(copied.valueUri?.scheme, equals('https'));
      expect(copied.valueUri?.host, equals('hl7.org'));
      expect(copied.valueUri?.pathSegments, contains('ValueSet'));
    });
  });
}
