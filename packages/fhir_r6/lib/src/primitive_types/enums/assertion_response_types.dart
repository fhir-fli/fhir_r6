// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionResponseTypes
enum AssertionResponseTypesEnum {
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
      case AssertionResponseTypesEnum.continue_:
        return 'continue';
      case AssertionResponseTypesEnum.switchingProtocols:
        return 'switchingProtocols';
      case AssertionResponseTypesEnum.okay:
        return 'okay';
      case AssertionResponseTypesEnum.created:
        return 'created';
      case AssertionResponseTypesEnum.accepted:
        return 'accepted';
      case AssertionResponseTypesEnum.nonAuthoritativeInformation:
        return 'nonAuthoritativeInformation';
      case AssertionResponseTypesEnum.noContent:
        return 'noContent';
      case AssertionResponseTypesEnum.resetContent:
        return 'resetContent';
      case AssertionResponseTypesEnum.partialContent:
        return 'partialContent';
      case AssertionResponseTypesEnum.multipleChoices:
        return 'multipleChoices';
      case AssertionResponseTypesEnum.movedPermanently:
        return 'movedPermanently';
      case AssertionResponseTypesEnum.found:
        return 'found';
      case AssertionResponseTypesEnum.seeOther:
        return 'seeOther';
      case AssertionResponseTypesEnum.notModified:
        return 'notModified';
      case AssertionResponseTypesEnum.useProxy:
        return 'useProxy';
      case AssertionResponseTypesEnum.temporaryRedirect:
        return 'temporaryRedirect';
      case AssertionResponseTypesEnum.permanentRedirect:
        return 'permanentRedirect';
      case AssertionResponseTypesEnum.badRequest:
        return 'badRequest';
      case AssertionResponseTypesEnum.unauthorized:
        return 'unauthorized';
      case AssertionResponseTypesEnum.paymentRequired:
        return 'paymentRequired';
      case AssertionResponseTypesEnum.forbidden:
        return 'forbidden';
      case AssertionResponseTypesEnum.notFound:
        return 'notFound';
      case AssertionResponseTypesEnum.methodNotAllowed:
        return 'methodNotAllowed';
      case AssertionResponseTypesEnum.notAcceptable:
        return 'notAcceptable';
      case AssertionResponseTypesEnum.proxyAuthenticationRequired:
        return 'proxyAuthenticationRequired';
      case AssertionResponseTypesEnum.requestTimeout:
        return 'requestTimeout';
      case AssertionResponseTypesEnum.conflict:
        return 'conflict';
      case AssertionResponseTypesEnum.gone:
        return 'gone';
      case AssertionResponseTypesEnum.lengthRequired:
        return 'lengthRequired';
      case AssertionResponseTypesEnum.preconditionFailed:
        return 'preconditionFailed';
      case AssertionResponseTypesEnum.contentTooLarge:
        return 'contentTooLarge';
      case AssertionResponseTypesEnum.uriTooLong:
        return 'uriTooLong';
      case AssertionResponseTypesEnum.unsupportedMediaType:
        return 'unsupportedMediaType';
      case AssertionResponseTypesEnum.rangeNotSatisfiable:
        return 'rangeNotSatisfiable';
      case AssertionResponseTypesEnum.expectationFailed:
        return 'expectationFailed';
      case AssertionResponseTypesEnum.misdirectedRequest:
        return 'misdirectedRequest';
      case AssertionResponseTypesEnum.unprocessableContent:
        return 'unprocessableContent';
      case AssertionResponseTypesEnum.upgradeRequired:
        return 'upgradeRequired';
      case AssertionResponseTypesEnum.internalServerError:
        return 'internalServerError';
      case AssertionResponseTypesEnum.notImplemented:
        return 'notImplemented';
      case AssertionResponseTypesEnum.badGateway:
        return 'badGateway';
      case AssertionResponseTypesEnum.serviceUnavailable:
        return 'serviceUnavailable';
      case AssertionResponseTypesEnum.gatewayTimeout:
        return 'gatewayTimeout';
      case AssertionResponseTypesEnum.httpVersionNotSupported:
        return 'httpVersionNotSupported';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionResponseTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionResponseTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionResponseTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'continue':
        return AssertionResponseTypesEnum.continue_;
      case 'switchingProtocols':
        return AssertionResponseTypesEnum.switchingProtocols;
      case 'okay':
        return AssertionResponseTypesEnum.okay;
      case 'created':
        return AssertionResponseTypesEnum.created;
      case 'accepted':
        return AssertionResponseTypesEnum.accepted;
      case 'nonAuthoritativeInformation':
        return AssertionResponseTypesEnum.nonAuthoritativeInformation;
      case 'noContent':
        return AssertionResponseTypesEnum.noContent;
      case 'resetContent':
        return AssertionResponseTypesEnum.resetContent;
      case 'partialContent':
        return AssertionResponseTypesEnum.partialContent;
      case 'multipleChoices':
        return AssertionResponseTypesEnum.multipleChoices;
      case 'movedPermanently':
        return AssertionResponseTypesEnum.movedPermanently;
      case 'found':
        return AssertionResponseTypesEnum.found;
      case 'seeOther':
        return AssertionResponseTypesEnum.seeOther;
      case 'notModified':
        return AssertionResponseTypesEnum.notModified;
      case 'useProxy':
        return AssertionResponseTypesEnum.useProxy;
      case 'temporaryRedirect':
        return AssertionResponseTypesEnum.temporaryRedirect;
      case 'permanentRedirect':
        return AssertionResponseTypesEnum.permanentRedirect;
      case 'badRequest':
        return AssertionResponseTypesEnum.badRequest;
      case 'unauthorized':
        return AssertionResponseTypesEnum.unauthorized;
      case 'paymentRequired':
        return AssertionResponseTypesEnum.paymentRequired;
      case 'forbidden':
        return AssertionResponseTypesEnum.forbidden;
      case 'notFound':
        return AssertionResponseTypesEnum.notFound;
      case 'methodNotAllowed':
        return AssertionResponseTypesEnum.methodNotAllowed;
      case 'notAcceptable':
        return AssertionResponseTypesEnum.notAcceptable;
      case 'proxyAuthenticationRequired':
        return AssertionResponseTypesEnum.proxyAuthenticationRequired;
      case 'requestTimeout':
        return AssertionResponseTypesEnum.requestTimeout;
      case 'conflict':
        return AssertionResponseTypesEnum.conflict;
      case 'gone':
        return AssertionResponseTypesEnum.gone;
      case 'lengthRequired':
        return AssertionResponseTypesEnum.lengthRequired;
      case 'preconditionFailed':
        return AssertionResponseTypesEnum.preconditionFailed;
      case 'contentTooLarge':
        return AssertionResponseTypesEnum.contentTooLarge;
      case 'uriTooLong':
        return AssertionResponseTypesEnum.uriTooLong;
      case 'unsupportedMediaType':
        return AssertionResponseTypesEnum.unsupportedMediaType;
      case 'rangeNotSatisfiable':
        return AssertionResponseTypesEnum.rangeNotSatisfiable;
      case 'expectationFailed':
        return AssertionResponseTypesEnum.expectationFailed;
      case 'misdirectedRequest':
        return AssertionResponseTypesEnum.misdirectedRequest;
      case 'unprocessableContent':
        return AssertionResponseTypesEnum.unprocessableContent;
      case 'upgradeRequired':
        return AssertionResponseTypesEnum.upgradeRequired;
      case 'internalServerError':
        return AssertionResponseTypesEnum.internalServerError;
      case 'notImplemented':
        return AssertionResponseTypesEnum.notImplemented;
      case 'badGateway':
        return AssertionResponseTypesEnum.badGateway;
      case 'serviceUnavailable':
        return AssertionResponseTypesEnum.serviceUnavailable;
      case 'gatewayTimeout':
        return AssertionResponseTypesEnum.gatewayTimeout;
      case 'httpVersionNotSupported':
        return AssertionResponseTypesEnum.httpVersionNotSupported;
    }
    return null;
  }
}

