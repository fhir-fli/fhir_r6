// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionResponseTypes
enum AssertionResponseTypesBuilderEnum {
  /// continue
  continue_,

  /// switchingProtocols
  switchingProtocols,

  /// okay
  okay,

  /// created
  created,

  /// accepted
  accepted,

  /// nonAuthoritativeInformation
  nonAuthoritativeInformation,

  /// noContent
  noContent,

  /// resetContent
  resetContent,

  /// partialContent
  partialContent,

  /// multipleChoices
  multipleChoices,

  /// movedPermanently
  movedPermanently,

  /// found
  found,

  /// seeOther
  seeOther,

  /// notModified
  notModified,

  /// useProxy
  useProxy,

  /// temporaryRedirect
  temporaryRedirect,

  /// permanentRedirect
  permanentRedirect,

  /// badRequest
  badRequest,

  /// unauthorized
  unauthorized,

  /// paymentRequired
  paymentRequired,

  /// forbidden
  forbidden,

  /// notFound
  notFound,

  /// methodNotAllowed
  methodNotAllowed,

  /// notAcceptable
  notAcceptable,

  /// proxyAuthenticationRequired
  proxyAuthenticationRequired,

  /// requestTimeout
  requestTimeout,

  /// conflict
  conflict,

  /// gone
  gone,

  /// lengthRequired
  lengthRequired,

  /// preconditionFailed
  preconditionFailed,

  /// contentTooLarge
  contentTooLarge,

  /// uriTooLong
  uriTooLong,

  /// unsupportedMediaType
  unsupportedMediaType,

  /// rangeNotSatisfiable
  rangeNotSatisfiable,

  /// expectationFailed
  expectationFailed,

  /// misdirectedRequest
  misdirectedRequest,

  /// unprocessableContent
  unprocessableContent,

  /// upgradeRequired
  upgradeRequired,

  /// internalServerError
  internalServerError,

  /// notImplemented
  notImplemented,

  /// badGateway
  badGateway,

  /// serviceUnavailable
  serviceUnavailable,

  /// gatewayTimeout
  gatewayTimeout,

