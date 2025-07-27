// ignore_for_file: public_member_api_docs, avoid_print

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';

import 'package:ucum/ucum.dart';

class WorkerContext {
  WorkerContext({this.txClient, ResourceCache? resourceCache})
      : resourceCache = resourceCache ?? CanonicalResourceCache();
  // Fields to store resources
  final ResourceCache resourceCache;
  final UcumService ucumService = UcumService();
  final ValidatorFetcher locator = ValidatorFetcher();
  final TerminologyCache txCache = TerminologyCache('lock', null);
  final Set<String> codeSystemsUsed = {};
  final ClientLogger txLog = ClientLogger();
  bool noTerminologyServer = true;
  bool tlogging = true;
  bool isTxCaching = false;
  String? cacheId;
  final Set<String> cached = {};
  final LoggingService? logger = LoggingService(debug: true);
  final FhirToolingClient? txClient;
  Parameters? expParameters;

  Future<List<StructureDefinition>> getStructures() async {
    return resourceCache.getStructureDefinitions();
  }

  Future<List<StructureDefinition>> allStructures() async {
    return getStructures();
  }

  Future<List<String>> getResourceNames() async {
    return resourceCache.getResourceNames();
  }

  String getVersion() {
    // Return a placeholder version for now
    return '4.0.1'; // Replace with dynamic version if applicable
  }

  Future<StructureDefinition?> fetchTypeDefinition(String typeName) async {
    var sd = await resourceCache.getStructureDefinition(typeName);
    if (sd != null) {
      return sd;
    }
    sd = await resourceCache.getStructureDefinition(
      'http://hl7.org/fhir/StructureDefinition/$typeName',
    );
    if (sd != null) {
      return sd;
    }
    return resourceCache.getStructureDefinition(
      'http://terminology.hl7.org/StructureDefinition/$typeName',
    );
  }

  Future<T?> fetchResource<T extends CanonicalResource>({
    String? uri,
    String? version,
    CanonicalResource? canonicalForSource,
  }) async {
    if (uri == null) {
      return null;
    }
    final resource = await resourceCache.getCanonicalResource(uri, version);
    if (resource is T) {
      return resource;
    }
    return null;
  }

  Future<CodeSystem?> fetchCodeSystem(String? system) async {
    if (system == null) return null;

    if (system.contains('|')) {
      final s = system.substring(0, system.indexOf('|'));
      final v = system.substring(system.indexOf('|') + 1);
      return fetchCodeSystemWithVersion(s, v);
    }

    // Fetch from local cache
    final codeSystem = await resourceCache.getCodeSystem(system);
    if (codeSystem != null) return codeSystem;

    // Fallback: Try to locate and load the resource
    locator.findResource(this, system);
    return resourceCache.getCodeSystem(system); // Recheck after locator runs
  }

  Future<CodeSystem?> fetchCodeSystemWithVersion(
    String system,
    String version,
  ) async {
    // Attempt to fetch the CodeSystem from the local cache with the specified
    // version
    var codeSystem = await resourceCache.getCodeSystem(system, version);

    // If the CodeSystem is not found and a locator exists, try to find the
    // resource
    if (codeSystem == null) {
      locator.findResource(this, system);

      // Recheck the cache after the locator runs
      codeSystem = await resourceCache.getCodeSystem(system, version);
    }

    return codeSystem;
  }

  String formatMessage(String theMessage, List<dynamic> theMessageArguments) {
    // Include argument information in the output
    final argumentsInfo = theMessageArguments
        .asMap()
        .entries
        .map(
          (entry) =>
              // ignore: avoid_dynamic_calls
              '[${entry.key}]: (${entry.value.runtimeType}) ${entry.value}',
        )
        .join(', ');

    // Replace placeholders with the arguments
    final formattedMessage = theMessageArguments.asMap().entries.fold(
          theMessage,
          (msg, entry) =>
              msg.replaceAll('{$entry.key}', entry.value.toString()),
        );

    // Add the arguments info to the message
    return '$formattedMessage\nArguments: $argumentsInfo';
  }

