/// FHIR R6 binding for the model-independent [`cql`](package:cql/cql.dart)
/// engine.
///
/// Re-exports `cql` so a consumer needs only this single import to both run
/// CQL and supply FHIR R6 data:
///
/// ```dart
/// import 'package:fhir_r6_cql/fhir_r6_cql.dart';
/// final result = await library.execute(context, const R6ModelResolver());
/// ```
library;

export 'package:cql/cql.dart';

export 'src/r6_model_resolver.dart';
export 'src/r6_terminology_provider.dart';
