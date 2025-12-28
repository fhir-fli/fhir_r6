// ignore_for_file: one_member_abstracts

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';

/// ValueSetExpander
abstract class ValueSetExpander {
  /// Expand a value set
  Future<ValueSetExpansionOutcome> expand(
    ValueSet source,
    Parameters? parameters,
  );
}