  /// httpVersionNotSupported
  httpVersionNotSupported,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionResponseTypesBuilderEnum.continue_:
        return 'continue';
      case AssertionResponseTypesBuilderEnum.switchingProtocols:
        return 'switchingProtocols';
      case AssertionResponseTypesBuilderEnum.okay:
        return 'okay';
      case AssertionResponseTypesBuilderEnum.created:
        return 'created';
      case AssertionResponseTypesBuilderEnum.accepted:
        return 'accepted';
      case AssertionResponseTypesBuilderEnum.nonAuthoritativeInformation:
        return 'nonAuthoritativeInformation';
      case AssertionResponseTypesBuilderEnum.noContent:
        return 'noContent';
      case AssertionResponseTypesBuilderEnum.resetContent:
        return 'resetContent';
      case AssertionResponseTypesBuilderEnum.partialContent:
        return 'partialContent';
      case AssertionResponseTypesBuilderEnum.multipleChoices:
        return 'multipleChoices';
      case AssertionResponseTypesBuilderEnum.movedPermanently:
        return 'movedPermanently';
      case AssertionResponseTypesBuilderEnum.found:
        return 'found';
      case AssertionResponseTypesBuilderEnum.seeOther:
        return 'seeOther';
      case AssertionResponseTypesBuilderEnum.notModified:
        return 'notModified';
      case AssertionResponseTypesBuilderEnum.useProxy:
        return 'useProxy';
      case AssertionResponseTypesBuilderEnum.temporaryRedirect:
        return 'temporaryRedirect';
      case AssertionResponseTypesBuilderEnum.permanentRedirect:
        return 'permanentRedirect';
      case AssertionResponseTypesBuilderEnum.badRequest:
        return 'badRequest';
      case AssertionResponseTypesBuilderEnum.unauthorized:
        return 'unauthorized';
      case AssertionResponseTypesBuilderEnum.paymentRequired:
        return 'paymentRequired';
      case AssertionResponseTypesBuilderEnum.forbidden:
        return 'forbidden';
      case AssertionResponseTypesBuilderEnum.notFound:
        return 'notFound';
      case AssertionResponseTypesBuilderEnum.methodNotAllowed:
        return 'methodNotAllowed';
      case AssertionResponseTypesBuilderEnum.notAcceptable:
        return 'notAcceptable';
      case AssertionResponseTypesBuilderEnum.proxyAuthenticationRequired:
        return 'proxyAuthenticationRequired';
      case AssertionResponseTypesBuilderEnum.requestTimeout:
        return 'requestTimeout';
      case AssertionResponseTypesBuilderEnum.conflict:
        return 'conflict';
      case AssertionResponseTypesBuilderEnum.gone:
        return 'gone';
      case AssertionResponseTypesBuilderEnum.lengthRequired:
        return 'lengthRequired';
      case AssertionResponseTypesBuilderEnum.preconditionFailed:
        return 'preconditionFailed';
      case AssertionResponseTypesBuilderEnum.contentTooLarge:
        return 'contentTooLarge';
      case AssertionResponseTypesBuilderEnum.uriTooLong:
        return 'uriTooLong';
      case AssertionResponseTypesBuilderEnum.unsupportedMediaType:
        return 'unsupportedMediaType';
      case AssertionResponseTypesBuilderEnum.rangeNotSatisfiable:
        return 'rangeNotSatisfiable';
      case AssertionResponseTypesBuilderEnum.expectationFailed:
        return 'expectationFailed';
      case AssertionResponseTypesBuilderEnum.misdirectedRequest:
        return 'misdirectedRequest';
      case AssertionResponseTypesBuilderEnum.unprocessableContent:
        return 'unprocessableContent';
      case AssertionResponseTypesBuilderEnum.upgradeRequired:
        return 'upgradeRequired';
      case AssertionResponseTypesBuilderEnum.internalServerError:
        return 'internalServerError';
      case AssertionResponseTypesBuilderEnum.notImplemented:
        return 'notImplemented';
      case AssertionResponseTypesBuilderEnum.badGateway:
        return 'badGateway';
      case AssertionResponseTypesBuilderEnum.serviceUnavailable:
        return 'serviceUnavailable';
      case AssertionResponseTypesBuilderEnum.gatewayTimeout:
        return 'gatewayTimeout';
      case AssertionResponseTypesBuilderEnum.httpVersionNotSupported:
        return 'httpVersionNotSupported';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionResponseTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionResponseTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionResponseTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'continue':
        return AssertionResponseTypesBuilderEnum.continue_;
      case 'switchingProtocols':
        return AssertionResponseTypesBuilderEnum.switchingProtocols;
      case 'okay':
        return AssertionResponseTypesBuilderEnum.okay;
      case 'created':
        return AssertionResponseTypesBuilderEnum.created;
      case 'accepted':
        return AssertionResponseTypesBuilderEnum.accepted;
      case 'nonAuthoritativeInformation':
        return AssertionResponseTypesBuilderEnum.nonAuthoritativeInformation;
      case 'noContent':
        return AssertionResponseTypesBuilderEnum.noContent;
      case 'resetContent':
        return AssertionResponseTypesBuilderEnum.resetContent;
      case 'partialContent':
        return AssertionResponseTypesBuilderEnum.partialContent;
      case 'multipleChoices':
        return AssertionResponseTypesBuilderEnum.multipleChoices;
      case 'movedPermanently':
        return AssertionResponseTypesBuilderEnum.movedPermanently;
      case 'found':
        return AssertionResponseTypesBuilderEnum.found;
      case 'seeOther':
        return AssertionResponseTypesBuilderEnum.seeOther;
      case 'notModified':
        return AssertionResponseTypesBuilderEnum.notModified;
      case 'useProxy':
        return AssertionResponseTypesBuilderEnum.useProxy;
      case 'temporaryRedirect':
        return AssertionResponseTypesBuilderEnum.temporaryRedirect;
      case 'permanentRedirect':
        return AssertionResponseTypesBuilderEnum.permanentRedirect;
      case 'badRequest':
        return AssertionResponseTypesBuilderEnum.badRequest;
      case 'unauthorized':
        return AssertionResponseTypesBuilderEnum.unauthorized;
      case 'paymentRequired':
        return AssertionResponseTypesBuilderEnum.paymentRequired;
      case 'forbidden':
        return AssertionResponseTypesBuilderEnum.forbidden;
      case 'notFound':
        return AssertionResponseTypesBuilderEnum.notFound;
      case 'methodNotAllowed':
        return AssertionResponseTypesBuilderEnum.methodNotAllowed;
      case 'notAcceptable':
        return AssertionResponseTypesBuilderEnum.notAcceptable;
      case 'proxyAuthenticationRequired':
        return AssertionResponseTypesBuilderEnum.proxyAuthenticationRequired;
      case 'requestTimeout':
        return AssertionResponseTypesBuilderEnum.requestTimeout;
      case 'conflict':
        return AssertionResponseTypesBuilderEnum.conflict;
      case 'gone':
        return AssertionResponseTypesBuilderEnum.gone;
      case 'lengthRequired':
        return AssertionResponseTypesBuilderEnum.lengthRequired;
      case 'preconditionFailed':
        return AssertionResponseTypesBuilderEnum.preconditionFailed;
      case 'contentTooLarge':
        return AssertionResponseTypesBuilderEnum.contentTooLarge;
      case 'uriTooLong':
        return AssertionResponseTypesBuilderEnum.uriTooLong;
      case 'unsupportedMediaType':
        return AssertionResponseTypesBuilderEnum.unsupportedMediaType;
      case 'rangeNotSatisfiable':
        return AssertionResponseTypesBuilderEnum.rangeNotSatisfiable;
      case 'expectationFailed':
        return AssertionResponseTypesBuilderEnum.expectationFailed;
      case 'misdirectedRequest':
        return AssertionResponseTypesBuilderEnum.misdirectedRequest;
      case 'unprocessableContent':
        return AssertionResponseTypesBuilderEnum.unprocessableContent;
      case 'upgradeRequired':
        return AssertionResponseTypesBuilderEnum.upgradeRequired;
      case 'internalServerError':
        return AssertionResponseTypesBuilderEnum.internalServerError;
      case 'notImplemented':
        return AssertionResponseTypesBuilderEnum.notImplemented;
      case 'badGateway':
        return AssertionResponseTypesBuilderEnum.badGateway;
      case 'serviceUnavailable':
        return AssertionResponseTypesBuilderEnum.serviceUnavailable;
      case 'gatewayTimeout':
        return AssertionResponseTypesBuilderEnum.gatewayTimeout;
      case 'httpVersionNotSupported':
        return AssertionResponseTypesBuilderEnum.httpVersionNotSupported;
    }
    return null;
  }
}

