// ignore_for_file: prefer_single_quotes, require_trailing_commas, lines_longer_than_80_chars, avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final conditionClinicalCodeSystem = CodeSystem.fromJson({
  "resourceType": "CodeSystem",
  "id": "condition-clinical",
  "meta": {
    "lastUpdated": "2020-04-09T21:10:28.568+00:00",
    "profile": ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: CodeSystem condition-clinical</b></p><a name=\"condition-clinical\"> </a><a name=\"hccondition-clinical\"> </a><a name=\"condition-clinical-en-US\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2020-04-09 21:10:28+0000</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R5/shareablecodesystem.html\">Shareable CodeSystem</a></p></div><p>This case-sensitive code system <code>http://terminology.hl7.org/CodeSystem/condition-clinical</code> defines the following codes in an undefined hierarchy:</p><table class=\"codes\"><tr><td><b>Lvl</b></td><td style=\"white-space:nowrap\"><b>Code</b></td><td><b>Display</b></td><td><b>Definition</b></td></tr><tr><td>1</td><td style=\"white-space:nowrap\">active<a name=\"condition-clinical-active\"> </a></td><td>Active</td><td>The subject is currently experiencing the condition or situation, there is evidence of the condition or situation, or considered to be a significant risk.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0recurrence<a name=\"condition-clinical-recurrence\"> </a></td><td>Recurrence</td><td>The subject is experiencing a reoccurence or repeating of a previously resolved condition or situation, e.g. urinary tract infection, food insecurity.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0relapse<a name=\"condition-clinical-relapse\"> </a></td><td>Relapse</td><td>The subject is experiencing a return of a condition or situation after a period of improvement or remission, e.g. relapse of cancer, alcoholism.</td></tr><tr><td>1</td><td style=\"white-space:nowrap\">inactive<a name=\"condition-clinical-inactive\"> </a></td><td>Inactive</td><td>The subject is no longer experiencing the condition or situation and there is no longer evidence or appreciable risk of the condition or situation.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0remission<a name=\"condition-clinical-remission\"> </a></td><td>Remission</td><td>The subject is not presently experiencing the condition or situation, but there is a risk of the condition or situation returning.</td></tr><tr><td>2</td><td style=\"white-space:nowrap\">\u00a0\u00a0resolved<a name=\"condition-clinical-resolved\"> </a></td><td>Resolved</td><td>The subject is not presently experiencing the condition or situation and there is a negligible perceived risk of the condition or situation returning.</td></tr><tr><td>1</td><td style=\"white-space:nowrap\">unknown<a name=\"condition-clinical-unknown\"> </a></td><td>Unknown</td><td>The authoring/source system does not know which of the status values currently applies for this condition. Note: This concept is not to be used for &quot;other&quot; - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.</td></tr></table></div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "pc"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger": 3
    }
  ],
  "url": "http://terminology.hl7.org/CodeSystem/condition-clinical",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.1.1074"
    }
  ],
  "version": "3.0.0",
  "name": "ConditionClinicalStatusCodes",
  "title": "Condition Clinical Status Codes",
  "status": "active",
  "experimental": false,
  "date": "2024-11-17T12:23:22-07:00",
  "publisher": "Health Level Seven International",
  "contact": [
    {
      "telecom": [
        {"system": "url", "value": "http://hl7.org"},
        {"system": "email", "value": "hq@HL7.org"}
      ]
    }
  ],
  "description": "Preferred value set for Condition Clinical Status.",
  "copyright":
      "This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license.html",
  "caseSensitive": true,
  "valueSet": "http://terminology.hl7.org/ValueSet/condition-clinical",
  "content": "complete",
  "concept": [
    {
      "code": "active",
      "display": "Active",
      "definition":
          "The subject is currently experiencing the condition or situation, there is evidence of the condition or situation, or considered to be a significant risk.",
      "concept": [
        {
          "code": "recurrence",
          "display": "Recurrence",
          "definition":
              "The subject is experiencing a reoccurence or repeating of a previously resolved condition or situation, e.g. urinary tract infection, food insecurity."
        },
        {
          "code": "relapse",
          "display": "Relapse",
          "definition":
              "The subject is experiencing a return of a condition or situation after a period of improvement or remission, e.g. relapse of cancer, alcoholism."
        }
      ]
    },
    {
      "code": "inactive",
      "display": "Inactive",
      "definition":
          "The subject is no longer experiencing the condition or situation and there is no longer evidence or appreciable risk of the condition or situation.",
      "concept": [
        {
          "code": "remission",
          "display": "Remission",
          "definition":
              "The subject is not presently experiencing the condition or situation, but there is a risk of the condition or situation returning."
        },
        {
          "code": "resolved",
          "display": "Resolved",
          "definition":
              "The subject is not presently experiencing the condition or situation and there is a negligible perceived risk of the condition or situation returning."
        }
      ]
    },
    {
      "code": "unknown",
      "display": "Unknown",
      "definition":
          "The authoring/source system does not know which of the status values currently applies for this condition. Note: This concept is not to be used for \"other\" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which."
    }
  ]
});
