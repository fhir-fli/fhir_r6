import 'package:fhir_r6_cql/fhir_r6_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a reaction in specific patients who have a
/// low threshold to the normal reported or expected reactions of the
/// device indicated by the QDM category and its corresponding value
/// set.
///

class DeviceIntolerance {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DeviceIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
