import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that use of the device indicated by the QDM category and its corresponding value set
/// is not recommended.

class DeviceNotRecommended {
  final LiteralCode? negationRationale;

  DeviceNotRecommended({
    this.negationRationale,
  });
}
