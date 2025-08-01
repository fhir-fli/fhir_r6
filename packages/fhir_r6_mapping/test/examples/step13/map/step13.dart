// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep13 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "tutorial",
  "url": "http://hl7.org/fhir/StructureMap/tutorial-step13",
  "name": "tutorial",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-13",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right-13",
      "mode": "target",
      "alias": "TRight",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/Basic",
      "mode": "target",
      "alias": "Basic",
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
          "name": "rule_ptr",
          "source": [
            {"context": "src", "element": "f1", "variable": "s_f1"},
          ],
          "target": [
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "f2",
              "variable": "rr",
              "transform": "create",
              "parameter": [
                {"valueString": "Basic"},
              ],
            },
            {
              "context": "tgt",
              "contextType": "variable",
              "element": "ptr",
              "transform": "reference",
              "parameter": [
                {"valueId": "rr"},
              ],
            }
          ],
          "rule": [
            {
              "name": "rule_s_f1",
              "source": [
                {"context": "s_f1"},
              ],
              "target": [
                {
                  "context": "rr",
                  "contextType": "variable",
                  "element": "code",
                  "variable": "code",
                },
                {
                  "context": "code",
                  "contextType": "variable",
                  "element": "text",
                  "transform": "copy",
                  "parameter": [
                    {"valueId": "s_f1"},
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
