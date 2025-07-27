// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final dir = Directory('assets');
  for (final entity in dir.listSync()) {
    if (entity is File && entity.path.endsWith('.json')) {
      final map =
          jsonDecode(await entity.readAsString()) as Map<String, dynamic>;
      var quarantine = [
        'ResearchElementDefinition',
        'CatalogEntry',
        'DocumentManifest',
        'Media',
        'DeviceUseStatement',
        'RequestGroup',
        'ResearchDefinition',
      ].contains(map['resourceType']);
      if (!quarantine) {
        quarantine = map['resourceType'] == 'SearchParameter' &&
            map.keys.contains('xpathUsage') &&
            map['xpathUsage'] != 'normal';
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'StructureDefinition' &&
            map['snapshot'] is Map<String, dynamic> &&
            (map['snapshot'] as Map<String, dynamic>)['element'] != null &&
            ((map['snapshot'] as Map<String, dynamic>)['element'] as List).any(
              (e) =>
                  (e as Map<String, dynamic>)['constraint'] != null &&
                  (e['constraint']! as List).any(
                    (c) => (c as Map<String, dynamic>).keys.contains('xpath'),
                  ),
            );
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'Bundle' &&
            map['entry'] != null &&
            (map['entry'] as List).any(
              (e) =>
                  (e as Map<String, dynamic>).keys.contains('resource') &&
                  (e['resource'] as Map<String, dynamic>).keys.contains(
                        'resourceType',
                      ) &&
                  (((e['resource'] as Map<String, dynamic>)['resourceType'] ==
                              'StructureDefinition' &&
                          (e['resource'] as Map<String, dynamic>)['snapshot']
                              is Map<String, dynamic> &&
                          ((e['resource'] as Map<String, dynamic>)['snapshot']
                                  as Map<String, dynamic>)['element'] !=
                              null &&
                          (((e['resource'] as Map<String, dynamic>)['snapshot']
                                  as Map<String, dynamic>)['element'] as List)
                              .any(
                            (e) =>
                                (e as Map<String, dynamic>)['constraint'] !=
                                    null &&
                                (e['constraint']! as List).any(
                                  (c) => (c as Map<String, dynamic>)
                                      .keys
                                      .contains('xpath'),
                                ),
                          )) ||
                      ((e['resource']
                                  as Map<String, dynamic>)['resourceType'] ==
                              'MolecularSequence' &&
                          (e['resource'] as Map<String, dynamic>)
                              .keys
                              .contains('coordinateSystem'))),
            );
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'Endpoint' &&
            map['connectionType'] != null &&
            map['connectionType'] is! List;
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'AdverseEvent' &&
            map['identifier'] != null &&
            map['identifier'] is! List;
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'MolecularSequence' &&
            (map.keys.contains('variant') ||
                map.keys.contains('coordinateSystem') ||
                map.keys.contains('referenceSeq') ||
                map.keys.contains('pointer'));
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'ServiceRequest' &&
            map['code'] != null &&
            (map['code'] as Map<String, dynamic>).keys.contains('coding');
      }
      if (!quarantine) {
        quarantine =
            map['resourceType'] == 'ResearchSubject' && map['subject'] == null;
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'Consent' &&
            map['provision'] != null &&
            map['provision'] is! List;
      }
      if (!quarantine) {
        quarantine =
            map['resourceType'] == 'Subscription' && map['topic'] == null;
      }
      if (!quarantine) {
        quarantine = map['resourceType'] == 'ConceptMap' &&
            map['group'] != null &&
            map['group'] is List &&
            (map['group'] as List).any(
              (g) =>
                  (g as Map<String, dynamic>).keys.contains('element') &&
                  (g['element'] as List).any(
                    (e) =>
                        (e as Map<String, dynamic>).keys.contains('target') &&
                        (e['target'] as List).any(
                          (t) => !(t as Map<String, dynamic>)
                              .keys
                              .contains('relationship'),
                        ),
                  ),
            );
      }
      if (quarantine) {
        final newPath = entity.path.replaceAll('assets', 'quarantine');
        final newFile = File(newPath);
        await newFile.create(recursive: true);
        await newFile.writeAsString(jsonEncode(map));
        print('Moved ${entity.path} to $newPath');
        await entity.delete();
      } else {
        print('Skipping ${entity.path}, not a SearchParameter with xpathUsage');
      }
    }
  }
}
