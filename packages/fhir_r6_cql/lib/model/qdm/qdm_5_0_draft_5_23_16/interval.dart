import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// This attribute type is new to QDM 5.0.

class Interval {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  Interval({
    this.startDatetime,
    this.stopDatetime,
  });
}
