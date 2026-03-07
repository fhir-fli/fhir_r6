import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the procedure indicated by the QDM category and its corresponding value set was
/// not performed.

class ProcedureNotPerformed {
  final LiteralCode? negationRationale;

  ProcedureNotPerformed({
    this.negationRationale,
  });
}
