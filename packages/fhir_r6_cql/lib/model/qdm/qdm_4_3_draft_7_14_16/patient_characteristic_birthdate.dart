import 'package:fhir_r6_cql/fhir_r6_cql.dart';

/// The Patient Characteristic Birthdate data element should document the
/// patient’s date of birth. Note: Patient Characteristic Birthdate is fixed to LOINC
/// code 21112-8 (Birth date) and therefore cannot be further qualified with a value
/// set.

class PatientCharacteristicBirthdate {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristicBirthdate({
    this.startDatetime,
    this.stopDatetime,
  });
}
