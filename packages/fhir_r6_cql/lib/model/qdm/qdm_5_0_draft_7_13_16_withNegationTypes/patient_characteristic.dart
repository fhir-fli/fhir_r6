import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a characteristic of the patient not represented by one of the more specific
/// Individual Characteristic datatypes.

class PatientCharacteristic {
  final LiteralDateTime? authorTime;

  PatientCharacteristic({
    this.authorTime,
  });
}
