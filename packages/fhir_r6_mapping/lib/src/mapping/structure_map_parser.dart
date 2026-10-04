import 'package:fhir_mapping/fhir_mapping.dart' as fm;
import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';

/// The shared `fhir_mapping` parser over R6: map text to a [StructureMap]
/// and back.
class StructureMapParser {
  StructureMapParser._(this.parser);

  /// Makes a parser producing R6 StructureMaps.
  static Future<StructureMapParser> create() async => StructureMapParser._(
        await fm.StructureMapParser.create(const R6MappingModel()),
      );

  /// The version-independent parser this one drives.
  final fm.StructureMapParser<Resource> parser;

  /// Parses [text] (named [srcName] in errors) to a StructureMap.
  StructureMap parse(String text, String srcName) =>
      parser.parse(text, srcName) as StructureMap;

  /// Renders [map] as map text.
  static String render(StructureMap map) => fm.StructureMapParser.render(map);
}
