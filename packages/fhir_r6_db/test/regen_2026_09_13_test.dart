import 'package:drift/native.dart';
import 'package:fhir_r6/fhir_r6.dart' as fhir;
import 'package:fhir_r6_db/fhir_r6_db.dart';
import 'package:test/test.dart';

/// The R6 search parameters with a terminal exists() that the generated
/// extractor dropped until 2026-09-13: Appointment has-recurrence-template
/// (`Appointment.recurrenceTemplate.exists()`) and is-recurring
/// (`Appointment.recurrenceTemplate.exists() |
/// Appointment.originatingAppointment.exists()`), expressions as in the
/// generated `search_parameters.dart` from R6 search-parameters.json.
/// One boolean row per member: a union's members each contribute one,
/// so `false` can match an appointment that is recurring by the other
/// member, as it would for any server indexing the expression literally.
/// Failed against the previous extractor before it passed.
void main() {
  late FhirDb db;

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    await db.customSelect('SELECT 1').get();
  });
  tearDown(() => db.close());

  Future<List<String>> ids(Map<String, List<String>> params) async =>
      (await db.fhirDao.search(
        resourceType: fhir.R6ResourceType.Appointment,
        searchParameters: params,
      ))
          .map((r) => r.id!.valueString!)
          .toList()
        ..sort();

  Map<String, dynamic> appointment(
    String id, {
    bool template = false,
    bool originating = false,
  }) =>
      {
        'resourceType': 'Appointment',
        'id': id,
        'status': 'booked',
        'participant': [
          {
            'actor': {'reference': 'Patient/p1'},
            'status': 'accepted',
          },
        ],
        if (template)
          'recurrenceTemplate': [
            {
              'recurrenceType': {'text': 'weekly'},
            },
          ],
        if (originating)
          'originatingAppointment': {'reference': 'Appointment/root'},
      };

  test('has-recurrence-template and is-recurring', () async {
    await db.fhirDao
        .saveResource(fhir.Appointment.fromJson(appointment('one-off')));
    await db.fhirDao.saveResource(
      fhir.Appointment.fromJson(appointment('root', template: true)),
    );
    await db.fhirDao.saveResource(
      fhir.Appointment.fromJson(appointment('child', originating: true)),
    );
    expect(
      await ids({
        'has-recurrence-template': ['true'],
      }),
      ['root'],
    );
    expect(
      await ids({
        'has-recurrence-template': ['false'],
      }),
      ['child', 'one-off'],
    );
    expect(
      await ids({
        'is-recurring': ['true'],
      }),
      ['child', 'root'],
    );
  });
}