/// The type of response code to use for assertion.
class AssertionResponseTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AssertionResponseTypes._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AssertionResponseTypes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = AssertionResponseTypesEnum.fromString(valueString);
    return AssertionResponseTypes._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [AssertionResponseTypes]
  /// from JSON.
  factory AssertionResponseTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AssertionResponseTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionResponseTypes cannot be constructed from JSON.',
      );
    }
    return AssertionResponseTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AssertionResponseTypes
  final AssertionResponseTypesEnum? valueEnum;

  /// continue_
  static const AssertionResponseTypes continue_ = AssertionResponseTypes._(
    valueString: 'continue',
    valueEnum: AssertionResponseTypesEnum.continue_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Continue',
    ),
  );

  /// switchingProtocols
  static const AssertionResponseTypes switchingProtocols =
      AssertionResponseTypes._(
    valueString: 'switchingProtocols',
    valueEnum: AssertionResponseTypesEnum.switchingProtocols,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Switching Protocols',
    ),
  );

  /// okay
  static const AssertionResponseTypes okay = AssertionResponseTypes._(
    valueString: 'okay',
    valueEnum: AssertionResponseTypesEnum.okay,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'OK',
    ),
  );

  /// created
  static const AssertionResponseTypes created = AssertionResponseTypes._(
    valueString: 'created',
    valueEnum: AssertionResponseTypesEnum.created,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Created',
    ),
  );

  /// accepted
  static const AssertionResponseTypes accepted = AssertionResponseTypes._(
    valueString: 'accepted',
    valueEnum: AssertionResponseTypesEnum.accepted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Accepted',
    ),
  );

  /// nonAuthoritativeInformation
  static const AssertionResponseTypes nonAuthoritativeInformation =
      AssertionResponseTypes._(
    valueString: 'nonAuthoritativeInformation',
    valueEnum: AssertionResponseTypesEnum.nonAuthoritativeInformation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Non-Authoritative Information',
    ),
  );

  /// noContent
  static const AssertionResponseTypes noContent = AssertionResponseTypes._(
    valueString: 'noContent',
    valueEnum: AssertionResponseTypesEnum.noContent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'No Content',
    ),
  );

  /// resetContent
  static const AssertionResponseTypes resetContent = AssertionResponseTypes._(
    valueString: 'resetContent',
    valueEnum: AssertionResponseTypesEnum.resetContent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Reset Content',
    ),
  );

  /// partialContent
  static const AssertionResponseTypes partialContent = AssertionResponseTypes._(
    valueString: 'partialContent',
    valueEnum: AssertionResponseTypesEnum.partialContent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Partial Content',
    ),
  );

  /// multipleChoices
  static const AssertionResponseTypes multipleChoices =
      AssertionResponseTypes._(
    valueString: 'multipleChoices',
    valueEnum: AssertionResponseTypesEnum.multipleChoices,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Multiple Choices',
    ),
  );

  /// movedPermanently
  static const AssertionResponseTypes movedPermanently =
      AssertionResponseTypes._(
    valueString: 'movedPermanently',
    valueEnum: AssertionResponseTypesEnum.movedPermanently,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Moved Permanently',
    ),
  );

  /// found
  static const AssertionResponseTypes found = AssertionResponseTypes._(
    valueString: 'found',
    valueEnum: AssertionResponseTypesEnum.found,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Found',
    ),
  );

  /// seeOther
  static const AssertionResponseTypes seeOther = AssertionResponseTypes._(
    valueString: 'seeOther',
    valueEnum: AssertionResponseTypesEnum.seeOther,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'See Other',
    ),
  );

  /// notModified
  static const AssertionResponseTypes notModified = AssertionResponseTypes._(
    valueString: 'notModified',
    valueEnum: AssertionResponseTypesEnum.notModified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Modified',
    ),
  );

  /// useProxy
  static const AssertionResponseTypes useProxy = AssertionResponseTypes._(
    valueString: 'useProxy',
    valueEnum: AssertionResponseTypesEnum.useProxy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Use Proxy',
    ),
  );

  /// temporaryRedirect
  static const AssertionResponseTypes temporaryRedirect =
      AssertionResponseTypes._(
    valueString: 'temporaryRedirect',
    valueEnum: AssertionResponseTypesEnum.temporaryRedirect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Temporary Redirect',
    ),
  );

  /// permanentRedirect
  static const AssertionResponseTypes permanentRedirect =
      AssertionResponseTypes._(
    valueString: 'permanentRedirect',
    valueEnum: AssertionResponseTypesEnum.permanentRedirect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Permanent Redirect',
    ),
  );

  /// badRequest
  static const AssertionResponseTypes badRequest = AssertionResponseTypes._(
    valueString: 'badRequest',
    valueEnum: AssertionResponseTypesEnum.badRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Bad Request',
    ),
  );

  /// unauthorized
  static const AssertionResponseTypes unauthorized = AssertionResponseTypes._(
    valueString: 'unauthorized',
    valueEnum: AssertionResponseTypesEnum.unauthorized,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unauthorized',
    ),
  );

  /// paymentRequired
  static const AssertionResponseTypes paymentRequired =
      AssertionResponseTypes._(
    valueString: 'paymentRequired',
    valueEnum: AssertionResponseTypesEnum.paymentRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Payment Required',
    ),
  );

  /// forbidden
  static const AssertionResponseTypes forbidden = AssertionResponseTypes._(
    valueString: 'forbidden',
    valueEnum: AssertionResponseTypesEnum.forbidden,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Forbidden',
    ),
  );

  /// notFound
  static const AssertionResponseTypes notFound = AssertionResponseTypes._(
    valueString: 'notFound',
    valueEnum: AssertionResponseTypesEnum.notFound,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Found',
    ),
  );

  /// methodNotAllowed
  static const AssertionResponseTypes methodNotAllowed =
      AssertionResponseTypes._(
    valueString: 'methodNotAllowed',
    valueEnum: AssertionResponseTypesEnum.methodNotAllowed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Method Not Allowed',
    ),
  );

  /// notAcceptable
  static const AssertionResponseTypes notAcceptable = AssertionResponseTypes._(
    valueString: 'notAcceptable',
    valueEnum: AssertionResponseTypesEnum.notAcceptable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Acceptable',
    ),
  );

  /// proxyAuthenticationRequired
  static const AssertionResponseTypes proxyAuthenticationRequired =
      AssertionResponseTypes._(
    valueString: 'proxyAuthenticationRequired',
    valueEnum: AssertionResponseTypesEnum.proxyAuthenticationRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Proxy Authentication Required',
    ),
  );

  /// requestTimeout
  static const AssertionResponseTypes requestTimeout = AssertionResponseTypes._(
    valueString: 'requestTimeout',
    valueEnum: AssertionResponseTypesEnum.requestTimeout,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Request Timeout',
    ),
  );

  /// conflict
  static const AssertionResponseTypes conflict = AssertionResponseTypes._(
    valueString: 'conflict',
    valueEnum: AssertionResponseTypesEnum.conflict,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Conflict',
    ),
  );

  /// gone
  static const AssertionResponseTypes gone = AssertionResponseTypes._(
    valueString: 'gone',
    valueEnum: AssertionResponseTypesEnum.gone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Gone',
    ),
  );

  /// lengthRequired
  static const AssertionResponseTypes lengthRequired = AssertionResponseTypes._(
    valueString: 'lengthRequired',
    valueEnum: AssertionResponseTypesEnum.lengthRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Length Required',
    ),
  );

  /// preconditionFailed
  static const AssertionResponseTypes preconditionFailed =
      AssertionResponseTypes._(
    valueString: 'preconditionFailed',
    valueEnum: AssertionResponseTypesEnum.preconditionFailed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Precondition Failed',
    ),
  );

  /// contentTooLarge
  static const AssertionResponseTypes contentTooLarge =
      AssertionResponseTypes._(
    valueString: 'contentTooLarge',
    valueEnum: AssertionResponseTypesEnum.contentTooLarge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Content Too Large',
    ),
  );

  /// uriTooLong
  static const AssertionResponseTypes uriTooLong = AssertionResponseTypes._(
    valueString: 'uriTooLong',
    valueEnum: AssertionResponseTypesEnum.uriTooLong,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'URI Too Long',
    ),
  );

  /// unsupportedMediaType
  static const AssertionResponseTypes unsupportedMediaType =
      AssertionResponseTypes._(
    valueString: 'unsupportedMediaType',
    valueEnum: AssertionResponseTypesEnum.unsupportedMediaType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unsupported Media Type',
    ),
  );

  /// rangeNotSatisfiable
  static const AssertionResponseTypes rangeNotSatisfiable =
      AssertionResponseTypes._(
    valueString: 'rangeNotSatisfiable',
    valueEnum: AssertionResponseTypesEnum.rangeNotSatisfiable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Range Not Satisfiable',
    ),
  );

  /// expectationFailed
  static const AssertionResponseTypes expectationFailed =
      AssertionResponseTypes._(
    valueString: 'expectationFailed',
    valueEnum: AssertionResponseTypesEnum.expectationFailed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Expectation Failed',
    ),
  );

  /// misdirectedRequest
  static const AssertionResponseTypes misdirectedRequest =
      AssertionResponseTypes._(
    valueString: 'misdirectedRequest',
    valueEnum: AssertionResponseTypesEnum.misdirectedRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Misdirected Request',
    ),
  );

  /// unprocessableContent
  static const AssertionResponseTypes unprocessableContent =
      AssertionResponseTypes._(
    valueString: 'unprocessableContent',
    valueEnum: AssertionResponseTypesEnum.unprocessableContent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unprocessable Content',
    ),
  );

  /// upgradeRequired
  static const AssertionResponseTypes upgradeRequired =
      AssertionResponseTypes._(
    valueString: 'upgradeRequired',
    valueEnum: AssertionResponseTypesEnum.upgradeRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Upgrade Required',
    ),
  );

  /// internalServerError
  static const AssertionResponseTypes internalServerError =
      AssertionResponseTypes._(
    valueString: 'internalServerError',
    valueEnum: AssertionResponseTypesEnum.internalServerError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Internal Server Error',
    ),
  );

  /// notImplemented
  static const AssertionResponseTypes notImplemented = AssertionResponseTypes._(
    valueString: 'notImplemented',
    valueEnum: AssertionResponseTypesEnum.notImplemented,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Implemented',
    ),
  );

  /// badGateway
  static const AssertionResponseTypes badGateway = AssertionResponseTypes._(
    valueString: 'badGateway',
    valueEnum: AssertionResponseTypesEnum.badGateway,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Bad Gateway',
    ),
  );

  /// serviceUnavailable
  static const AssertionResponseTypes serviceUnavailable =
      AssertionResponseTypes._(
    valueString: 'serviceUnavailable',
    valueEnum: AssertionResponseTypesEnum.serviceUnavailable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Service Unavailable',
    ),
  );

  /// gatewayTimeout
  static const AssertionResponseTypes gatewayTimeout = AssertionResponseTypes._(
    valueString: 'gatewayTimeout',
    valueEnum: AssertionResponseTypesEnum.gatewayTimeout,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Gateway Timeout',
    ),
  );

  /// httpVersionNotSupported
  static const AssertionResponseTypes httpVersionNotSupported =
      AssertionResponseTypes._(
    valueString: 'httpVersionNotSupported',
    valueEnum: AssertionResponseTypesEnum.httpVersionNotSupported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-response-code-types',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HTTP Version Not Supported',
    ),
  );

  /// List of all enum-like values
  static final List<AssertionResponseTypes> values = [
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
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(
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

  @override
  AssertionResponseTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AssertionResponseTypesCopyWithImpl<AssertionResponseTypes> get copyWith =>
      AssertionResponseTypesCopyWithImpl<AssertionResponseTypes>(
        this,
        (v) => v as AssertionResponseTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AssertionResponseTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AssertionResponseTypesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      AssertionResponseTypes(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
