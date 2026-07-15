# fhir_r6_cql

## [0.6.0]

- Rebuilt as a thin FHIR R6 binding over the model-independent [cql](https://pub.dev/packages/cql) engine: this package now provides the R6ModelResolver and R6TerminologyProvider implementations (and re-exports package:cql); the translator and engine themselves live in cql
- Family version lockstep: depends on cql ^0.6.0, fhir_r6 ^0.6.0, fhir_r6_path ^0.6.0, ucum ^0.9.0
- Rewrote README for the new architecture; removed stale engine-era docs

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r6 packages
* Updated dependencies
* Initial publication to pub.dev
