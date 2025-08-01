// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep6b = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step6b",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step6b",
  "name": "tutorial-step6b",
  "title": "Tutorial Step 6b",
  "status": "draft",
  "description": "Tutorial Step 6b",
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
          "name": "rule_a23b",
          "source": [
            {
              "context": "src",
              "element": "a23",
              "listMode": "only_one",
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
          "documentation": "leave error to lower layer; less informative",
        }
      ],
    }
  ],
});
