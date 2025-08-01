// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final structureMapStep15 = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "unioncollection",
  "meta": {"lastUpdated": "2024-11-01T06:01:12.029+00:00"},
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><pre>/// url = &quot;http://hl7.org/fhir/StructureMap/unioncollection&quot;\r\n/// name = &quot;unioncollection&quot;\r\n/// title = &quot;null&quot;\r\n/// status = &quot;draft&quot;\r\n\r\nuses &quot;http://hl7.org/fhir/StructureDefinition/tutorial-left&quot; alias TLeft as source\r\nuses &quot;http://hl7.org/fhir/StructureDefinition/tutorial-right&quot; alias TRight as target\r\n\r\ngroup combine(source source : TLeft, target target : TRight) {\r\n  source.a first as a -&gt; target.c = (%source.a[0] + %source.b[0]) &quot;concatenated&quot;;\r\n}\r\n\r\n</pre></div>",
  },
  "url": "http://hl7.org/fhir/StructureMap/unioncollection",
  "name": "unioncollection",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right",
      "mode": "target",
      "alias": "TRight",
    }
  ],
  "group": [
    {
      "name": "combine",
      "typeMode": "none",
      "input": [
        {"name": "source", "type": "TLeft", "mode": "source"},
        {"name": "target", "type": "TRight", "mode": "target"},
      ],
      "rule": [
        {
          "name": "concatenated",
          "source": [
            {
              "context": "source",
              "element": "a",
              "listMode": "first",
              "variable": "a",
            }
          ],
          "target": [
            {
              "context": "target",
              "contextType": "variable",
              "element": "c",
              "transform": "evaluate",
              "parameter": [
                {"valueString": "%source.a[0] + %source.b[0]"},
              ],
            }
          ],
        }
      ],
    }
  ],
});
