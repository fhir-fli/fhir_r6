// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep6c = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step6c",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step6c",
  "name": "tutorial-step6c",
  "title": "Tutorial Step 6c",
  "status": "draft",
  "description": "Tutorial Step 6c",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-6",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-6",
      "mode": "target",
      "alias": "TRight",
    }
  ],
  "group": [
    {
      "name": "tutorial",
      "typeMode": "none",
      "input": [
        {"name": "src", "type": "TLeft", "mode": "source"},
        {"name": "tgt", "type": "TRight", "mode": "target"},
      ],
      "rule": [
        {
          "name": "rule_a23c_1",
          "source": [
            {
              "context": "src",
              "element": "a23",
              "listMode": "first",
              "variable": "a",
            }
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "a23",
              "transform": "copy",
              "parameter": [
                {"valueId": "a"},
              ],
            }
          ],
          "documentation": "only use the first item in the list",
        }
      ],
    }
  ],
});
