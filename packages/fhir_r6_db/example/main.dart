// ignore_for_file: avoid_print, lines_longer_than_80_chars

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_db/fhir_r6_db.dart';
import 'package:hive_ce/hive.dart';
import 'package:test/test.dart';

Future<void> main() async {
  const directory = 'db';
  late FhirDb fhirDb;
  const password1 = 'password1';
  const password2 = 'password2';
  late Patient saved1;
  const id = '12345';

  // Runs once before all tests
  setUpAll(() async {
    if (Directory(directory).existsSync()) {
      await Directory(directory).delete(recursive: true);
    }

    // Initialize Hive & Clear Current Hive DB
    fhirDb = FhirDb();
    await fhirDb.init(path: directory, pw: password1);
    print('Database initialized');
  });

  group('Saving Things:', () {
    test('Saved A Patient, Found A Patient', () async {
      final patient1 = Patient(id: '1'.toFhirString);
      saved1 = await fhirDb.save(resource: patient1, pw: password1) as Patient;

      final search1 = await fhirDb.find(
        resourceType: R6ResourceType.Patient,
        id: '1',
        pw: password1,
      );

      expect(saved1.toJson(), search1[0].toJson());
    });

    test('Found Patient With New Password Because Box Was Already Opened',
        () async {
      final search2 = await fhirDb.find(
        resourceType: R6ResourceType.Patient,
        id: '1',
        pw: password1,
      );
      expect(saved1.toJson(), search2[0].toJson());
    });

    test('Password Changed', () async {
      await fhirDb.updatePw(oldPw: password1, newPw: password2);
      final search4 = await fhirDb.find(
        resourceType: R6ResourceType.Patient,
        id: '1',
        pw: password2,
      );
      expect(saved1.toJson(), search4[0].toJson());
    });

    test('Save Patient', () async {
      await fhirDb.updatePw(oldPw: password2, newPw: password1);
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );
      final patient =
          Patient(id: id.toFhirString, name: <HumanName>[humanName]);
      final saved = await fhirDb.save(resource: patient, pw: password1);

      expect(saved.id?.toString(), id);
      expect((saved as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Save Organization', () async {
      final organization =
          Organization(id: id.toFhirString, name: 'FhirFli'.toFhirString);
      final saved = await fhirDb.save(resource: organization, pw: password1);

      expect(saved.id?.toString(), id);
      expect((saved as Organization).name?.toString(), 'FhirFli');
    });

    test('Save Observation1', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password1);

      expect(saved.id?.toString(), 'obs1');
      expect((saved as Observation).code.text?.valueString, 'Observation #1');
    });

    test('Save Observation1 Again', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1 - Updated'.toFhirString),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password1);

      expect(saved.id?.toString(), 'obs1');
      expect(
        (saved as Observation).code.text?.valueString,
        'Observation #1 - Updated',
      );
      expect(saved.meta?.versionId, FhirId('2'));
    });

    test('Save Observation2', () async {
      final observation2 = Observation(
        status: ObservationStatus.final_,
        id: 'obs2'.toFhirString,
        code: CodeableConcept(text: 'Observation #2'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation2, pw: password1);

      expect(saved.id?.toString(), 'obs2');
      expect((saved as Observation).code.text?.valueString, 'Observation #2');
    });

    test('Save Observation3', () async {
      final observation3 = Observation(
        status: ObservationStatus.final_,
        id: 'obs3'.toFhirString,
        code: CodeableConcept(text: 'Observation #3'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation3, pw: password1);

      expect(saved.id?.toString(), 'obs3');
      expect((saved as Observation).code.text?.valueString, 'Observation #3');
    });
  });

  group('Finding Things:', () {
    test('Find 1st Patient', () async {
      final search = await fhirDb.find(
        resourceType: R6ResourceType.Patient,
        id: id,
        pw: password1,
      );
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );

      expect(search.length, 1);
      expect((search[0] as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Find 3rd Observation', () async {
      final search = await fhirDb.find(
        resourceType: R6ResourceType.Observation,
        id: 'obs3',
        pw: password1,
      );
      expect(search.length, 1);
      expect(search[0].id?.toString(), 'obs3');
      expect(
        (search[0] as Observation).code.text?.valueString,
        'Observation #3',
      );
    });

    test('Find All Observations', () async {
      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R6ResourceType>[R6ResourceType.Observation],
        pw: password1,
      );
      expect(search.length, 3);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);
      expect(idList.contains('obs2'), true);
      expect(idList.contains('obs3'), true);
    });

    test('Find All (non-historical) Resources', () async {
      final search = await fhirDb.getAllActiveResources(pw: password1);

      expect(search.length, 6);
      final patList = search.toList();
      final orgList = search.toList();
      final obsList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R6ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Organization,
      );
      obsList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Observation,
      );

      expect(patList.length, 2);
      expect(orgList.length, 1);
      expect(obsList.length, 3);
    });
  });

  group('Deleting Things:', () {
    test('Delete 2nd Observation', () async {
      await fhirDb.delete(
        resourceType: R6ResourceType.Observation,
        id: 'obs2',
        pw: password1,
      );

      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R6ResourceType>[R6ResourceType.Observation],
        pw: password1,
      );

      expect(search.length, 2);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);
      expect(idList.contains('obs2'), false);
      expect(idList.contains('obs3'), true);
    });

    test('Delete All Observations', () async {
      await fhirDb.deleteSingleType(
        resourceType: R6ResourceType.Observation,
        pw: password1,
      );

      final search = await fhirDb.getAllActiveResources(pw: password1);

      expect(search.length, 3);

      final patList = search.toList();
      final orgList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R6ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Organization,
      );

      expect(patList.length, 2);
      expect(orgList.length, 1);
    });

    test('Delete All Resources', () async {
      await fhirDb.deleteAllResources(pw: password1);

      final search = await fhirDb.getAllActiveResources(pw: password1);
      expect(search.length, 0);
    });
  });

  group('Password - Saving Things:', () {
    test('Save Patient', () async {
      await fhirDb.updatePw(newPw: password2);
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );
      final patient =
          Patient(id: id.toFhirString, name: <HumanName>[humanName]);
      final saved = await fhirDb.save(resource: patient, pw: password2);

      expect(saved.id?.toString(), id);
      expect((saved as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Save Organization', () async {
      final organization =
          Organization(id: id.toFhirString, name: 'FhirFli'.toFhirString);
      final saved = await fhirDb.save(resource: organization, pw: password2);

      expect(saved.id?.toString(), id);
      expect((saved as Organization).name?.valueString, 'FhirFli');
    });

    test('Save Observation1', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password2);

      expect(saved.id?.toString(), 'obs1');
      expect((saved as Observation).code.text?.valueString, 'Observation #1');
    });

    test('Save Observation1 Again', () async {
      final observation1 = Observation(
        status: ObservationStatus.final_,
        id: 'obs1'.toFhirString,
        code: CodeableConcept(text: 'Observation #1 - Updated'.toFhirString),
      );
      final saved = await fhirDb.save(resource: observation1, pw: password2);

      expect(saved.id?.toString(), 'obs1');
      expect(
        (saved as Observation).code.text?.valueString,
        'Observation #1 - Updated',
      );
      expect(saved.meta?.versionId, FhirId('2'));
    });

    test('Save Observation2', () async {
      final observation2 = Observation(
        status: ObservationStatus.final_,
        id: 'obs2'.toFhirString,
        code: CodeableConcept(text: 'Observation #2'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation2, pw: password2);

      expect(saved.id?.toString(), 'obs2');
      expect((saved as Observation).code.text?.valueString, 'Observation #2');
    });

    test('Save Observation3', () async {
      final observation3 = Observation(
        status: ObservationStatus.final_,
        id: 'obs3'.toFhirString,
        code: CodeableConcept(text: 'Observation #3'.toFhirString),
        effectiveX: FhirDateTime.fromDateTime(DateTime(1981, 09, 18)),
      );
      final saved = await fhirDb.save(resource: observation3, pw: password2);

      expect(saved.id?.toString(), 'obs3');
      expect((saved as Observation).code.text?.valueString, 'Observation #3');
    });
  });

  group('Password - Finding Things:', () {
    test('Find 1st Patient', () async {
      final search = await fhirDb.find(
        resourceType: R6ResourceType.Patient,
        id: id,
        pw: password2,
      );
      final humanName = HumanName(
        family: 'Atreides'.toFhirString,
        given: <FhirString>['Duke'.toFhirString],
      );

      expect(search.length, 1);
      expect((search[0] as Patient).name?[0].toJson(), humanName.toJson());
    });

    test('Find 3rd Observation', () async {
      final search = await fhirDb.find(
        resourceType: R6ResourceType.Observation,
        id: 'obs3',
        pw: password2,
      );

      expect(search.length, 1);
      expect(search[0].id?.toString(), 'obs3');
      expect(
        (search[0] as Observation).code.text?.valueString,
        'Observation #3',
      );
    });

    test('Find All Observations', () async {
      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R6ResourceType>[R6ResourceType.Observation],
        pw: password2,
      );

      expect(search.length, 3);
      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);
      expect(idList.contains('obs2'), true);
      expect(idList.contains('obs3'), true);
    });

    test('Find All (non-historical) Resources', () async {
      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 5);
      final patList = search.toList();
      final orgList = search.toList();
      final obsList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R6ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Organization,
      );
      obsList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Observation,
      );

      expect(patList.length, 1);
      expect(orgList.length, 1);
      expect(obsList.length, 3);
    });
  });

  group('Password - Deleting Things:', () {
    test('Delete 2nd Observation', () async {
      await fhirDb.delete(
        resourceType: R6ResourceType.Observation,
        id: 'obs2',
        pw: password2,
      );

      final search = await fhirDb.getActiveResourcesOfType(
        resourceTypes: <R6ResourceType>[R6ResourceType.Observation],
        pw: password2,
      );

      expect(search.length, 2);

      final idList = <String>[];
      for (final obs in search) {
        idList.add(obs.id.toString());
      }

      expect(idList.contains('obs1'), true);
      expect(idList.contains('obs2'), false);
      expect(idList.contains('obs3'), true);
    });

    test('Delete All Observations', () async {
      await fhirDb.deleteSingleType(
        resourceType: R6ResourceType.Observation,
        pw: password2,
      );

      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 2);

      final patList = search.toList();
      final orgList = search.toList();
      patList.retainWhere(
        (Resource resource) => resource.resourceType == R6ResourceType.Patient,
      );
      orgList.retainWhere(
        (Resource resource) =>
            resource.resourceType == R6ResourceType.Organization,
      );

      expect(patList.length, 1);
      expect(orgList.length, 1);
    });

    test('Delete All Resources', () async {
      await fhirDb.deleteAllResources(pw: password2);

      final search = await fhirDb.getAllActiveResources(pw: password2);

      expect(search.length, 0);
    });
  });

  group('More Complicated Searching', () {
    test(
      '(& Resources)',
      () async {
        final dir = Directory('test/assets');
        final subscription =
            fhirDb.subject(resourceType: R6ResourceType.Observation).listen(
          (Resource? resource) {
            // This block is where you handle each emitted item
            print('Received resource: ${resource?.path}');
          },
          onError: (dynamic error) {
            // Handle any errors
            print('Error: $error');
          },
          onDone: () {
            // Handle stream completion
            print('Stream completed.');
          },
        );

        final fileList = await dir
            .list()
            .map((FileSystemEntity event) => event.path)
            .toList();
        var total = 0;
        const numberOfTimes = 1;
        final buffer = StringBuffer();
        for (var i = 0; i < numberOfTimes; i++) {
          final startTime = DateTime.now();
          for (final file in fileList) {
            print(file);
            var i = 0;

            final resources = <Resource>[];
            for (final file in fileList) {
              final fileContents = File(file).readAsStringSync();
              for (final content in fileContents.split('\n')) {
                if (content.isNotEmpty) {
                  final resource = Resource.fromJson(
                    jsonDecode(content) as Map<String, dynamic>,
                  );
                  resources.add(resource);
                }
              }
            }

            for (final resource in resources) {
              i++;
              await fhirDb.save(resource: resource);
            }
            total += i;
          }
          final endTime = DateTime.now();
          final duration = endTime.difference(startTime);
          buffer
            ..writeln('Total Resources: $total\n')
            ..writeln('Total time: ${duration.inSeconds} seconds');
        }

        final testStartTime = DateTime.now();
        final testEndTime = DateTime.now();
        print(
          'Found 10 resources in total of '
          '${testEndTime.difference(testStartTime).inMilliseconds} ms',
        );
        await subscription.cancel();
      },
      timeout: const Timeout(Duration(minutes: 60)),
    );
  });
  await Hive.close();
  if (Directory(directory).existsSync()) {
    await Directory(directory).delete(recursive: true);
  }
}

Future<bool> compareTwoResources(
  Resource originalResource,
  FhirDb fhirDb,
  String? pw,
) async {
  final dbResource = await fhirDb.get(
    pw: pw,
    resourceType: originalResource.resourceType,
    id: originalResource.id!.valueString!,
  );
  final resource1Json = originalResource.toJson();
  final resource2json = dbResource?.toJson();
  resource1Json.remove('meta');
  resource2json?.remove('meta');
  if (!(const DeepCollectionEquality()).equals(resource1Json, resource2json)) {
    return false;
  }
  if (!(const DeepCollectionEquality()).equals(resource2json, resource1Json)) {
    return false;
  }
  return true;
}
