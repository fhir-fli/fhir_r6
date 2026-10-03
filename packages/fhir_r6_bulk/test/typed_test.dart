import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_bulk/fhir_r6_bulk.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

/// The R6 layer over fhir_bulk: typed constructors, typed returns, and the
/// model the core reads resource type names from.
void main() {
  test('r6Bulk parses and writes fhir_r6 resources and knows its types', () {
    expect(r6Bulk.fhirVersion, '6.0.0');
    expect(r6Bulk.resourceTypeNames, contains('Patient'));
    expect(r6Bulk.resourceTypeNames, isNot(contains('Foo')));
    expect(r6Bulk.resourceTypeNames.length, R6ResourceType.values.length);
    final p = r6Bulk.fromJson({'resourceType': 'Patient', 'id': 'x'});
    expect(p, isA<Patient>());
    expect(r6Bulk.toJson(p), {'resourceType': 'Patient', 'id': 'x'});
  });

  test('WhichResource and ImportFile take the typed names', () {
    final wr = WhichResource(R6ResourceType.Observation, FhirId('obs-1'));
    expect(wr.resourceType, 'Observation');
    expect(wr.id, 'obs-1');
    expect(WhichResource(null).resourceType, isNull);
    final f = ImportFile(
      resourceType: R6ResourceType.Patient,
      url: Uri.parse('https://data.example.com/p.ndjson'),
    );
    expect(f.resourceType, 'Patient');
  });

  test('kickoff and filter checks go through the R6 model', () {
    final k = BulkExportKickoff.fromQuery({
      '_type': ['Patient,Foo'],
    });
    expect(k.unknownTypes(r6Bulk), ['Foo']);
    expect(TypeFilter.parse('Patient?x=1').resourceTypeKnown(r6Bulk), isTrue);
    expect(TypeFilter.parse('Foo?x=1').resourceTypeKnown(r6Bulk), isFalse);
  });

  test('fromParameters reads a typed Parameters by element name', () {
    final k = BulkExportKickoff.fromParameters(
      Parameters.fromJson({
        'resourceType': 'Parameters',
        'parameter': [
          {
            'name': 'patient',
            'valueReference': {'reference': 'Patient/123'},
          },
          {'name': '_type', 'valueString': 'Patient,Observation'},
          {'name': '_since', 'valueInstant': '2020-01-01T00:00:00Z'},
        ],
      }),
    );
    expect(k.patients, ['Patient/123']);
    expect(k.types, ['Patient', 'Observation']);
    expect(k.since, DateTime.utc(2020));
  });

  test('a Group request sends the FhirId and the FhirDateTime as text',
      () async {
    String? url;
    final client = MockClient((request) async {
      url = request.url.toString();
      return http.Response('', 400);
    });
    final result = await BulkRequestGroup(
      base: Uri.parse('http://example.com/fhir'),
      id: FhirId('grp-99'),
      types: [WhichResource(R6ResourceType.Patient, FhirId('p1'))],
      since: '2024-06-01T00:00:00+05:00'.toFhirDateTime,
      client: client,
    ).request();
    expect(url, contains(r'Group/grp-99/$export'));
    expect(url, contains('_type=Patient/p1'));
    expect(url, contains('_since=2024-06-01T00%3A00%3A00%2B05%3A00'));
    expect(result.single, isA<OperationOutcome>());
    expect(
      (result.single as OperationOutcome)
          .issue
          .first
          .details
          ?.text
          ?.valueString,
      contains('400'),
    );
  });

  test('import answers with a typed OperationOutcome', () async {
    final client = MockClient(
      (request) async => http.Response(
        jsonEncode({
          'resourceType': 'OperationOutcome',
          'issue': [
            {'severity': 'information', 'code': 'informational'},
          ],
        }),
        202,
      ),
    );
    final outcome = await BulkImportRequest(
      base: Uri.parse('http://example.com/fhir'),
      files: [
        ImportFile(
          resourceType: R6ResourceType.Patient,
          url: Uri.parse('https://data.example.com/p.ndjson'),
        ),
      ],
      client: client,
    ).importData();
    expect(outcome.issue.single.severity, IssueSeverity.information);
  });
}
