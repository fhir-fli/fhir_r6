import 'package:fhir_r6_cql/fhir_r6_cql.dart';

///
/// To meet criteria using this datatype, the
/// communication indicated by the Communication QDM category and its
/// corresponding value set must be communicated from a patient to a
/// provider.
///

class CommunicationFromPatientToProvider {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;

  CommunicationFromPatientToProvider({
    this.authorDatetime,
    this.negationRationale,
  });
}
