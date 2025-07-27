// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep1 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial-step1",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step1",
  "name": "tutorial-step1",
  "title": "Tutorial Step 1",
  "status": "draft",
  "description": "Tutorial Step 1",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-1",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-1",
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
          "name": "rule_a",
          "source": [
            {"context": "src", "element": "a", "variable": "a"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "a",
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
