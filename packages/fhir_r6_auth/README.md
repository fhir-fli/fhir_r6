# fhir_r6_auth

[![pub package](https://img.shields.io/pub/v/fhir_r6_auth.svg)](https://pub.dev/packages/fhir_r6_auth)
[![License: BSD-3-Clause](https://img.shields.io/badge/license-BSD--3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

SMART on FHIR sign-in for Flutter apps that use FHIR R6
([fhir_r6](https://pub.dev/packages/fhir_r6)).

This package re-exports [fhir_auth](https://pub.dev/packages/fhir_auth),
which serves every FHIR version: nothing in it depends on the R6 model.
Depend on it to keep your FHIR packages in one family; its classes and
usage are fhir_auth's, documented in
[fhir_auth's README](https://pub.dev/packages/fhir_auth).

For plain Dart (a web page without Flutter, a server, a command-line tool),
use [fhir_auth_core](https://pub.dev/packages/fhir_auth_core).

## Installation

```yaml
dependencies:
  fhir_r6_auth: ^0.15.0
```

```dart
import 'package:fhir_r6_auth/fhir_r6_auth.dart';
```

## License

BSD-3-Clause; see [LICENSE](LICENSE).
