import 'test_questionnaire.dart';

/// What stays in the binding is what is specific to R6: the Questionnaire
/// resource walk here, and terminology membership in member_of_test.dart.
///
/// The engine's own semantics — parsing, operators, functions, type
/// operators, date/time arithmetic and the official HL7 suite — live in the
/// `fhir_path` package, which is where the code being tested lives. They ran
/// here as a third byte-identical copy of the same suites; keeping three
/// copies of the engine's tests did not test the engine three times.
Future<void> main() async {
  await testQuestionnaire();
}
