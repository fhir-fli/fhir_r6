// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r5/fhir_r5.dart';

final structureDefinitionTLeft12 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TLeft",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-12",
  "name": "TLeft",
  "status": "draft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TLeft",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation": "specialization",
  "differential": {
    "element": [
      {
        "id": "TLeft",
        "path": "TLeft",
        "definition": "TLeft definition",
        "min": 1,
        "max": "1",
      },
      {
        "id": "TLeft.az1",
        "path": "TLeft.az1",
        "min": 0,
        "max": "1",
        "type": [
          {"code": "BackboneElement"},
        ],
      },
      {
        "id": "TLeft.az1.az2",
        "path": "TLeft.az1.az2",
        "min": 1,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "id": "TLeft.az1.az3",
        "path": "TLeft.az1.az3",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
