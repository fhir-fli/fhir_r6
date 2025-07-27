// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r5/fhir_r5.dart';

final structureDefinitionTRightInner10 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TRightInner",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-rightinner-10",
  "name": "TRightInner",
  "status": "draft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TRightInner",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation": "specialization",
  "differential": {
    "element": [
      {
        "id": "TRightInner",
        "path": "TRightInner",
        "definition": "TRightInner definition",
        "min": 1,
        "max": "1",
      },
      {
        "id": "TRightInner.ab",
        "path": "TRightInner.ab",
        "min": 1,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
