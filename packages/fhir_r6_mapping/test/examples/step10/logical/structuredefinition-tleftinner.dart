// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r6/fhir_r6.dart';

final structureDefinitionTLeftInner10 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TLeftInner",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-leftinner-10",
  "name": "TLeftInner",
  "status": "draft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TLeftInner",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation": "specialization",
  "differential": {
    "element": [
      {
        "id": "TLeftInner",
        "path": "TLeftInner",
        "definition": "TLeftInner definition",
        "min": 1,
        "max": "1",
      },
      {
        "id": "TLeftInner.ab",
        "path": "TLeftInner.ab",
        "min": 1,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
