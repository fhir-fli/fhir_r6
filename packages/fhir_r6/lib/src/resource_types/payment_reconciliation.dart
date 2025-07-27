import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'payment_reconciliation.g.dart';

/// [PaymentReconciliation]
/// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
class PaymentReconciliation extends DomainResource {
  /// Primary constructor for
  /// [PaymentReconciliation]

  const PaymentReconciliation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    required this.status,
    this.kind,
    this.period,
    required this.created,
    this.enterer,
    this.issuerType,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.disposition,
    required this.date,
    this.location,
    this.method,
    this.cardBrand,
    this.accountNumber,
    this.expirationDate,
    this.processor,
    this.referenceNumber,
    this.authorization,
    this.tenderedAmount,
    this.returnedAmount,
    required this.amount,
    this.paymentIdentifier,
    this.allocation,
    this.formCode,
    this.processNote,
  }) : super(
          resourceType: R5ResourceType.PaymentReconciliation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliation.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaymentReconciliation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
      )!,
      kind: JsonParser.parseObject<CodeableConcept>(
        json,
        'kind',
        CodeableConcept.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      )!,
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
      ),
      issuerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'issuerType',
        CodeableConcept.fromJson,
      ),
      paymentIssuer: JsonParser.parseObject<Reference>(
        json,
        'paymentIssuer',
        Reference.fromJson,
      ),
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
      ),
      requestor: JsonParser.parseObject<Reference>(
        json,
        'requestor',
        Reference.fromJson,
      ),
      outcome: JsonParser.parsePrimitive<PaymentOutcome>(
        json,
        'outcome',
        PaymentOutcome.fromJson,
      ),
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      )!,
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      cardBrand: JsonParser.parsePrimitive<FhirString>(
        json,
        'cardBrand',
        FhirString.fromJson,
      ),
      accountNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'accountNumber',
        FhirString.fromJson,
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'expirationDate',
        FhirDate.fromJson,
      ),
      processor: JsonParser.parsePrimitive<FhirString>(
        json,
        'processor',
        FhirString.fromJson,
      ),
      referenceNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'referenceNumber',
        FhirString.fromJson,
      ),
      authorization: JsonParser.parsePrimitive<FhirString>(
        json,
        'authorization',
        FhirString.fromJson,
      ),
      tenderedAmount: JsonParser.parseObject<Money>(
        json,
        'tenderedAmount',
        Money.fromJson,
      ),
      returnedAmount: JsonParser.parseObject<Money>(
        json,
        'returnedAmount',
        Money.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      )!,
      paymentIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'paymentIdentifier',
        Identifier.fromJson,
      ),
      allocation: (json['allocation'] as List<dynamic>?)
          ?.map<PaymentReconciliationAllocation>(
            (v) => PaymentReconciliationAllocation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      formCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'formCode',
        CodeableConcept.fromJson,
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<PaymentReconciliationProcessNote>(
            (v) => PaymentReconciliationProcessNote.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PaymentReconciliation]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliation';

  /// [identifier]
  /// A unique identifier assigned to this payment reconciliation.
  final List<Identifier>? identifier;

  /// [type]
  /// Code to indicate the nature of the payment such as payment, adjustment.
  final CodeableConcept type;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [kind]
  /// The workflow or activity which gave rise to or during which the payment
  /// ocurred such as a kiosk, deposit on account, periodic payment etc.
  final CodeableConcept? kind;

  /// [period]
  /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  final Period? period;

  /// [created]
  /// The date when the resource was created.
  final FhirDateTime created;

  /// [enterer]
  /// Payment enterer if not the actual payment issuer.
  final Reference? enterer;

  /// [issuerType]
  /// The type of the source such as patient or insurance.
  final CodeableConcept? issuerType;

  /// [paymentIssuer]
  /// The party who generated the payment.
  final Reference? paymentIssuer;

  /// [request]
  /// Original request resource reference.
  final Reference? request;

  /// [requestor]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? requestor;

  /// [outcome]
  /// The outcome of a request for a reconciliation.
  final PaymentOutcome? outcome;

  /// [disposition]
  /// A human readable description of the status of the request for the
  /// reconciliation.
  final FhirString? disposition;

  /// [date]
  /// The date of payment as indicated on the financial instrument.
  final FhirDate date;

  /// [location]
  /// The location of the site or device for electronic transfers or physical
  /// location for cash payments.
  final Reference? location;

  /// [method]
  /// The means of payment such as check, card cash, or electronic funds
  /// transfer.
  final CodeableConcept? method;

  /// [cardBrand]
  /// The card brand such as debit, Visa, Amex etc. used if a card is the
  /// method of payment.
  final FhirString? cardBrand;

  /// [accountNumber]
  /// A portion of the account number, often the last 4 digits, used for
  /// verification not charging purposes.
  final FhirString? accountNumber;

  /// [expirationDate]
  /// The year and month (YYYY-MM) when the instrument, typically card,
  /// expires.
  final FhirDate? expirationDate;

  /// [processor]
  /// The name of the card processor, etf processor, bank for checks.
  final FhirString? processor;

  /// [referenceNumber]
  /// The check number, eft reference, car processor reference.
  final FhirString? referenceNumber;

  /// [authorization]
  /// An alphanumeric issued by the processor to confirm the successful
  /// issuance of payment.
  final FhirString? authorization;

  /// [tenderedAmount]
  /// The amount offered by the issuer, typically applies to cash when the
  /// issuer provides an amount in bank note denominations equal to or excess
  /// of the amount actually being paid.
  final Money? tenderedAmount;

  /// [returnedAmount]
  /// The amount returned by the receiver which is excess to the amount
  /// payable, often referred to as 'change'.
  final Money? returnedAmount;

  /// [amount]
  /// Total payment amount as indicated on the financial instrument.
  final Money amount;

  /// [paymentIdentifier]
  /// Issuer's unique identifier for the payment instrument.
  final Identifier? paymentIdentifier;

  /// [allocation]
  /// Distribution of the payment amount for a previously acknowledged
  /// payable.
  final List<PaymentReconciliationAllocation>? allocation;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [processNote]
  /// A note that describes or explains the processing in a human readable
  /// form.
  final List<PaymentReconciliationProcessNote>? processNote;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'status',
      status,
    );
    addField(
      'kind',
      kind,
    );
    addField(
      'period',
      period,
    );
    addField(
      'created',
      created,
    );
    addField(
      'enterer',
      enterer,
    );
    addField(
      'issuerType',
      issuerType,
    );
    addField(
      'paymentIssuer',
      paymentIssuer,
    );
    addField(
      'request',
      request,
    );
    addField(
      'requestor',
      requestor,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'disposition',
      disposition,
    );
    addField(
      'date',
      date,
    );
    addField(
      'location',
      location,
    );
    addField(
      'method',
      method,
    );
    addField(
      'cardBrand',
      cardBrand,
    );
    addField(
      'accountNumber',
      accountNumber,
    );
    addField(
      'expirationDate',
      expirationDate,
    );
    addField(
      'processor',
      processor,
    );
    addField(
      'referenceNumber',
      referenceNumber,
    );
    addField(
      'authorization',
      authorization,
    );
    addField(
      'tenderedAmount',
      tenderedAmount,
    );
    addField(
      'returnedAmount',
      returnedAmount,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'paymentIdentifier',
      paymentIdentifier,
    );
    addField(
      'allocation',
      allocation,
    );
    addField(
      'formCode',
      formCode,
    );
    addField(
      'processNote',
      processNote,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'status',
      'kind',
      'period',
      'created',
      'enterer',
      'issuerType',
      'paymentIssuer',
      'request',
      'requestor',
      'outcome',
      'disposition',
      'date',
      'location',
      'method',
      'cardBrand',
      'accountNumber',
      'expirationDate',
      'processor',
      'referenceNumber',
      'authorization',
      'tenderedAmount',
      'returnedAmount',
      'amount',
      'paymentIdentifier',
      'allocation',
      'formCode',
      'processNote',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'type':
        fields.add(type);
      case 'status':
        fields.add(status);
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'created':
        fields.add(created);
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'issuerType':
        if (issuerType != null) {
          fields.add(issuerType!);
        }
      case 'paymentIssuer':
        if (paymentIssuer != null) {
          fields.add(paymentIssuer!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'date':
        fields.add(date);
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'cardBrand':
        if (cardBrand != null) {
          fields.add(cardBrand!);
        }
      case 'accountNumber':
        if (accountNumber != null) {
          fields.add(accountNumber!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'processor':
        if (processor != null) {
          fields.add(processor!);
        }
      case 'referenceNumber':
        if (referenceNumber != null) {
          fields.add(referenceNumber!);
        }
      case 'authorization':
        if (authorization != null) {
          fields.add(authorization!);
        }
      case 'tenderedAmount':
        if (tenderedAmount != null) {
          fields.add(tenderedAmount!);
        }
      case 'returnedAmount':
        if (returnedAmount != null) {
          fields.add(returnedAmount!);
        }
      case 'amount':
        fields.add(amount);
      case 'paymentIdentifier':
        if (paymentIdentifier != null) {
          fields.add(paymentIdentifier!);
        }
      case 'allocation':
        if (allocation != null) {
          fields.addAll(allocation!);
        }
      case 'formCode':
        if (formCode != null) {
          fields.add(formCode!);
        }
      case 'processNote':
        if (processNote != null) {
          fields.addAll(processNote!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PaymentReconciliation clone() => copyWith();

  /// Copy function for [PaymentReconciliation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PaymentReconciliationCopyWith<PaymentReconciliation> get copyWith =>
      _$PaymentReconciliationCopyWithImpl<PaymentReconciliation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PaymentReconciliation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      kind,
      o.kind,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enterer,
      o.enterer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuerType,
      o.issuerType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentIssuer,
      o.paymentIssuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestor,
      o.requestor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cardBrand,
      o.cardBrand,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accountNumber,
      o.accountNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      processor,
      o.processor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceNumber,
      o.referenceNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authorization,
      o.authorization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tenderedAmount,
      o.tenderedAmount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      returnedAmount,
      o.returnedAmount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentIdentifier,
      o.paymentIdentifier,
    )) {
      return false;
    }
    if (!listEquals<PaymentReconciliationAllocation>(
      allocation,
      o.allocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      formCode,
      o.formCode,
    )) {
      return false;
    }
    if (!listEquals<PaymentReconciliationProcessNote>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    return true;
  }
}

/// [PaymentReconciliationAllocation]
/// Distribution of the payment amount for a previously acknowledged
/// payable.
class PaymentReconciliationAllocation extends BackboneElement {
  /// Primary constructor for
  /// [PaymentReconciliationAllocation]

  const PaymentReconciliationAllocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    this.target,
    TargetItemXPaymentReconciliationAllocation? targetItemX,
    FhirString? targetItemString,
    Identifier? targetItemIdentifier,
    FhirPositiveInt? targetItemPositiveInt,
    this.encounter,
    this.account,
    this.type,
    this.submitter,
    this.response,
    this.date,
    this.responsible,
    this.payee,
    this.amount,
    super.disallowExtensions,
  })  : targetItemX = targetItemX ??
            targetItemString ??
            targetItemIdentifier ??
            targetItemPositiveInt,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationAllocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaymentReconciliationAllocation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      predecessor: JsonParser.parseObject<Identifier>(
        json,
        'predecessor',
        Identifier.fromJson,
      ),
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
      ),
      targetItemX: JsonParser.parsePolymorphic<
          TargetItemXPaymentReconciliationAllocation>(
        json,
        {
          'targetItemString': FhirString.fromJson,
          'targetItemIdentifier': Identifier.fromJson,
          'targetItemPositiveInt': FhirPositiveInt.fromJson,
        },
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      account: JsonParser.parseObject<Reference>(
        json,
        'account',
        Reference.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      submitter: JsonParser.parseObject<Reference>(
        json,
        'submitter',
        Reference.fromJson,
      ),
      response: JsonParser.parseObject<Reference>(
        json,
        'response',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      responsible: JsonParser.parseObject<Reference>(
        json,
        'responsible',
        Reference.fromJson,
      ),
      payee: JsonParser.parseObject<Reference>(
        json,
        'payee',
        Reference.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
    );
  }

  /// Deserialize [PaymentReconciliationAllocation]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationAllocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationAllocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationAllocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationAllocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationAllocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationAllocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationAllocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationAllocation';

  /// [identifier]
  /// Unique identifier for the current payment item for the referenced
  /// payable.
  final Identifier? identifier;

  /// [predecessor]
  /// Unique identifier for the prior payment item for the referenced
  /// payable.
  final Identifier? predecessor;

  /// [target]
  /// Specific resource to which the payment/adjustment/advance applies.
  final Reference? target;

  /// [targetItemX]
  /// Identifies the claim line item, encounter or other sub-element being
  /// paid. Note payment may be partial, that is not match the then
  /// outstanding balance or amount incurred.
  final TargetItemXPaymentReconciliationAllocation? targetItemX;

  /// Getter for [targetItemString] as a FhirString
  FhirString? get targetItemString => targetItemX?.isAs<FhirString>();

  /// Getter for [targetItemIdentifier] as a Identifier
  Identifier? get targetItemIdentifier => targetItemX?.isAs<Identifier>();

  /// Getter for [targetItemPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get targetItemPositiveInt =>
      targetItemX?.isAs<FhirPositiveInt>();

  /// [encounter]
  /// The Encounter to which this payment applies, may be completed by the
  /// receiver, used for search.
  final Reference? encounter;

  /// [account]
  /// The Account to which this payment applies, may be completed by the
  /// receiver, used for search.
  final Reference? account;

  /// [type]
  /// Code to indicate the nature of the payment.
  final CodeableConcept? type;

  /// [submitter]
  /// The party which submitted the claim or financial transaction.
  final Reference? submitter;

  /// [response]
  /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  final Reference? response;

  /// [date]
  /// The date from the response resource containing a commitment to pay.
  final FhirDate? date;

  /// [responsible]
  /// A reference to the individual who is responsible for inquiries
  /// regarding the response and its payment.
  final Reference? responsible;

  /// [payee]
  /// The party which is receiving the payment.
  final Reference? payee;

  /// [amount]
  /// The monetary amount allocated from the total payment to the payable.
  final Money? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'predecessor',
      predecessor,
    );
    addField(
      'target',
      target,
    );
    if (targetItemX != null) {
      final fhirType = targetItemX!.fhirType;
      addField(
        'targetItem${fhirType.capitalize()}',
        targetItemX,
      );
    }

    addField(
      'encounter',
      encounter,
    );
    addField(
      'account',
      account,
    );
    addField(
      'type',
      type,
    );
    addField(
      'submitter',
      submitter,
    );
    addField(
      'response',
      response,
    );
    addField(
      'date',
      date,
    );
    addField(
      'responsible',
      responsible,
    );
    addField(
      'payee',
      payee,
    );
    addField(
      'amount',
      amount,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'predecessor',
      'target',
      'targetItemX',
      'encounter',
      'account',
      'type',
      'submitter',
      'response',
      'date',
      'responsible',
      'payee',
      'amount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'predecessor':
        if (predecessor != null) {
          fields.add(predecessor!);
        }
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'targetItem':
        fields.add(targetItemX!);
      case 'targetItemX':
        fields.add(targetItemX!);
      case 'targetItemString':
        if (targetItemX is FhirString) {
          fields.add(targetItemX!);
        }
      case 'targetItemIdentifier':
        if (targetItemX is Identifier) {
          fields.add(targetItemX!);
        }
      case 'targetItemPositiveInt':
        if (targetItemX is FhirPositiveInt) {
          fields.add(targetItemX!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'account':
        if (account != null) {
          fields.add(account!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'submitter':
        if (submitter != null) {
          fields.add(submitter!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'payee':
        if (payee != null) {
          fields.add(payee!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PaymentReconciliationAllocation clone() => copyWith();

  /// Copy function for [PaymentReconciliationAllocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PaymentReconciliationAllocationCopyWith<PaymentReconciliationAllocation>
      get copyWith => _$PaymentReconciliationAllocationCopyWithImpl<
              PaymentReconciliationAllocation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PaymentReconciliationAllocation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      predecessor,
      o.predecessor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetItemX,
      o.targetItemX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      account,
      o.account,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      submitter,
      o.submitter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [PaymentReconciliationProcessNote]
/// A note that describes or explains the processing in a human readable
/// form.
class PaymentReconciliationProcessNote extends BackboneElement {
  /// Primary constructor for
  /// [PaymentReconciliationProcessNote]

  const PaymentReconciliationProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.text,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationProcessNote.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaymentReconciliationProcessNote(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<NoteType>(
        json,
        'type',
        NoteType.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [PaymentReconciliationProcessNote]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationProcessNote.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationProcessNote.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationProcessNote.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationProcessNote '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationProcessNote]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationProcessNote.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationProcessNote';

  /// [type]
  /// The business purpose of the note text.
  final NoteType? type;

  /// [text]
  /// The explanation or description associated with the processing.
  final FhirString? text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'text',
      text,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'text',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  PaymentReconciliationProcessNote clone() => copyWith();

  /// Copy function for [PaymentReconciliationProcessNote]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PaymentReconciliationProcessNoteCopyWith<PaymentReconciliationProcessNote>
      get copyWith => _$PaymentReconciliationProcessNoteCopyWithImpl<
              PaymentReconciliationProcessNote>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PaymentReconciliationProcessNote) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}
