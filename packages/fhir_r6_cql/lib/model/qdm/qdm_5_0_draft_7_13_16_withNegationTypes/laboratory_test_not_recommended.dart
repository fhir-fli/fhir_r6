import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the laboratory test indicated by the QDM category and its corresponding value
/// set was not recommended.

class LaboratoryTestNotRecommended {
  final LiteralCode? negationRationale;

  LaboratoryTestNotRecommended({
    this.negationRationale,
  });
}
