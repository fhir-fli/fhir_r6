// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep6a = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step6a",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step6a",
  "name": "tutorial-step6a",
  "title": "Tutorial Step 6a",
  "status": "draft",
  "description": "Tutorial Step 6a",
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
          "name": "rule_a23a",
          "source": [
            {"context": "src", "element": "a23", "variable": "a"},
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
        }
      ],
    }
  ],
});
