import 'dart:convert';
import 'dart:io';

import 'package:fhir_r6/fhir_r6.dart';

void main() async {
  final quarantineDir = Directory('./test/quarantine');
  final files = quarantineDir
      .listSync()
      .where((f) => f.path.endsWith('.json'))
      .cast<File>()
      .toList();

  print('Analyzing ${files.length} quarantined files...\n');
  print('=' * 80);

  final categories = <String, List<String>>{
    'parse_error': [],
    'serialization_mismatch': [],
    'missing_required': [],
    'other_error': [],
  };

  for (final file in files) {
    final fileName = file.path.split('/').last;
    try {
      final contents = file.readAsStringSync();
      final contentJson = jsonDecode(contents) as Map<String, dynamic>;

      try {
        final resource = Resource.fromJson(contentJson);
        final resourceJson = resource.toJson();

        if (!deepCompare(contentJson, resourceJson)) {
          categories['serialization_mismatch']!.add(fileName);
          print('\n[$fileName] - SERIALIZATION MISMATCH');

          // Show differences
          final original = _flattenJson(contentJson);
          final serialized = _flattenJson(resourceJson);

          // Find keys that differ
          final allKeys = {...original.keys, ...serialized.keys};
          final differences = <String>[];

          for (final key in allKeys) {
            if (original[key] != serialized[key]) {
              differences
                ..add('  $key:')
                ..add('    Original:   ${original[key]}')
                ..add('    Serialized: ${serialized[key]}');
            }
          }

          if (differences.length <= 20) {
            print(differences.join('\n'));
          } else {
            print(
              '  ${differences.length ~/ 3} fields differ (showing first 10):',
            );
            print(differences.take(30).join('\n'));
            print('  ... and ${differences.length ~/ 3 - 10} more');
          }
        }
      } catch (e) {
        if (e.toString().contains('required') ||
            e.toString().contains('must not be null') ||
            e.toString().contains('Missing required')) {
          categories['missing_required']!.add(fileName);
          print('\n[$fileName] - MISSING REQUIRED FIELD');
          print('  Error: $e');
        } else {
          categories['parse_error']!.add(fileName);
          print('\n[$fileName] - PARSE ERROR');
          print('  Error: $e');
        }
      }
    } catch (e) {
      categories['other_error']!.add(fileName);
      print('\n[$fileName] - OTHER ERROR');
      print('  Error: $e');
    }
  }

  print('\n');
  print('=' * 80);
  print('SUMMARY');
  print('=' * 80);
  print('Total files: ${files.length}');
  print('Parse errors: ${categories['parse_error']!.length}');
  print(
    'Serialization mismatches: ${categories['serialization_mismatch']!.length}',
  );
  print('Missing required fields: ${categories['missing_required']!.length}');
  print('Other errors: ${categories['other_error']!.length}');

  // Write detailed report
  final report = File('./test/quarantine_analysis.txt');
  final sink = report.openWrite()
    ..writeln('FHIR R6 Quarantine Analysis')
    ..writeln('Generated: ${DateTime.now()}')
    ..writeln('=' * 80)
    ..writeln();

  for (final category in categories.entries) {
    sink.writeln(
      '${category.key.toUpperCase()} (${category.value.length} files):',
    );
    for (final file in category.value) {
      sink.writeln('  - $file');
    }
    sink.writeln();
  }

  await sink.close();
  print('\nDetailed report written to: test/quarantine_analysis.txt');
}

Map<String, dynamic> _flattenJson(
  Map<String, dynamic> json, [
  String prefix = '',
]) {
  final result = <String, dynamic>{};

  for (final entry in json.entries) {
    final key = prefix.isEmpty ? entry.key : '$prefix.${entry.key}';

    if (entry.value is Map<String, dynamic>) {
      result.addAll(_flattenJson(entry.value as Map<String, dynamic>, key));
    } else if (entry.value is List) {
      result[key] = '${(entry.value as List).length} items';
    } else {
      result[key] = entry.value;
    }
  }

  return result;
}
