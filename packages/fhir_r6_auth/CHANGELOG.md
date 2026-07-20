# fhir_r6_auth

## [0.7.0]

- Family release train: cores and companions released in lockstep at 0.7.0
- README: SMART App Launch link now https
- Tests: replaced a statistically unsound PKCE repeated-pattern test (CI flake)
- fhir_r6 ^0.7.0

## [0.6.0]

- flutter_appauth ^12.0.0 + flutter_web_auth_2 ^5.0.0 (verified live against the Epic sandbox: standalone patient+clinician on web, EHR launch on web, standalone on Linux desktop)
- Fixed desktop (Linux/Windows) sign-in being cancelled when the app window regained focus mid-login: the plugin's app-resume cleanup force-closed its local callback server; the authenticator now invokes the desktop platform implementation directly
- Security: jose bumped to ^0.3.5+2 (GHSA-vm9r-h74p-hg97 / CVE-2026-34240, JWS signature-verification bypass)
- Removed the unused dart_jsonwebtoken dependency
- Family lockstep 0.6.0; runnable example added; README rewritten and verified against the API (login/refreshToken); package-local lint relaxations removed, analyzer clean

## [0.5.1]

- Improved documentation and README files

## [0.5.0]

* Unified versioning across all fhir_r6 packages
* Updated dependencies
* Initial publication to pub.dev
