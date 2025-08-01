// ignore_for_file: prefer_single_quotes, require_trailing_commas, lines_longer_than_80_chars, avoid_escaping_inner_quotes

import 'package:fhir_r5/fhir_r5.dart';

final observationCategoryValueSet = ValueSet.fromJson({
  "resourceType": "ValueSet",
  "id": "observation-category",
  "meta": {
    "lastUpdated": "2020-02-24T12:41:39.109+11:00",
    "profile": ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n      <h2>Observation Category Codes</h2>\n      <div>\n        <p>Observation Category codes.</p>\n\n      </div>\n      <p>This value set includes codes from the following code systems:</p>\n      <ul>\n        <li>Include all codes defined in \n          <a href=\"codesystem-observation-category.html\">\n            <code>http://terminology.hl7.org/CodeSystem/observation-category</code>\n          </a>\n        </li>\n      </ul>\n    </div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode": "oo"
    },
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode": "draft"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger": 1
    }
  ],
  "url": "http://terminology.hl7.org/ValueSet/observation-category",
  "identifier": [
    {
      "system": "urn:ietf:rfc:3986",
      "value": "urn:oid:2.16.840.1.113883.4.642.3.403"
    }
  ],
  "version": "4.1.0",
  "name": "ObservationCategoryCodes",
  "title": "Observation Category Codes",
  "status": "draft",
  "experimental": false,
  "date": "2020-02-24T12:41:39+11:00",
  "publisher": "FHIR Project team",
  "contact": [
    {
      "telecom": [
        {"system": "url", "value": "http://hl7.org/fhir"}
      ]
    }
  ],
  "description": "Observation Category codes.",
  "compose": {
    "include": [
      {"system": "http://terminology.hl7.org/CodeSystem/observation-category"}
    ]
  }
});
