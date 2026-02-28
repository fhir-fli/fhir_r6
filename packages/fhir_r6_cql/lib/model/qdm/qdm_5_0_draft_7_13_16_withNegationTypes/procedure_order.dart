import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedureOrder {
  final LiteralDateTime? authorTime;
  final LiteralCode? radiationDuration;

  ProcedureOrder({
    this.authorTime,
    this.radiationDuration,
  });
}
