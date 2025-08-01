// ignore_for_file: prefer_single_quotes, require_trailing_commas, lines_longer_than_80_chars, avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final conditionCategoryCodeSystem = CodeSystem.fromJson({
  "resourceType": "CodeSystem",
  "id": "condition-category",
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: CodeSystem condition-category</b></p><a name=\"condition-category\"> </a><a name=\"hccondition-category\"> </a><a name=\"condition-category-en-US\"> </a><p><b>Properties</b></p><p><b>This code system defines the following properties for its concepts</b></p><table class=\"grid\"><tr><td><b>Name</b></td><td><b>Code</b></td><td><b>URI</b></td><td><b>Type</b></td><td><b>Description</b></td></tr><tr><td>status</td><td>status</td><td>http://hl7.org/fhir/concept-properties#status</td><td>code</td><td>A property that indicates the status of the concept. One of active, experimental, deprecated, retired</td></tr></table><p><b>Concepts</b></p><p>This case-sensitive code system <code>http://hl7.org/fhir/us/core/CodeSystem/condition-category</code> defines the following codes:</p><table class=\"codes\"><tr><td style=\"white-space:nowrap\"><b>Code</b></td><td><b>Display</b></td><td><b>Definition</b></td><td><b>status</b></td></tr><tr style=\"background-color: #ffeeee\"><td style=\"white-space:nowrap\">problem<a name=\"condition-category-problem\"> </a></td><td>Problem</td><td>The patients problems as identified by the provider(s). Items on the provider's problem list</td><td>deprecated</td></tr><tr><td style=\"white-space:nowrap\">health-concern<a name=\"condition-category-health-concern\"> </a></td><td>Health Concern</td><td>Additional health concerns from other stakeholders</td><td/></tr></table></div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "cgp"
    },
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode": "trial-use",
      "_valueCode": {
        "extension": [
          {
            "url":
                "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical":
                "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core"
          }
        ]
      }
    }
  ],
  "url": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.40.2.16.2"
    }
  ],
  "version": "8.0.0",
  "name": "USCoreConditionCategoryExtensionCodes",
  "title": "US Core Condition Category Extension Codes",
  "status": "active",
  "experimental": false,
  "date": "2022-09-29T14:59:24-07:00",
  "publisher": "HL7 International / Cross-Group Projects",
  "contact": [
    {
      "name": "HL7 International / Cross-Group Projects",
      "telecom": [
        {"system": "url", "value": "http://www.hl7.org/Special/committees/cgp"},
        {"system": "email", "value": "cgp@lists.HL7.org"}
      ]
    }
  ],
  "description":
      "Set of codes that are needed for implementation of the US-Core Condition Profile. These codes are used as extensions to the FHIR and US Core value sets.",
  "jurisdiction": [
    {
      "coding": [
        {"system": "urn:iso:std:iso:3166", "code": "US"}
      ]
    }
  ],
  "copyright":
      "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "caseSensitive": true,
  "content": "complete",
  "property": [
    {
      "code": "status",
      "uri": "http://hl7.org/fhir/concept-properties#status",
      "description":
          "A property that indicates the status of the concept. One of active, experimental, deprecated, retired",
      "type": "code"
    }
  ],
  "concept": [
    {
      "extension": [
        {
          "url":
              "http://hl7.org/fhir/StructureDefinition/codesystem-replacedby",
          "valueCoding": {
            "system":
                "http://terminology.hl7.org/CodeSystem/condition-category",
            "code": "problem-list-item",
            "display": "Problem List Item"
          }
        }
      ],
      "code": "problem",
      "display": "Problem",
      "definition":
          "The patients problems as identified by the provider(s). Items on the provider's problem list",
      "property": [
        {"code": "status", "valueCode": "deprecated"}
      ]
    },
    {
      "code": "health-concern",
      "display": "Health Concern",
      "definition": "Additional health concerns from other stakeholders"
    }
  ]
});