/// The type of response code to use for assertion.
class AssertionResponseTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionResponseTypesBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AssertionResponseTypesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = AssertionResponseTypesBuilderEnum.fromString(
      valueString,
    );
    return AssertionResponseTypesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [AssertionResponseTypesBuilder]
  /// with element only
  factory AssertionResponseTypesBuilder.empty() =>
      AssertionResponseTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AssertionResponseTypesBuilder] from JSON.
  factory AssertionResponseTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionResponseTypesBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionResponseTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AssertionResponseTypesBuilder
  final AssertionResponseTypesBuilderEnum? valueEnum;

  /// continue_
  static AssertionResponseTypesBuilder continue_ =
      AssertionResponseTypesBuilder._(
    valueString: 'continue',
    valueEnum: AssertionResponseTypesBuilderEnum.continue_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Continue',
    ),
  );

  /// switchingProtocols
  static AssertionResponseTypesBuilder switchingProtocols =
      AssertionResponseTypesBuilder._(
    valueString: 'switchingProtocols',
    valueEnum: AssertionResponseTypesBuilderEnum.switchingProtocols,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Switching Protocols',
    ),
  );

  /// okay
  static AssertionResponseTypesBuilder okay = AssertionResponseTypesBuilder._(
    valueString: 'okay',
    valueEnum: AssertionResponseTypesBuilderEnum.okay,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'OK',
    ),
  );

  /// created
  static AssertionResponseTypesBuilder created =
      AssertionResponseTypesBuilder._(
    valueString: 'created',
    valueEnum: AssertionResponseTypesBuilderEnum.created,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Created',
    ),
  );

  /// accepted
  static AssertionResponseTypesBuilder accepted =
      AssertionResponseTypesBuilder._(
    valueString: 'accepted',
    valueEnum: AssertionResponseTypesBuilderEnum.accepted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Accepted',
    ),
  );

  /// nonAuthoritativeInformation
  static AssertionResponseTypesBuilder nonAuthoritativeInformation =
      AssertionResponseTypesBuilder._(
    valueString: 'nonAuthoritativeInformation',
    valueEnum: AssertionResponseTypesBuilderEnum.nonAuthoritativeInformation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Non-Authoritative Information',
    ),
  );

  /// noContent
  static AssertionResponseTypesBuilder noContent =
      AssertionResponseTypesBuilder._(
    valueString: 'noContent',
    valueEnum: AssertionResponseTypesBuilderEnum.noContent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'No Content',
    ),
  );

  /// resetContent
  static AssertionResponseTypesBuilder resetContent =
      AssertionResponseTypesBuilder._(
    valueString: 'resetContent',
    valueEnum: AssertionResponseTypesBuilderEnum.resetContent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Reset Content',
    ),
  );

  /// partialContent
  static AssertionResponseTypesBuilder partialContent =
      AssertionResponseTypesBuilder._(
    valueString: 'partialContent',
    valueEnum: AssertionResponseTypesBuilderEnum.partialContent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial Content',
    ),
  );

  /// multipleChoices
  static AssertionResponseTypesBuilder multipleChoices =
      AssertionResponseTypesBuilder._(
    valueString: 'multipleChoices',
    valueEnum: AssertionResponseTypesBuilderEnum.multipleChoices,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Multiple Choices',
    ),
  );

  /// movedPermanently
  static AssertionResponseTypesBuilder movedPermanently =
      AssertionResponseTypesBuilder._(
    valueString: 'movedPermanently',
    valueEnum: AssertionResponseTypesBuilderEnum.movedPermanently,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Moved Permanently',
    ),
  );

  /// found
  static AssertionResponseTypesBuilder found = AssertionResponseTypesBuilder._(
    valueString: 'found',
    valueEnum: AssertionResponseTypesBuilderEnum.found,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Found',
    ),
  );

  /// seeOther
  static AssertionResponseTypesBuilder seeOther =
      AssertionResponseTypesBuilder._(
    valueString: 'seeOther',
    valueEnum: AssertionResponseTypesBuilderEnum.seeOther,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'See Other',
    ),
  );

  /// notModified
  static AssertionResponseTypesBuilder notModified =
      AssertionResponseTypesBuilder._(
    valueString: 'notModified',
    valueEnum: AssertionResponseTypesBuilderEnum.notModified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Modified',
    ),
  );

  /// useProxy
  static AssertionResponseTypesBuilder useProxy =
      AssertionResponseTypesBuilder._(
    valueString: 'useProxy',
    valueEnum: AssertionResponseTypesBuilderEnum.useProxy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Use Proxy',
    ),
  );

  /// temporaryRedirect
  static AssertionResponseTypesBuilder temporaryRedirect =
      AssertionResponseTypesBuilder._(
    valueString: 'temporaryRedirect',
    valueEnum: AssertionResponseTypesBuilderEnum.temporaryRedirect,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Temporary Redirect',
    ),
  );

  /// permanentRedirect
  static AssertionResponseTypesBuilder permanentRedirect =
      AssertionResponseTypesBuilder._(
    valueString: 'permanentRedirect',
    valueEnum: AssertionResponseTypesBuilderEnum.permanentRedirect,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Permanent Redirect',
    ),
  );

  /// badRequest
  static AssertionResponseTypesBuilder badRequest =
      AssertionResponseTypesBuilder._(
    valueString: 'badRequest',
    valueEnum: AssertionResponseTypesBuilderEnum.badRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Bad Request',
    ),
  );

  /// unauthorized
  static AssertionResponseTypesBuilder unauthorized =
      AssertionResponseTypesBuilder._(
    valueString: 'unauthorized',
    valueEnum: AssertionResponseTypesBuilderEnum.unauthorized,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unauthorized',
    ),
  );

  /// paymentRequired
  static AssertionResponseTypesBuilder paymentRequired =
      AssertionResponseTypesBuilder._(
    valueString: 'paymentRequired',
    valueEnum: AssertionResponseTypesBuilderEnum.paymentRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Payment Required',
    ),
  );

  /// forbidden
  static AssertionResponseTypesBuilder forbidden =
      AssertionResponseTypesBuilder._(
    valueString: 'forbidden',
    valueEnum: AssertionResponseTypesBuilderEnum.forbidden,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Forbidden',
    ),
  );

  /// notFound
  static AssertionResponseTypesBuilder notFound =
      AssertionResponseTypesBuilder._(
    valueString: 'notFound',
    valueEnum: AssertionResponseTypesBuilderEnum.notFound,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Found',
    ),
  );

  /// methodNotAllowed
  static AssertionResponseTypesBuilder methodNotAllowed =
      AssertionResponseTypesBuilder._(
    valueString: 'methodNotAllowed',
    valueEnum: AssertionResponseTypesBuilderEnum.methodNotAllowed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Method Not Allowed',
    ),
  );

  /// notAcceptable
  static AssertionResponseTypesBuilder notAcceptable =
      AssertionResponseTypesBuilder._(
    valueString: 'notAcceptable',
    valueEnum: AssertionResponseTypesBuilderEnum.notAcceptable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Acceptable',
    ),
  );

  /// proxyAuthenticationRequired
  static AssertionResponseTypesBuilder proxyAuthenticationRequired =
      AssertionResponseTypesBuilder._(
    valueString: 'proxyAuthenticationRequired',
    valueEnum: AssertionResponseTypesBuilderEnum.proxyAuthenticationRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Proxy Authentication Required',
    ),
  );

  /// requestTimeout
  static AssertionResponseTypesBuilder requestTimeout =
      AssertionResponseTypesBuilder._(
    valueString: 'requestTimeout',
    valueEnum: AssertionResponseTypesBuilderEnum.requestTimeout,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Request Timeout',
    ),
  );

  /// conflict
  static AssertionResponseTypesBuilder conflict =
      AssertionResponseTypesBuilder._(
    valueString: 'conflict',
    valueEnum: AssertionResponseTypesBuilderEnum.conflict,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Conflict',
    ),
  );

  /// gone
  static AssertionResponseTypesBuilder gone = AssertionResponseTypesBuilder._(
    valueString: 'gone',
    valueEnum: AssertionResponseTypesBuilderEnum.gone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Gone',
    ),
  );

  /// lengthRequired
  static AssertionResponseTypesBuilder lengthRequired =
      AssertionResponseTypesBuilder._(
    valueString: 'lengthRequired',
    valueEnum: AssertionResponseTypesBuilderEnum.lengthRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Length Required',
    ),
  );

  /// preconditionFailed
  static AssertionResponseTypesBuilder preconditionFailed =
      AssertionResponseTypesBuilder._(
    valueString: 'preconditionFailed',
    valueEnum: AssertionResponseTypesBuilderEnum.preconditionFailed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Precondition Failed',
    ),
  );

  /// contentTooLarge
  static AssertionResponseTypesBuilder contentTooLarge =
      AssertionResponseTypesBuilder._(
    valueString: 'contentTooLarge',
    valueEnum: AssertionResponseTypesBuilderEnum.contentTooLarge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Content Too Large',
    ),
  );

  /// uriTooLong
  static AssertionResponseTypesBuilder uriTooLong =
      AssertionResponseTypesBuilder._(
    valueString: 'uriTooLong',
    valueEnum: AssertionResponseTypesBuilderEnum.uriTooLong,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'URI Too Long',
    ),
  );

  /// unsupportedMediaType
  static AssertionResponseTypesBuilder unsupportedMediaType =
      AssertionResponseTypesBuilder._(
    valueString: 'unsupportedMediaType',
    valueEnum: AssertionResponseTypesBuilderEnum.unsupportedMediaType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unsupported Media Type',
    ),
  );

  /// rangeNotSatisfiable
  static AssertionResponseTypesBuilder rangeNotSatisfiable =
      AssertionResponseTypesBuilder._(
    valueString: 'rangeNotSatisfiable',
    valueEnum: AssertionResponseTypesBuilderEnum.rangeNotSatisfiable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Range Not Satisfiable',
    ),
  );

  /// expectationFailed
  static AssertionResponseTypesBuilder expectationFailed =
      AssertionResponseTypesBuilder._(
    valueString: 'expectationFailed',
    valueEnum: AssertionResponseTypesBuilderEnum.expectationFailed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Expectation Failed',
    ),
  );

  /// misdirectedRequest
  static AssertionResponseTypesBuilder misdirectedRequest =
      AssertionResponseTypesBuilder._(
    valueString: 'misdirectedRequest',
    valueEnum: AssertionResponseTypesBuilderEnum.misdirectedRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Misdirected Request',
    ),
  );

  /// unprocessableContent
  static AssertionResponseTypesBuilder unprocessableContent =
      AssertionResponseTypesBuilder._(
    valueString: 'unprocessableContent',
    valueEnum: AssertionResponseTypesBuilderEnum.unprocessableContent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unprocessable Content',
    ),
  );

  /// upgradeRequired
  static AssertionResponseTypesBuilder upgradeRequired =
      AssertionResponseTypesBuilder._(
    valueString: 'upgradeRequired',
    valueEnum: AssertionResponseTypesBuilderEnum.upgradeRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Upgrade Required',
    ),
  );

  /// internalServerError
  static AssertionResponseTypesBuilder internalServerError =
      AssertionResponseTypesBuilder._(
    valueString: 'internalServerError',
    valueEnum: AssertionResponseTypesBuilderEnum.internalServerError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Internal Server Error',
    ),
  );

  /// notImplemented
  static AssertionResponseTypesBuilder notImplemented =
      AssertionResponseTypesBuilder._(
    valueString: 'notImplemented',
    valueEnum: AssertionResponseTypesBuilderEnum.notImplemented,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Implemented',
    ),
  );

  /// badGateway
  static AssertionResponseTypesBuilder badGateway =
      AssertionResponseTypesBuilder._(
    valueString: 'badGateway',
    valueEnum: AssertionResponseTypesBuilderEnum.badGateway,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Bad Gateway',
    ),
  );

  /// serviceUnavailable
  static AssertionResponseTypesBuilder serviceUnavailable =
      AssertionResponseTypesBuilder._(
    valueString: 'serviceUnavailable',
    valueEnum: AssertionResponseTypesBuilderEnum.serviceUnavailable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Service Unavailable',
    ),
  );

  /// gatewayTimeout
  static AssertionResponseTypesBuilder gatewayTimeout =
      AssertionResponseTypesBuilder._(
    valueString: 'gatewayTimeout',
    valueEnum: AssertionResponseTypesBuilderEnum.gatewayTimeout,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Gateway Timeout',
    ),
  );

  /// httpVersionNotSupported
  static AssertionResponseTypesBuilder httpVersionNotSupported =
      AssertionResponseTypesBuilder._(
    valueString: 'httpVersionNotSupported',
    valueEnum: AssertionResponseTypesBuilderEnum.httpVersionNotSupported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HTTP Version Not Supported',
    ),
  );

  /// For instances where an Element is present but not value
  static AssertionResponseTypesBuilder elementOnly =
      AssertionResponseTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AssertionResponseTypesBuilder> values = [
    continue_,
    switchingProtocols,
    okay,
    created,
    accepted,
    nonAuthoritativeInformation,
    noContent,
    resetContent,
    partialContent,
    multipleChoices,
    movedPermanently,
    found,
    seeOther,
    notModified,
    useProxy,
    temporaryRedirect,
    permanentRedirect,
    badRequest,
    unauthorized,
    paymentRequired,
    forbidden,
    notFound,
    methodNotAllowed,
    notAcceptable,
    proxyAuthenticationRequired,
    requestTimeout,
    conflict,
    gone,
    lengthRequired,
    preconditionFailed,
    contentTooLarge,
    uriTooLong,
    unsupportedMediaType,
    rangeNotSatisfiable,
    expectationFailed,
    misdirectedRequest,
    unprocessableContent,
    upgradeRequired,
    internalServerError,
    notImplemented,
    badGateway,
    serviceUnavailable,
    gatewayTimeout,
    httpVersionNotSupported,
  ];

  /// Returns the enum value with an element attached
  AssertionResponseTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AssertionResponseTypesBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
