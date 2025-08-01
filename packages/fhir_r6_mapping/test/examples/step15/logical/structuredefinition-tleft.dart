// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r5/fhir_r5.dart';

final structureDefinitionTLeft15 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TLeft",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "meta": {"lastUpdated": "2016-11-21T16:11:04.708+01:00"},
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left",
  "name": "TLeft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TLeft",
  "derivation": "specialization",
  "snapshot": {
    "element": [
      {"path": "TLeft", "min": 1, "max": "1"},
      {
        "path": "TLeft.a",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "path": "TLeft.b",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "path": "TLeft.test",
        "min": 0,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
