// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r6/fhir_r6.dart';

final structureMapStep9 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "url": "http://hl7.org/fhir/StructureMap/tutorial9",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-9",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-9",
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
          "name": "i",
          "source": [
            {
              "context": "src",
              "element": "i",
              "variable": "i",
              "condition": "src.m<2",
            }
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "j",
              "transform": "copy",
              "parameter": [
                {"valueId": "i"},
              ],
            }
          ],
        },
        {
          "name": "i",
          "source": [
            {
              "context": "src",
              "element": "i",
              "variable": "i",
              "condition": "src.m>=2",
            }
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "k",
              "transform": "copy",
              "parameter": [
                {"valueId": "i"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
