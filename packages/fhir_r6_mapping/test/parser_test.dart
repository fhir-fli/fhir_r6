// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final dir = Directory('test/parser_examples');
  final parser = await StructureMapParser.create();
  for (final file in dir.listSync()) {
    if (file is File && file.path.endsWith('.json')) {
      testFile(file.path, parser);
    }
  }
}

void testFile(String key, StructureMapParser parser) {
  final structureMapString = File(key).readAsStringSync();
  final realStructureMap =
      StructureMap.fromJsonString(structureMapString).toJson()
        ..remove('text')
        ..remove('meta');

  final fhirMap = File(key.replaceAll('.json', '.map')).readAsStringSync();
  try {
    final structureMap = parser.parse(fhirMap, 'fhirmap');

    final structureMapJson = structureMap.toJson()
      ..remove('text')
      ..remove('meta');

    final equals = const DeepCollectionEquality()
        .equals(realStructureMap, structureMapJson);
    test(key, () {
      expect(equals, true);
    });
    if (!equals) {
      File(key.replaceAll('.json', '_ours.json'))
          .writeAsStringSync(prettyJson(structureMapJson));
      // throw Exception('StructureMap not equal');
    }
  } catch (e, s) {
    print('$key: $e');
    print(s);
    throw Exception('$key $e');
  }
}

String prettyJson(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);

String prettyPrintJson(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);

String jsonPrettyPrint(Map<String, dynamic> map) =>
    const JsonEncoder.withIndent('    ').convert(map);
