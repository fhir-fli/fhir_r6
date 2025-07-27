import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        PaymentReconciliation,
        PaymentReconciliationAllocation,
        PaymentReconciliationProcessNote,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [PaymentReconciliationBuilder]
/// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
class PaymentReconciliationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationBuilder]

  PaymentReconciliationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.kind,
    this.period,
    this.created,
    this.enterer,
    this.issuerType,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.disposition,
    this.date,
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
    this.amount,
    this.paymentIdentifier,
    this.allocation,
    this.formCode,
    this.processNote,
  }) : super(
          objectPath: 'PaymentReconciliation',
          resourceType: R5ResourceType.PaymentReconciliation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationBuilder.empty() => PaymentReconciliationBuilder(
        type: CodeableConceptBuilder.empty(),
        status: FinancialResourceStatusCodesBuilder.values.first,
        created: FhirDateTimeBuilder.empty(),
        date: FhirDateBuilder.empty(),
        amount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation';
    return PaymentReconciliationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodesBuilder>(
        json,
        'status',
        FinancialResourceStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      kind: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'kind',
        CodeableConceptBuilder.fromJson,
        '$objectPath.kind',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      enterer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'enterer',
        ReferenceBuilder.fromJson,
        '$objectPath.enterer',
      ),
      issuerType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'issuerType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.issuerType',
      ),
      paymentIssuer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'paymentIssuer',
        ReferenceBuilder.fromJson,
        '$objectPath.paymentIssuer',
      ),
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
      ),
      requestor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestor',
        ReferenceBuilder.fromJson,
        '$objectPath.requestor',
      ),
      outcome: JsonParser.parsePrimitive<PaymentOutcomeBuilder>(
        json,
        'outcome',
        PaymentOutcomeBuilder.fromJson,
        '$objectPath.outcome',
      ),
      disposition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'disposition',
        FhirStringBuilder.fromJson,
        '$objectPath.disposition',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      cardBrand: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'cardBrand',
        FhirStringBuilder.fromJson,
        '$objectPath.cardBrand',
      ),
      accountNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'accountNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.accountNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'expirationDate',
        FhirDateBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      processor: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'processor',
        FhirStringBuilder.fromJson,
        '$objectPath.processor',
      ),
      referenceNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'referenceNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.referenceNumber',
      ),
      authorization: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'authorization',
        FhirStringBuilder.fromJson,
        '$objectPath.authorization',
      ),
      tenderedAmount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'tenderedAmount',
        MoneyBuilder.fromJson,
        '$objectPath.tenderedAmount',
      ),
      returnedAmount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'returnedAmount',
        MoneyBuilder.fromJson,
        '$objectPath.returnedAmount',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
      paymentIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'paymentIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.paymentIdentifier',
      ),
      allocation: (json['allocation'] as List<dynamic>?)
          ?.map<PaymentReconciliationAllocationBuilder>(
            (v) => PaymentReconciliationAllocationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.allocation',
              },
            ),
          )
          .toList(),
      formCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'formCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.formCode',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<PaymentReconciliationProcessNoteBuilder>(
            (v) => PaymentReconciliationProcessNoteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PaymentReconciliationBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliation';

  /// [identifier]
  /// A unique identifier assigned to this payment reconciliation.
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// Code to indicate the nature of the payment such as payment, adjustment.
  CodeableConceptBuilder? type;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

  /// [kind]
  /// The workflow or activity which gave rise to or during which the payment
  /// ocurred such as a kiosk, deposit on account, periodic payment etc.
  CodeableConceptBuilder? kind;

  /// [period]
  /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  PeriodBuilder? period;

  /// [created]
  /// The date when the resource was created.
  FhirDateTimeBuilder? created;

  /// [enterer]
  /// Payment enterer if not the actual payment issuer.
  ReferenceBuilder? enterer;

  /// [issuerType]
  /// The type of the source such as patient or insurance.
  CodeableConceptBuilder? issuerType;

  /// [paymentIssuer]
  /// The party who generated the payment.
  ReferenceBuilder? paymentIssuer;

  /// [request]
  /// Original request resource reference.
  ReferenceBuilder? request;

  /// [requestor]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  ReferenceBuilder? requestor;

  /// [outcome]
  /// The outcome of a request for a reconciliation.
  PaymentOutcomeBuilder? outcome;

  /// [disposition]
  /// A human readable description of the status of the request for the
  /// reconciliation.
  FhirStringBuilder? disposition;

  /// [date]
  /// The date of payment as indicated on the financial instrument.
  FhirDateBuilder? date;

  /// [location]
  /// The location of the site or device for electronic transfers or physical
  /// location for cash payments.
  ReferenceBuilder? location;

  /// [method]
  /// The means of payment such as check, card cash, or electronic funds
  /// transfer.
  CodeableConceptBuilder? method;

  /// [cardBrand]
  /// The card brand such as debit, Visa, Amex etc. used if a card is the
  /// method of payment.
  FhirStringBuilder? cardBrand;

  /// [accountNumber]
  /// A portion of the account number, often the last 4 digits, used for
  /// verification not charging purposes.
  FhirStringBuilder? accountNumber;

  /// [expirationDate]
  /// The year and month (YYYY-MM) when the instrument, typically card,
  /// expires.
  FhirDateBuilder? expirationDate;

  /// [processor]
  /// The name of the card processor, etf processor, bank for checks.
  FhirStringBuilder? processor;

  /// [referenceNumber]
  /// The check number, eft reference, car processor reference.
  FhirStringBuilder? referenceNumber;

  /// [authorization]
  /// An alphanumeric issued by the processor to confirm the successful
  /// issuance of payment.
  FhirStringBuilder? authorization;

  /// [tenderedAmount]
  /// The amount offered by the issuer, typically applies to cash when the
  /// issuer provides an amount in bank note denominations equal to or excess
  /// of the amount actually being paid.
  MoneyBuilder? tenderedAmount;

  /// [returnedAmount]
  /// The amount returned by the receiver which is excess to the amount
  /// payable, often referred to as 'change'.
  MoneyBuilder? returnedAmount;

  /// [amount]
  /// Total payment amount as indicated on the financial instrument.
  MoneyBuilder? amount;

  /// [paymentIdentifier]
  /// Issuer's unique identifier for the payment instrument.
  IdentifierBuilder? paymentIdentifier;

  /// [allocation]
  /// Distribution of the payment amount for a previously acknowledged
  /// payable.
  List<PaymentReconciliationAllocationBuilder>? allocation;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  CodeableConceptBuilder? formCode;

  /// [processNote]
  /// A note that describes or explains the processing in a human readable
  /// form.
  List<PaymentReconciliationProcessNoteBuilder>? processNote;

  /// Converts a [PaymentReconciliationBuilder]
  /// to [PaymentReconciliation]
  @override
  PaymentReconciliation build() => PaymentReconciliation.fromJson(toJson());

  /// Converts a [PaymentReconciliationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('type', type);
    addField('status', status);
    addField('kind', kind);
    addField('period', period);
    addField('created', created);
    addField('enterer', enterer);
    addField('issuerType', issuerType);
    addField('paymentIssuer', paymentIssuer);
    addField('request', request);
    addField('requestor', requestor);
    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('date', date);
    addField('location', location);
    addField('method', method);
    addField('cardBrand', cardBrand);
    addField('accountNumber', accountNumber);
    addField('expirationDate', expirationDate);
    addField('processor', processor);
    addField('referenceNumber', referenceNumber);
    addField('authorization', authorization);
    addField('tenderedAmount', tenderedAmount);
    addField('returnedAmount', returnedAmount);
    addField('amount', amount);
    addField('paymentIdentifier', paymentIdentifier);
    addField('allocation', allocation);
    addField('formCode', formCode);
    addField('processNote', processNote);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
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
        if (date != null) {
          fields.add(date!);
        }
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
        if (amount != null) {
          fields.add(amount!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is FinancialResourceStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    FinancialResourceStatusCodesBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'kind':
        {
          if (child is CodeableConceptBuilder) {
            kind = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                created = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'enterer':
        {
          if (child is ReferenceBuilder) {
            enterer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issuerType':
        {
          if (child is CodeableConceptBuilder) {
            issuerType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentIssuer':
        {
          if (child is ReferenceBuilder) {
            paymentIssuer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is ReferenceBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestor':
        {
          if (child is ReferenceBuilder) {
            requestor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is PaymentOutcomeBuilder) {
            outcome = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PaymentOutcomeBuilder(stringValue);
                outcome = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'disposition':
        {
          if (child is FhirStringBuilder) {
            disposition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                disposition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cardBrand':
        {
          if (child is FhirStringBuilder) {
            cardBrand = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                cardBrand = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'accountNumber':
        {
          if (child is FhirStringBuilder) {
            accountNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                accountNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expirationDate':
        {
          if (child is FhirDateBuilder) {
            expirationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                expirationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processor':
        {
          if (child is FhirStringBuilder) {
            processor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                processor = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referenceNumber':
        {
          if (child is FhirStringBuilder) {
            referenceNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                referenceNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorization':
        {
          if (child is FhirStringBuilder) {
            authorization = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                authorization = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tenderedAmount':
        {
          if (child is MoneyBuilder) {
            tenderedAmount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'returnedAmount':
        {
          if (child is MoneyBuilder) {
            returnedAmount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentIdentifier':
        {
          if (child is IdentifierBuilder) {
            paymentIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allocation':
        {
          if (child is List<PaymentReconciliationAllocationBuilder>) {
            // Replace or create new list
            allocation = child;
            return;
          } else if (child is PaymentReconciliationAllocationBuilder) {
            // Add single element to existing list or create new list
            allocation = [
              ...(allocation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'formCode':
        {
          if (child is CodeableConceptBuilder) {
            formCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processNote':
        {
          if (child is List<PaymentReconciliationProcessNoteBuilder>) {
            // Replace or create new list
            processNote = child;
            return;
          } else if (child is PaymentReconciliationProcessNoteBuilder) {
            // Add single element to existing list or create new list
            processNote = [
              ...(processNote ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'kind':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'enterer':
        return ['ReferenceBuilder'];
      case 'issuerType':
        return ['CodeableConceptBuilder'];
      case 'paymentIssuer':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'requestor':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'cardBrand':
        return ['FhirStringBuilder'];
      case 'accountNumber':
        return ['FhirStringBuilder'];
      case 'expirationDate':
        return ['FhirDateBuilder'];
      case 'processor':
        return ['FhirStringBuilder'];
      case 'referenceNumber':
        return ['FhirStringBuilder'];
      case 'authorization':
        return ['FhirStringBuilder'];
      case 'tenderedAmount':
        return ['MoneyBuilder'];
      case 'returnedAmount':
        return ['MoneyBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      case 'paymentIdentifier':
        return ['IdentifierBuilder'];
      case 'allocation':
        return ['PaymentReconciliationAllocationBuilder'];
      case 'formCode':
        return ['CodeableConceptBuilder'];
      case 'processNote':
        return ['PaymentReconciliationProcessNoteBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = FinancialResourceStatusCodesBuilder.empty();
          return;
        }
      case 'kind':
        {
          kind = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'enterer':
        {
          enterer = ReferenceBuilder.empty();
          return;
        }
      case 'issuerType':
        {
          issuerType = CodeableConceptBuilder.empty();
          return;
        }
      case 'paymentIssuer':
        {
          paymentIssuer = ReferenceBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = ReferenceBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = PaymentOutcomeBuilder.empty();
          return;
        }
      case 'disposition':
        {
          disposition = FhirStringBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'cardBrand':
        {
          cardBrand = FhirStringBuilder.empty();
          return;
        }
      case 'accountNumber':
        {
          accountNumber = FhirStringBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateBuilder.empty();
          return;
        }
      case 'processor':
        {
          processor = FhirStringBuilder.empty();
          return;
        }
      case 'referenceNumber':
        {
          referenceNumber = FhirStringBuilder.empty();
          return;
        }
      case 'authorization':
        {
          authorization = FhirStringBuilder.empty();
          return;
        }
      case 'tenderedAmount':
        {
          tenderedAmount = MoneyBuilder.empty();
          return;
        }
      case 'returnedAmount':
        {
          returnedAmount = MoneyBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      case 'paymentIdentifier':
        {
          paymentIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'allocation':
        {
          allocation = <PaymentReconciliationAllocationBuilder>[];
          return;
        }
      case 'formCode':
        {
          formCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'processNote':
        {
          processNote = <PaymentReconciliationProcessNoteBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PaymentReconciliationBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    FinancialResourceStatusCodesBuilder? status,
    CodeableConceptBuilder? kind,
    PeriodBuilder? period,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? enterer,
    CodeableConceptBuilder? issuerType,
    ReferenceBuilder? paymentIssuer,
    ReferenceBuilder? request,
    ReferenceBuilder? requestor,
    PaymentOutcomeBuilder? outcome,
    FhirStringBuilder? disposition,
    FhirDateBuilder? date,
    ReferenceBuilder? location,
    CodeableConceptBuilder? method,
    FhirStringBuilder? cardBrand,
    FhirStringBuilder? accountNumber,
    FhirDateBuilder? expirationDate,
    FhirStringBuilder? processor,
    FhirStringBuilder? referenceNumber,
    FhirStringBuilder? authorization,
    MoneyBuilder? tenderedAmount,
    MoneyBuilder? returnedAmount,
    MoneyBuilder? amount,
    IdentifierBuilder? paymentIdentifier,
    List<PaymentReconciliationAllocationBuilder>? allocation,
    CodeableConceptBuilder? formCode,
    List<PaymentReconciliationProcessNoteBuilder>? processNote,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PaymentReconciliationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      status: status ?? this.status,
      kind: kind ?? this.kind,
      period: period ?? this.period,
      created: created ?? this.created,
      enterer: enterer ?? this.enterer,
      issuerType: issuerType ?? this.issuerType,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      date: date ?? this.date,
      location: location ?? this.location,
      method: method ?? this.method,
      cardBrand: cardBrand ?? this.cardBrand,
      accountNumber: accountNumber ?? this.accountNumber,
      expirationDate: expirationDate ?? this.expirationDate,
      processor: processor ?? this.processor,
      referenceNumber: referenceNumber ?? this.referenceNumber,
      authorization: authorization ?? this.authorization,
      tenderedAmount: tenderedAmount ?? this.tenderedAmount,
      returnedAmount: returnedAmount ?? this.returnedAmount,
      amount: amount ?? this.amount,
      paymentIdentifier: paymentIdentifier ?? this.paymentIdentifier,
      allocation: allocation ?? this.allocation,
      formCode: formCode ?? this.formCode,
      processNote: processNote ?? this.processNote,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PaymentReconciliationBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<PaymentReconciliationAllocationBuilder>(
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
    if (!listEquals<PaymentReconciliationProcessNoteBuilder>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    return true;
  }
}

/// [PaymentReconciliationAllocationBuilder]
/// Distribution of the payment amount for a previously acknowledged
/// payable.
class PaymentReconciliationAllocationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationAllocationBuilder]

  PaymentReconciliationAllocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    this.target,
    TargetItemXPaymentReconciliationAllocationBuilder? targetItemX,
    FhirStringBuilder? targetItemString,
    IdentifierBuilder? targetItemIdentifier,
    FhirPositiveIntBuilder? targetItemPositiveInt,
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
        super(
          objectPath: 'PaymentReconciliation.allocation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationAllocationBuilder.empty() =>
      PaymentReconciliationAllocationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationAllocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation.allocation';
    return PaymentReconciliationAllocationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      predecessor: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'predecessor',
        IdentifierBuilder.fromJson,
        '$objectPath.predecessor',
      ),
      target: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'target',
        ReferenceBuilder.fromJson,
        '$objectPath.target',
      ),
      targetItemX: JsonParser.parsePolymorphic<
          TargetItemXPaymentReconciliationAllocationBuilder>(
        json,
        {
          'targetItemString': FhirStringBuilder.fromJson,
          'targetItemIdentifier': IdentifierBuilder.fromJson,
          'targetItemPositiveInt': FhirPositiveIntBuilder.fromJson,
        },
        objectPath,
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      account: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'account',
        ReferenceBuilder.fromJson,
        '$objectPath.account',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      submitter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'submitter',
        ReferenceBuilder.fromJson,
        '$objectPath.submitter',
      ),
      response: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'response',
        ReferenceBuilder.fromJson,
        '$objectPath.response',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      responsible: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'responsible',
        ReferenceBuilder.fromJson,
        '$objectPath.responsible',
      ),
      payee: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'payee',
        ReferenceBuilder.fromJson,
        '$objectPath.payee',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [PaymentReconciliationAllocationBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationAllocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationAllocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationAllocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationAllocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationAllocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationAllocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationAllocationBuilder.fromJson(json);
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
  IdentifierBuilder? identifier;

  /// [predecessor]
  /// Unique identifier for the prior payment item for the referenced
  /// payable.
  IdentifierBuilder? predecessor;

  /// [target]
  /// Specific resource to which the payment/adjustment/advance applies.
  ReferenceBuilder? target;

  /// [targetItemX]
  /// Identifies the claim line item, encounter or other sub-element being
  /// paid. Note payment may be partial, that is not match the then
  /// outstanding balance or amount incurred.
  TargetItemXPaymentReconciliationAllocationBuilder? targetItemX;

  /// Getter for [targetItemString] as a FhirStringBuilder
  FhirStringBuilder? get targetItemString =>
      targetItemX?.isAs<FhirStringBuilder>();

  /// Getter for [targetItemIdentifier] as a IdentifierBuilder
  IdentifierBuilder? get targetItemIdentifier =>
      targetItemX?.isAs<IdentifierBuilder>();

  /// Getter for [targetItemPositiveInt] as a FhirPositiveIntBuilder
  FhirPositiveIntBuilder? get targetItemPositiveInt =>
      targetItemX?.isAs<FhirPositiveIntBuilder>();

  /// [encounter]
  /// The Encounter to which this payment applies, may be completed by the
  /// receiver, used for search.
  ReferenceBuilder? encounter;

  /// [account]
  /// The Account to which this payment applies, may be completed by the
  /// receiver, used for search.
  ReferenceBuilder? account;

  /// [type]
  /// Code to indicate the nature of the payment.
  CodeableConceptBuilder? type;

  /// [submitter]
  /// The party which submitted the claim or financial transaction.
  ReferenceBuilder? submitter;

  /// [response]
  /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  ReferenceBuilder? response;

  /// [date]
  /// The date from the response resource containing a commitment to pay.
  FhirDateBuilder? date;

  /// [responsible]
  /// A reference to the individual who is responsible for inquiries
  /// regarding the response and its payment.
  ReferenceBuilder? responsible;

  /// [payee]
  /// The party which is receiving the payment.
  ReferenceBuilder? payee;

  /// [amount]
  /// The monetary amount allocated from the total payment to the payable.
  MoneyBuilder? amount;

  /// Converts a [PaymentReconciliationAllocationBuilder]
  /// to [PaymentReconciliationAllocation]
  @override
  PaymentReconciliationAllocation build() =>
      PaymentReconciliationAllocation.fromJson(toJson());

  /// Converts a [PaymentReconciliationAllocationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('predecessor', predecessor);
    addField('target', target);
    if (targetItemX != null) {
      final fhirType = targetItemX!.fhirType;
      addField('targetItem${fhirType.capitalizeFirstLetter()}', targetItemX);
    }

    addField('encounter', encounter);
    addField('account', account);
    addField('type', type);
    addField('submitter', submitter);
    addField('response', response);
    addField('date', date);
    addField('responsible', responsible);
    addField('payee', payee);
    addField('amount', amount);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (targetItemX != null) {
          fields.add(targetItemX!);
        }
      case 'targetItemX':
        if (targetItemX != null) {
          fields.add(targetItemX!);
        }
      case 'targetItemString':
        if (targetItemX is FhirStringBuilder) {
          fields.add(targetItemX!);
        }
      case 'targetItemIdentifier':
        if (targetItemX is IdentifierBuilder) {
          fields.add(targetItemX!);
        }
      case 'targetItemPositiveInt':
        if (targetItemX is FhirPositiveIntBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'predecessor':
        {
          if (child is IdentifierBuilder) {
            predecessor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'target':
        {
          if (child is ReferenceBuilder) {
            target = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetItem':
      case 'targetItemX':
        {
          if (child is TargetItemXPaymentReconciliationAllocationBuilder) {
            targetItemX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              targetItemX = child;
              return;
            }
            if (child is IdentifierBuilder) {
              targetItemX = child;
              return;
            }
            if (child is FhirPositiveIntBuilder) {
              targetItemX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetItemString':
        {
          if (child is FhirStringBuilder) {
            targetItemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetItemIdentifier':
        {
          if (child is IdentifierBuilder) {
            targetItemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetItemPositiveInt':
        {
          if (child is FhirPositiveIntBuilder) {
            targetItemX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'account':
        {
          if (child is ReferenceBuilder) {
            account = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'submitter':
        {
          if (child is ReferenceBuilder) {
            submitter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is ReferenceBuilder) {
            response = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responsible':
        {
          if (child is ReferenceBuilder) {
            responsible = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payee':
        {
          if (child is ReferenceBuilder) {
            payee = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'predecessor':
        return ['IdentifierBuilder'];
      case 'target':
        return ['ReferenceBuilder'];
      case 'targetItem':
      case 'targetItemX':
        return [
          'FhirStringBuilder',
          'IdentifierBuilder',
          'FhirPositiveIntBuilder',
        ];
      case 'targetItemString':
        return ['FhirStringBuilder'];
      case 'targetItemIdentifier':
        return ['IdentifierBuilder'];
      case 'targetItemPositiveInt':
        return ['FhirPositiveIntBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'submitter':
        return ['ReferenceBuilder'];
      case 'response':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'responsible':
        return ['ReferenceBuilder'];
      case 'payee':
        return ['ReferenceBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationAllocationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'predecessor':
        {
          predecessor = IdentifierBuilder.empty();
          return;
        }
      case 'target':
        {
          target = ReferenceBuilder.empty();
          return;
        }
      case 'targetItem':
      case 'targetItemX':
      case 'targetItemString':
        {
          targetItemX = FhirStringBuilder.empty();
          return;
        }
      case 'targetItemIdentifier':
        {
          targetItemX = IdentifierBuilder.empty();
          return;
        }
      case 'targetItemPositiveInt':
        {
          targetItemX = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'account':
        {
          account = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'submitter':
        {
          submitter = ReferenceBuilder.empty();
          return;
        }
      case 'response':
        {
          response = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = ReferenceBuilder.empty();
          return;
        }
      case 'payee':
        {
          payee = ReferenceBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PaymentReconciliationAllocationBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationAllocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    IdentifierBuilder? predecessor,
    ReferenceBuilder? target,
    TargetItemXPaymentReconciliationAllocationBuilder? targetItemX,
    ReferenceBuilder? encounter,
    ReferenceBuilder? account,
    CodeableConceptBuilder? type,
    ReferenceBuilder? submitter,
    ReferenceBuilder? response,
    FhirDateBuilder? date,
    ReferenceBuilder? responsible,
    ReferenceBuilder? payee,
    MoneyBuilder? amount,
    FhirStringBuilder? targetItemString,
    IdentifierBuilder? targetItemIdentifier,
    FhirPositiveIntBuilder? targetItemPositiveInt,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PaymentReconciliationAllocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      predecessor: predecessor ?? this.predecessor,
      target: target ?? this.target,
      targetItemX: targetItemX ??
          targetItemString ??
          targetItemIdentifier ??
          targetItemPositiveInt ??
          this.targetItemX,
      encounter: encounter ?? this.encounter,
      account: account ?? this.account,
      type: type ?? this.type,
      submitter: submitter ?? this.submitter,
      response: response ?? this.response,
      date: date ?? this.date,
      responsible: responsible ?? this.responsible,
      payee: payee ?? this.payee,
      amount: amount ?? this.amount,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PaymentReconciliationAllocationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [PaymentReconciliationProcessNoteBuilder]
/// A note that describes or explains the processing in a human readable
/// form.
class PaymentReconciliationProcessNoteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationProcessNoteBuilder]

  PaymentReconciliationProcessNoteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.text,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PaymentReconciliation.processNote',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationProcessNoteBuilder.empty() =>
      PaymentReconciliationProcessNoteBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationProcessNoteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation.processNote';
    return PaymentReconciliationProcessNoteBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<NoteTypeBuilder>(
        json,
        'type',
        NoteTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [PaymentReconciliationProcessNoteBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationProcessNoteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationProcessNoteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationProcessNoteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationProcessNoteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationProcessNote';

  /// [type]
  /// The business purpose of the note text.
  NoteTypeBuilder? type;

  /// [text]
  /// The explanation or description associated with the processing.
  FhirStringBuilder? text;

  /// Converts a [PaymentReconciliationProcessNoteBuilder]
  /// to [PaymentReconciliationProcessNote]
  @override
  PaymentReconciliationProcessNote build() =>
      PaymentReconciliationProcessNote.fromJson(toJson());

  /// Converts a [PaymentReconciliationProcessNoteBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('text', text);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is NoteTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = NoteTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationProcessNoteBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = NoteTypeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PaymentReconciliationProcessNoteBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationProcessNoteBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    NoteTypeBuilder? type,
    FhirStringBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PaymentReconciliationProcessNoteBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      text: text ?? this.text,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PaymentReconciliationProcessNoteBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
