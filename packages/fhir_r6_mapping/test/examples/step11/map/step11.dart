// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep11 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step11",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-11",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-11",
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
          "name": "rule_se",
          "source": [
            {"context": "src", "element": "e", "variable": "s_e"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "e",
              "variable": "t_e",
            }
          ],
          "rule": [
            {
              "name": "rule_se_teg",
              "source": [
                {"context": "s_e"},
              ],
              "target": [
                {
                  "context": "t_e",
                  "contextType": "variable",
                  "element": "f",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "s_e"},
                  ],
                },
                {
                  "context": "t_e",
                  "contextType": "variable",
                  "element": "g",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "g1"},
                  ],
                }
              ],
            }
          ],
        },
        {
          "name": "rule_sf",
          "source": [
            {"context": "src", "element": "f", "variable": "s_f"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "e",
              "variable": "t_e",
              "listMode": ["first"],
            }
          ],
          "rule": [
            {
              "name": "rule_sf_teg",
              "source": [
                {"context": "s_f"},
              ],
              "target": [
                {
                  "context": "t_e",
                  "contextType": "variable",
                  "element": "f",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "s_f"},
                  ],
                },
                {
                  "context": "t_e",
                  "contextType": "variable",
                  "element": "g",
                  "transform": "copy",
                  "parameter": [
                    {"valueString": "g2"},
                  ],
                }
              ],
            }
          ],
        }
      ],
    }
  ],
});
