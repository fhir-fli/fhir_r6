// ignore_for_file: public_member_api_docs

import 'package:fhir_r6/fhir_r6.dart';

class ElementDefinitionMatch {
  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition? definition;
  String? fixedType;
}
