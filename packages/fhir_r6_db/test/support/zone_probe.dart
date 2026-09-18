// The child of date_zone_independence_test.dart: opens the store that test
// wrote, in whatever TZ it was started with, runs the searches, and writes
// the counts to the file named by ZONE_PROBE_OUT.
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r6/fhir_r6.dart' as fhir;
import 'package:fhir_r6_db/fhir_r6_db.dart';

Future<void> main() async {
  final path = Platform.environment['ZONE_PROBE_DB']!;
  final out = File(Platform.environment['ZONE_PROBE_OUT']!);
  final db = FhirDb(NativeDatabase(File(path)));
  final dao = FhirDao(db);
  final lines = <String>['tz=${DateTime.now().timeZoneName}'];
  Future<void> count(
    String label,
    fhir.R6ResourceType type,
    Map<String, List<String>> params,
  ) async {
    final n =
        (await dao.search(resourceType: type, searchParameters: params)).length;
    lines.add('$label=$n');
  }

  await count('birthdate-eq', fhir.R6ResourceType.Patient, {
    'birthdate': ['1990-01-15'],
  });
  await count('birthdate-day-before', fhir.R6ResourceType.Patient, {
    'birthdate': ['1990-01-14'],
  });
  await count('zoneless-eq', fhir.R6ResourceType.Observation, {
    'date': ['2013-01-14T10:00:00'],
  });
  await count('zoneless-day', fhir.R6ResourceType.Observation, {
    'date': ['2013-01-14'],
  });
  await count('zoned-eq', fhir.R6ResourceType.Observation, {
    'date': ['2013-01-14T10:00:00+02:00'],
  });
  await db.close();
  out.writeAsStringSync('${lines.join('\n')}\n');
}
