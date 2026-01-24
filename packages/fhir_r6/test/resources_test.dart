import 'dart:convert';
import 'dart:io';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:test/test.dart';

void main() {
  // Create quarantine directory and error log file
  final quarantineDir = Directory('./test/quarantine');
  if (!quarantineDir.existsSync()) {
    quarantineDir.createSync(recursive: true);
  }

  final errorLogFile = File('./test/error_log.txt');
  final errorLog = errorLogFile.openWrite();
  errorLog.writeln('FHIR R6 Resource Test Error Log');
  errorLog.writeln('Generated: ${DateTime.now()}');
  errorLog.writeln('=' * 80);
  errorLog.writeln();

  tearDownAll(errorLog.close);

  group(
    'JSON Validation',
    () {
      final dir = Directory('./test/assets');
      for (final file in dir.listSync()) {
        test(file.path, () {
          try {
            final contents = File(file.path).readAsStringSync();
            final contentJson = jsonDecode(contents) as Map<String, dynamic>;
            final resource = Resource.fromJson(contentJson);

            if (!deepCompare(contentJson, resource.toJson())) {
              File(
                file.path.replaceAll('assets/', '').replaceAll(
                      '.json',
                      '1.json',
                    ),
              ).writeAsStringSync(prettyPrintJson(contentJson));
              File(
                file.path.replaceAll('assets/', '').replaceAll(
                      '.json',
                      '2.json',
                    ),
              ).writeAsStringSync(prettyPrintJson(resource.toJson()));

              fail('Serialization mismatch for ${file.path}');
            }
          } catch (e, stackTrace) {
            // Log the error
            errorLog.writeln('FILE: ${file.path}');
            errorLog.writeln('TEST: JSON Validation');
            errorLog.writeln('ERROR: $e');
            errorLog.writeln('STACK TRACE:');
            errorLog.writeln(stackTrace);
            errorLog.writeln('-' * 80);
            errorLog.writeln();

            // Move file to quarantine
            final fileName = file.path.split('/').last;
            final quarantineFile = File('./test/quarantine/$fileName');
            File(file.path).renameSync(quarantineFile.path);

            // Fail the test with error message
            fail('JSON parsing error for ${file.path}: $e');
          }
        });
      }
    },
  );

  group(
    'YAML Validation',
    () {
      final dir = Directory('./test/assets');
      for (final file in dir.listSync()) {
        test(file.path, () {
          try {
            final contents = File(file.path).readAsStringSync();
            final contentJson = jsonDecode(contents) as Map<String, dynamic>;
            final preResource = Resource.fromJson(contentJson);
            final yamlResourceString = preResource.toYaml();
            final resource = Resource.fromYaml(yamlResourceString);

            if (!deepCompare(contentJson, resource.toJson())) {
              File(
                file.path.replaceAll('assets/', '').replaceAll(
                      '.json',
                      '1.json',
                    ),
              ).writeAsStringSync(prettyPrintJson(contentJson));
              File(
                file.path.replaceAll('assets/', '').replaceAll(
                      '.json',
                      '2.json',
                    ),
              ).writeAsStringSync(prettyPrintJson(resource.toJson()));

              fail('Serialization mismatch for ${file.path}');
            }
          } catch (e, stackTrace) {
            // Log the error
            errorLog.writeln('FILE: ${file.path}');
            errorLog.writeln('TEST: YAML Validation');
            errorLog.writeln('ERROR: $e');
            errorLog.writeln('STACK TRACE:');
            errorLog.writeln(stackTrace);
            errorLog.writeln('-' * 80);
            errorLog.writeln();

            // Move file to quarantine (if not already moved by JSON test)
            final fileName = file.path.split('/').last;
            final quarantineFile = File('./test/quarantine/$fileName');
            if (File(file.path).existsSync()) {
              File(file.path).renameSync(quarantineFile.path);
            }

            // Fail the test with error message
            fail('YAML parsing error for ${file.path}: $e');
          }
        });
      }
    },
  );
}

const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

String prettyPrintJson(Map<String, dynamic> map) => jsonEncoder.convert(map);