  String formatMessagePlural(
    int pl,
    String theMessage,
    List<dynamic> theMessageArguments,
  ) {
    final message = formatMessage(theMessage, theMessageArguments);
    return '$message (plural count: $pl)';
  }

  String getOverrideVersionNs() {
    return 'http://hl7.org/fhir';
  }

  // Utility methods for loading resources
  void loadStructureDefinition(StructureDefinition sd) {
    if (sd.name.valueString != null && sd.url?.valueString != null) {
      resourceCache.saveCanonicalResource(sd);
    }
  }

  void loadStructureDefinitions(List<StructureDefinition> sds) {
    sds.forEach(loadStructureDefinition);
  }

  Future<void> loadResource(CanonicalResource resource) async {
    final uri =
        resource.id?.valueString ?? resource.meta?.versionId?.valueString;
    if (uri != null) {
      await resourceCache.saveCanonicalResource(resource);
    }
  }

  bool laterVersion(String newVersion, String oldVersion) {
    final trimmedNewVersion = newVersion.trim();
    final trimmedOldVersion = oldVersion.trim();

    if (_isNumeric(trimmedNewVersion) && _isNumeric(trimmedOldVersion)) {
      return double.parse(trimmedNewVersion) > double.parse(trimmedOldVersion);
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '.')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\.');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '-')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\-');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '_')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\_');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, ':')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\:');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, ' ')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\s');
    } else {
      return trimmedNewVersion.compareTo(trimmedOldVersion) > 0;
    }
  }

  bool hasDelimiter(String s1, String s2, String delimiter) {
    return s1.contains(delimiter) &&
        s2.contains(delimiter) &&
        s1.split(delimiter).length == s2.split(delimiter).length;
  }

  bool laterDelimitedVersion(
    String newVersion,
    String oldVersion,
    String delimiter,
  ) {
    final newParts = newVersion.split(RegExp(delimiter));
    final oldParts = oldVersion.split(RegExp(delimiter));
    for (var i = 0; i < newParts.length; i++) {
      if (newParts[i] != oldParts[i]) {
        return laterVersion(newParts[i], oldParts[i]);
      }
    }
    throw Exception('Delimited versions have an exact match for delimiter.');
  }

  bool _isNumeric(String s) {
    return double.tryParse(s) != null;
  }

  Future<ValidationResult> validateCode(
    ValidationOptions options,
    String? system,
    String? version,
    String code,
    String? display,
  ) async {
    final coding = Coding(
      system: system?.toFhirUri,
      version: version?.toFhirString,
      code: code.toFhirCode,
      display: display?.toFhirString,
    );
    return validateCodeWithCoding(options, coding, null);
  }

  Future<ValidationResult> validateCodeWithCoding(
    ValidationOptions options,
    Coding coding,
    ValueSet? valueSet,
  ) async {
    try {
      // Validate locally if client-side validation is enabled
      if (options.useClient) {
        final checker = ValueSetChecker(
          options: options,
          valueSet: valueSet,
          context: this,
        );

        final codeSystem = await fetchCodeSystem(coding.system?.primitiveValue);

        if (codeSystem == null) {
          return ValidationResult.error(
            message: 'Code system not found: ${coding.system}',
          );
        }
        return checker.validateCodeAgainstCodeSystem(coding, codeSystem);
      }

      // Validate with server if server-side validation is enabled
      if (options.useServer) {
        return validateCodeOnServer(options, coding, valueSet);
      }

      // If neither client nor server validation is enabled
      return ValidationResult.error(
        message: 'No validation methods (client/server) enabled.',
      );
    } catch (e) {
      // Catch and return any unexpected errors during validation
      return ValidationResult.error(
        message: 'Validation failed: $e',
      );
    }
  }

  Future<ValidationResult> validateCodeWithCodeableConcept(
    ValidationOptions options,
    CodeableConcept code,
    ValueSet vs,
  ) async {
    // Generate a cache token for validation
    final cacheToken =
        txCache.generateValidationTokenForCodeableConcept(options, code, vs);

    // Check if validation result is already cached
    final cachedResult = txCache.getValidation(cacheToken);
    if (cachedResult != null) {
      return cachedResult;
    }

    // Collect code systems used for validation
    for (final coding in code.coding ?? <Coding>[]) {
      if (coding.system?.primitiveValue != null) {
        codeSystemsUsed.add(coding.system!.primitiveValue!);
      }
    }

    // Attempt client-side validation
    if (options.useClient) {
      try {
        final checker = ValueSetChecker(
          options: options,
          valueSet: vs,
          context: this,
        );

        // Perform local validation
        final result = await checker.validateCode(code);

        // Cache and return the result
        txCache.cacheValidation(cacheToken, result, TerminologyCache.transient);
        return result;
      } catch (e) {
        if (e is NoTerminologyServiceException) {
          return ValidationResult.error(
            message: 'No Terminology Service available',
            errorClass: TerminologyServiceErrorClass.noservice,
          );
        }
      }
    }

    // If client-side validation fails and server-side validation is disabled
    if (!options.useServer) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: 'Unable to validate code without using server',
        errorClass: TerminologyServiceErrorClass.blockedByOptions,
      );
    }

    // Attempt server-side validation
    if (noTerminologyServer) {
      return ValidationResult.error(
        message: 'Error validating code: running without terminology services',
        errorClass: TerminologyServiceErrorClass.noservice,
      );
    }

    tlog(
      'Validating ${txCache.summaryForCodeableConcept(code)} for '
      '${txCache.summaryForValueSet(vs)}',
    );

    try {
      // Prepare parameters for server validation
      final params = Parameters(
        parameter: [
          ParametersParameter(
            name: 'codeableConcept'.toFhirString,
            valueX: code,
          ),
        ],
      );

      // Set terminology options
      setTerminologyOptions(options, params);

      // Perform server validation
      final result = validateOnServer(vs, params, options);

      // Cache and return the result
      txCache.cacheValidation(cacheToken, result, TerminologyCache.permanent);
      return result;
    } catch (e) {
      return ValidationResult.error(
        message: e.toString(),
      )..txLink = txLog.getLastId();
    }
  }

  void tlog(String msg) {
    if (tlogging) {
      logger?.logDebugMessage(LogCategory.tx, msg);
    }
  }

  /// Validates a ValueSet on a server using the given parameters and options.
  ValidationResult validateOnServer(
    ValueSet? vs,
    Parameters pin,
    ValidationOptions options,
  ) {
    var cache = false;

    if (vs != null) {
      for (final inc in vs.compose?.include ?? <ValueSetInclude>[]) {
        if (inc.system?.primitiveValue != null) {
          codeSystemsUsed.add(inc.system!.primitiveValue!);
        }
      }
      for (final exc in vs.compose?.exclude ?? <ValueSetInclude>[]) {
        if (exc.system?.primitiveValue != null) {
          codeSystemsUsed.add(exc.system!.primitiveValue!);
        }
      }
    }

    if (vs != null) {
      if (isTxCaching &&
          cacheId != null &&
          vs.url != null &&
          cached
              .contains('${vs.url!.valueString}|${vs.version?.valueString}')) {
        pin.parameter?.add(
          ParametersParameter(
            name: 'url'.toFhirString,
            valueX: FhirUri(
              '${vs.url!.valueString}'
              '${vs.version != null ? '|${vs.version!.valueString}' : ''}',
            ),
          ),
        );
      } else if (options.vsAsUrl) {
        pin.parameter?.add(
          ParametersParameter(
            name: 'url'.toFhirString,
            valueX: vs.url?.primitiveValue == null
                ? null
                : FhirString(vs.url!.primitiveValue),
          ),
        );
      } else {
        pin.parameter?.add(
          ParametersParameter(
            name: 'valueSet'.toFhirString,
            resource: vs,
          ),
        );
        if (vs.url != null) {
          cached.add('${vs.url!.valueString}|${vs.version?.valueString}');
        }
      }
      cache = true;
      addDependentResources(pin, vs);
    }

    if (cache) {
      pin.parameter?.add(
        ParametersParameter(
          name: 'cache-id'.toFhirString,
          valueX: FhirString(cacheId),
        ),
      );
    }

    for (final pp in pin.parameter ?? <ParametersParameter>[]) {
      if (pp.name.primitiveValue == 'profile') {
        throw ArgumentError(
          formatMessage('CAN_ONLY_SPECIFY_PROFILE_IN_THE_CONTEXT', []),
        );
      }
    }

    if (expParameters == null) {
      throw ArgumentError(
        formatMessage('NO_EXPANSIONPROFILE_PROVIDED', []),
      );
    }

    pin.parameter?.add(
      ParametersParameter(
        name: 'profile'.toFhirString,
        resource: expParameters,
      ),
    );

    txLog.clearLastId();

    if (txClient == null) {
      throw ArgumentError(
        formatMessage(
          // ignore: lines_longer_than_80_chars
          'ATTEMPT_TO_USE_TERMINOLOGY_SERVER_WHEN_NO_TERMINOLOGY_SERVER_IS_AVAILABLE',
          [],
        ),
      );
    }

    return ValidationResult.error(message: 'Not yet Implemented');
    // TODO(Dokotela): Implement actual server validation
    // Parameters pOut;
    // if (vs == null) {
    //   pOut = txClient!.validateCS(pin);
    // } else {
    //   pOut = txClient!.validateVS(pin);
    // }

    // return processValidationResult(pOut);
  }

  Future<(bool, Parameters)> addDependentResources(
    Parameters oldPin,
    ValueSet vs,
  ) async {
    var cache = false;
    var pin = oldPin;
    for (final inc in vs.compose?.include ?? <ValueSetInclude>[]) {
      final tempCachePin = await addDependentResourcesForComponent(pin, inc);
      cache = tempCachePin.$1 || cache;
      pin = tempCachePin.$2;
    }
    for (final inc in vs.compose?.exclude ?? <ValueSetInclude>[]) {
      final tempCachePin = await addDependentResourcesForComponent(pin, inc);
      cache = tempCachePin.$1 || cache;
      pin = tempCachePin.$2;
    }
    return (cache, pin);
  }

  Future<(bool, Parameters)> addDependentResourcesForComponent(
    Parameters oldPin,
    ValueSetInclude inc,
  ) async {
    var cache = false;
    var pin = oldPin;

    for (final canonical in inc.valueSet ?? <FhirCanonical>[]) {
      final vs = await fetchResource<ValueSet>(uri: canonical.primitiveValue);
      if (vs != null) {
        pin = pin.copyWith(
          parameter: [
            ...pin.parameter ?? [],
            ParametersParameter(
              name: 'tx-resource'.toFhirString,
              resource: vs,
            ),
          ],
        );
        if (isTxCaching && cacheId == null ||
            !cached.contains(vs.url?.primitiveValue)) {
          cached.add(vs.url!.primitiveValue!);
          cache = true;
        }
        await addDependentResources(pin, vs);
      }
    }

    final cs = await fetchResource<CodeSystem>(uri: inc.system?.primitiveValue);
    if (cs != null) {
      pin = pin.copyWith(
        parameter: [
          ...pin.parameter ?? [],
          ParametersParameter(
            name: 'tx-resource'.toFhirString,
            resource: cs,
          ),
        ],
      );
      if (isTxCaching && cacheId == null ||
          !cached.contains(cs.url?.primitiveValue)) {
        cached.add(cs.url!.primitiveValue!);
        cache = true;
      }
      // TODO(Dokotela): handle supplements
    }
    return (cache, pin);
  }

  ValidationResult processValidationResult(Parameters pOut) {
    var ok = false;
    var message = 'No Message returned';
    String? display;
    String? system;
    String? code;
    var errorClass = TerminologyServiceErrorClass.unknown;

    for (final parameter in pOut.parameter ?? <ParametersParameter>[]) {
      if (parameter.valueX != null) {
        final name = parameter.name;
        final value = parameter.valueX;
        if (name.valueString == 'result' && value is FhirBoolean) {
          ok = value.valueBoolean ?? false;
        } else if (name.valueString == 'message' && value is FhirString) {
          message = value.valueString ?? 'No Message returned';
        } else if (name.valueString == 'display' && value is FhirString) {
          display = value.valueString;
        } else if (name.valueString == 'system' && value is FhirString) {
          system = value.valueString;
        } else if (name.valueString == 'code' && value is FhirString) {
          code = value.valueString;
        } else if (name.valueString == 'cause' && value is FhirString) {
          try {
            final issueType = value.valueString ?? '';
            switch (issueType) {
              case 'unknown':
                errorClass = TerminologyServiceErrorClass.unknown;
              case 'not_found':
                errorClass = TerminologyServiceErrorClass.codeSystemUnsupported;
              case 'code_invalid':
                errorClass = TerminologyServiceErrorClass.valueSetUnsupported;
              default:
                errorClass = TerminologyServiceErrorClass.unknown;
            }
          } catch (e) {
            // Handle exceptions gracefully
          }
        }
      }
    }

    if (!ok) {
      return ValidationResult(
        severity: IssueSeverity.error,
        message: '$message (from ${txClient?.getAddress()})',
        errorClass: errorClass,
        txLink: txLog.getLastId(),
      );
    } else if (message != 'No Message returned') {
      if (code == null) {
        throw ArgumentError('Code is required when message is present');
      }
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: '$message (from ${txClient?.getAddress()})',
        system: system,
        definition: CodeSystemConcept(
          display: display?.toFhirString,
          code: code.toFhirCode,
        ),
        txLink: txLog.getLastId(),
      );
    } else if (display != null) {
      if (code == null) {
        throw ArgumentError('Code is required when display is present');
      }
      return ValidationResult(
        system: system,
        definition: CodeSystemConcept(
          display: display.toFhirString,
          code: code.toFhirCode,
        ),
        txLink: txLog.getLastId(),
      );
    } else {
      if (code == null) {
        throw ArgumentError('Code is required when display is present');
      }
      return ValidationResult(
        system: system,
        definition: CodeSystemConcept(code: code.toFhirCode),
        txLink: txLog.getLastId(),
      );
    }
  }

  Parameters setTerminologyOptions(ValidationOptions options, Parameters pIn) {
    return pIn.copyWith(
      parameter: [
        ...(pIn.parameter ?? []),
        if (options.hasLanguages())
          ParametersParameter(
            name: 'displayLanguage'.toFhirString,
            valueX: options.getLanguages().toString().toFhirString,
          ),
        if (options.membershipOnly)
          ParametersParameter(
            name: 'valueset-membership-only'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
        if (options.displayWarningMode)
          ParametersParameter(
            name: 'lenient-display-validation'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
        if (options.versionFlexible)
          ParametersParameter(
            name: 'default-to-latest-version'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
      ],
    );
  }

  ValidationResult validateCodeOnServer(
    ValidationOptions options,
    Coding coding,
    ValueSet? valueSet,
  ) {
    // Prepare parameters for server-side validation
    // final params = Parameters(
    //   parameter: [
    //     ParametersParameter(name: 'coding'.toFhirString, valueX: coding),
    //     if (options.guessSystem)
    //       ParametersParameter(
    //         name: 'inferSystem'.toFhirString,
    //         valueX: true.toFhirBoolean,
    //       ),
    //     if (valueSet != null)
    //       ParametersParameter(
    //         name: 'valueSet'.toFhirString,
    //         resource: valueSet,
    //       ),
    //   ],
    // );

    try {
      // Simulate sending request to the terminology server
      // TODO(Dokotela): Implement actual server validation
      // final response = _sendValidationRequestToServer(params);
      // return processValidationResponse(response);
      throw Exception('Not yet implemented');
    } catch (e) {
      return ValidationResult.error(
        message: 'Server validation failed: $e',
      );
    }
  }

  // Future<Map<String, dynamic>> _sendValidationRequestToServer(
  //   Parameters params,
  // ) async {
  //   // Mock response for now; integrate with an actual server later
  //   try {
  //     return {'result': true, 'message': 'Code is valid'};
  //   } catch (e) {
  //     throw Exception('Failed to send validation request: $e');
  //   }
  // }

  ValidationResult processValidationResponse(Map<String, dynamic> response) {
    if (response['result'] == true) {
      return ValidationResult.success(message: response['message'] as String?);
    } else {
      return ValidationResult.error(
        message: response['message'] as String? ??
            'Unknown error during server validation.',
      );
    }
  }
}
