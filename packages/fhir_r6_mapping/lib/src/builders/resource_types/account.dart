import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Account,
        AccountBalance,
        AccountCoverage,
        AccountDiagnosis,
        AccountGuarantor,
        AccountProcedure,
        AccountRelatedAccount,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AccountBuilder]
/// A financial tool for tracking value accrued for a particular purpose.
/// In the healthcare field, used to track charges for a patient, cost
/// centers, etc.
class AccountBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AccountBuilder]

  AccountBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.billingStatus,
    this.type,
    this.name,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.guarantor,
    this.diagnosis,
    this.procedure,
    this.relatedAccount,
    this.currency,
    this.balance,
    this.calculatedAt,
  }) : super(
          objectPath: 'Account',
          resourceType: R5ResourceType.Account,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountBuilder.empty() => AccountBuilder(
        status: AccountStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account';
    return AccountBuilder(
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
      status: JsonParser.parsePrimitive<AccountStatusBuilder>(
        json,
        'status',
        AccountStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      billingStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'billingStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.billingStatus',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      servicePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'servicePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.servicePeriod',
      ),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map<AccountCoverageBuilder>(
            (v) => AccountCoverageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverage',
              },
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'owner',
        ReferenceBuilder.fromJson,
        '$objectPath.owner',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      guarantor: (json['guarantor'] as List<dynamic>?)
          ?.map<AccountGuarantorBuilder>(
            (v) => AccountGuarantorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.guarantor',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<AccountDiagnosisBuilder>(
            (v) => AccountDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<AccountProcedureBuilder>(
            (v) => AccountProcedureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
      relatedAccount: (json['relatedAccount'] as List<dynamic>?)
          ?.map<AccountRelatedAccountBuilder>(
            (v) => AccountRelatedAccountBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedAccount',
              },
            ),
          )
          .toList(),
      currency: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'currency',
        CodeableConceptBuilder.fromJson,
        '$objectPath.currency',
      ),
      balance: (json['balance'] as List<dynamic>?)
          ?.map<AccountBalanceBuilder>(
            (v) => AccountBalanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.balance',
              },
            ),
          )
          .toList(),
      calculatedAt: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'calculatedAt',
        FhirInstantBuilder.fromJson,
        '$objectPath.calculatedAt',
      ),
    );
  }

  /// Deserialize [AccountBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Account';

  /// [identifier]
  /// Unique identifier used to reference the account. Might or might not be
  /// intended for human use (e.g. credit card number).
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Indicates whether the account is presently used/usable or not.
  AccountStatusBuilder? status;

  /// [billingStatus]
  /// The BillingStatus tracks the lifecycle of the account through the
  /// billing process. It indicates how transactions are treated when they
  /// are allocated to the account.
  CodeableConceptBuilder? billingStatus;

  /// [type]
  /// Categorizes the account for reporting and searching purposes.
  CodeableConceptBuilder? type;

  /// [name]
  /// Name used for the account when displaying it to humans in reports, etc.
  FhirStringBuilder? name;

  /// [subject]
  /// Identifies the entity which incurs the expenses. While the immediate
  /// recipients of services or goods might be entities related to the
  /// subject, the expenses were ultimately incurred by the subject of the
  /// Account.
  List<ReferenceBuilder>? subject;

  /// [servicePeriod]
  /// The date range of services associated with this account.
  PeriodBuilder? servicePeriod;

  /// [coverage]
  /// The party(s) that are responsible for covering the payment of this
  /// account, and what order should they be applied to the account.
  List<AccountCoverageBuilder>? coverage;

  /// [owner]
  /// Indicates the service area, hospital, department, etc. with
  /// responsibility for managing the Account.
  ReferenceBuilder? owner;

  /// [description]
  /// Provides additional information about what the account tracks and how
  /// it is used.
  FhirMarkdownBuilder? description;

  /// [guarantor]
  /// The parties responsible for balancing the account if other payment
  /// options fall short.
  List<AccountGuarantorBuilder>? guarantor;

  /// [diagnosis]
  /// When using an account for billing a specific Encounter the set of
  /// diagnoses that are relevant for billing are stored here on the account
  /// where they are able to be sequenced appropriately prior to processing
  /// to produce claim(s).
  List<AccountDiagnosisBuilder>? diagnosis;

  /// [procedure]
  /// When using an account for billing a specific Encounter the set of
  /// procedures that are relevant for billing are stored here on the account
  /// where they are able to be sequenced appropriately prior to processing
  /// to produce claim(s).
  List<AccountProcedureBuilder>? procedure;

  /// [relatedAccount]
  /// Other associated accounts related to this account.
  List<AccountRelatedAccountBuilder>? relatedAccount;

  /// [currency]
  /// The default currency for the account.
  CodeableConceptBuilder? currency;

  /// [balance]
  /// The calculated account balances - these are calculated and processed by
  /// the finance system. The balances with a `term` that is not current are
  /// usually generated/updated by an invoicing or similar process.
  List<AccountBalanceBuilder>? balance;

  /// [calculatedAt]
  /// Time the balance amount was calculated.
  FhirInstantBuilder? calculatedAt;

  /// Converts a [AccountBuilder]
  /// to [Account]
  @override
  Account build() => Account.fromJson(toJson());

  /// Converts a [AccountBuilder]
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
    addField('status', status);
    addField('billingStatus', billingStatus);
    addField('type', type);
    addField('name', name);
    addField('subject', subject);
    addField('servicePeriod', servicePeriod);
    addField('coverage', coverage);
    addField('owner', owner);
    addField('description', description);
    addField('guarantor', guarantor);
    addField('diagnosis', diagnosis);
    addField('procedure', procedure);
    addField('relatedAccount', relatedAccount);
    addField('currency', currency);
    addField('balance', balance);
    addField('calculatedAt', calculatedAt);
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
      'status',
      'billingStatus',
      'type',
      'name',
      'subject',
      'servicePeriod',
      'coverage',
      'owner',
      'description',
      'guarantor',
      'diagnosis',
      'procedure',
      'relatedAccount',
      'currency',
      'balance',
      'calculatedAt',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'billingStatus':
        if (billingStatus != null) {
          fields.add(billingStatus!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'servicePeriod':
        if (servicePeriod != null) {
          fields.add(servicePeriod!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.addAll(coverage!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'guarantor':
        if (guarantor != null) {
          fields.addAll(guarantor!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.addAll(procedure!);
        }
      case 'relatedAccount':
        if (relatedAccount != null) {
          fields.addAll(relatedAccount!);
        }
      case 'currency':
        if (currency != null) {
          fields.add(currency!);
        }
      case 'balance':
        if (balance != null) {
          fields.addAll(balance!);
        }
      case 'calculatedAt':
        if (calculatedAt != null) {
          fields.add(calculatedAt!);
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
      case 'status':
        {
          if (child is AccountStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AccountStatusBuilder(stringValue);
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
      case 'billingStatus':
        {
          if (child is CodeableConceptBuilder) {
            billingStatus = child;
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subject = [
              ...(subject ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicePeriod':
        {
          if (child is PeriodBuilder) {
            servicePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coverage':
        {
          if (child is List<AccountCoverageBuilder>) {
            // Replace or create new list
            coverage = child;
            return;
          } else if (child is AccountCoverageBuilder) {
            // Add single element to existing list or create new list
            coverage = [
              ...(coverage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'owner':
        {
          if (child is ReferenceBuilder) {
            owner = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'guarantor':
        {
          if (child is List<AccountGuarantorBuilder>) {
            // Replace or create new list
            guarantor = child;
            return;
          } else if (child is AccountGuarantorBuilder) {
            // Add single element to existing list or create new list
            guarantor = [
              ...(guarantor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosis':
        {
          if (child is List<AccountDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is AccountDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [
              ...(diagnosis ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedure':
        {
          if (child is List<AccountProcedureBuilder>) {
            // Replace or create new list
            procedure = child;
            return;
          } else if (child is AccountProcedureBuilder) {
            // Add single element to existing list or create new list
            procedure = [
              ...(procedure ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedAccount':
        {
          if (child is List<AccountRelatedAccountBuilder>) {
            // Replace or create new list
            relatedAccount = child;
            return;
          } else if (child is AccountRelatedAccountBuilder) {
            // Add single element to existing list or create new list
            relatedAccount = [
              ...(relatedAccount ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'currency':
        {
          if (child is CodeableConceptBuilder) {
            currency = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'balance':
        {
          if (child is List<AccountBalanceBuilder>) {
            // Replace or create new list
            balance = child;
            return;
          } else if (child is AccountBalanceBuilder) {
            // Add single element to existing list or create new list
            balance = [
              ...(balance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'calculatedAt':
        {
          if (child is FhirInstantBuilder) {
            calculatedAt = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                calculatedAt = converted;
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'billingStatus':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'servicePeriod':
        return ['PeriodBuilder'];
      case 'coverage':
        return ['AccountCoverageBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'guarantor':
        return ['AccountGuarantorBuilder'];
      case 'diagnosis':
        return ['AccountDiagnosisBuilder'];
      case 'procedure':
        return ['AccountProcedureBuilder'];
      case 'relatedAccount':
        return ['AccountRelatedAccountBuilder'];
      case 'currency':
        return ['CodeableConceptBuilder'];
      case 'balance':
        return ['AccountBalanceBuilder'];
      case 'calculatedAt':
        return ['FhirInstantBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountBuilder]
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
      case 'status':
        {
          status = AccountStatusBuilder.empty();
          return;
        }
      case 'billingStatus':
        {
          billingStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = <ReferenceBuilder>[];
          return;
        }
      case 'servicePeriod':
        {
          servicePeriod = PeriodBuilder.empty();
          return;
        }
      case 'coverage':
        {
          coverage = <AccountCoverageBuilder>[];
          return;
        }
      case 'owner':
        {
          owner = ReferenceBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'guarantor':
        {
          guarantor = <AccountGuarantorBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <AccountDiagnosisBuilder>[];
          return;
        }
      case 'procedure':
        {
          procedure = <AccountProcedureBuilder>[];
          return;
        }
      case 'relatedAccount':
        {
          relatedAccount = <AccountRelatedAccountBuilder>[];
          return;
        }
      case 'currency':
        {
          currency = CodeableConceptBuilder.empty();
          return;
        }
      case 'balance':
        {
          balance = <AccountBalanceBuilder>[];
          return;
        }
      case 'calculatedAt':
        {
          calculatedAt = FhirInstantBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountBuilder clone() => throw UnimplementedError();
  @override
  AccountBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    AccountStatusBuilder? status,
    CodeableConceptBuilder? billingStatus,
    CodeableConceptBuilder? type,
    FhirStringBuilder? name,
    List<ReferenceBuilder>? subject,
    PeriodBuilder? servicePeriod,
    List<AccountCoverageBuilder>? coverage,
    ReferenceBuilder? owner,
    FhirMarkdownBuilder? description,
    List<AccountGuarantorBuilder>? guarantor,
    List<AccountDiagnosisBuilder>? diagnosis,
    List<AccountProcedureBuilder>? procedure,
    List<AccountRelatedAccountBuilder>? relatedAccount,
    CodeableConceptBuilder? currency,
    List<AccountBalanceBuilder>? balance,
    FhirInstantBuilder? calculatedAt,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AccountBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      billingStatus: billingStatus ?? this.billingStatus,
      type: type ?? this.type,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      servicePeriod: servicePeriod ?? this.servicePeriod,
      coverage: coverage ?? this.coverage,
      owner: owner ?? this.owner,
      description: description ?? this.description,
      guarantor: guarantor ?? this.guarantor,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      relatedAccount: relatedAccount ?? this.relatedAccount,
      currency: currency ?? this.currency,
      balance: balance ?? this.balance,
      calculatedAt: calculatedAt ?? this.calculatedAt,
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
    if (o is! AccountBuilder) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      billingStatus,
      o.billingStatus,
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicePeriod,
      o.servicePeriod,
    )) {
      return false;
    }
    if (!listEquals<AccountCoverageBuilder>(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      owner,
      o.owner,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<AccountGuarantorBuilder>(
      guarantor,
      o.guarantor,
    )) {
      return false;
    }
    if (!listEquals<AccountDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<AccountProcedureBuilder>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!listEquals<AccountRelatedAccountBuilder>(
      relatedAccount,
      o.relatedAccount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      currency,
      o.currency,
    )) {
      return false;
    }
    if (!listEquals<AccountBalanceBuilder>(
      balance,
      o.balance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      calculatedAt,
      o.calculatedAt,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountCoverageBuilder]
/// The party(s) that are responsible for covering the payment of this
/// account, and what order should they be applied to the account.
class AccountCoverageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountCoverageBuilder]

  AccountCoverageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coverage,
    this.priority,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.coverage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountCoverageBuilder.empty() => AccountCoverageBuilder(
        coverage: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountCoverageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.coverage';
    return AccountCoverageBuilder(
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
      coverage: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'coverage',
        ReferenceBuilder.fromJson,
        '$objectPath.coverage',
      ),
      priority: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'priority',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.priority',
      ),
    );
  }

  /// Deserialize [AccountCoverageBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountCoverageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountCoverageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountCoverageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountCoverageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountCoverageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountCoverageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountCoverageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountCoverage';

  /// [coverage]
  /// The party(s) that contribute to payment (or part of) of the charges
  /// applied to this account (including self-pay).
  ///
  /// A coverage may only be responsible for specific types of charges, and
  /// the sequence of the coverages in the account could be important when
  /// processing billing.
  ReferenceBuilder? coverage;

  /// [priority]
  /// The priority of the coverage in the context of this account.
  FhirPositiveIntBuilder? priority;

  /// Converts a [AccountCoverageBuilder]
  /// to [AccountCoverage]
  @override
  AccountCoverage build() => AccountCoverage.fromJson(toJson());

  /// Converts a [AccountCoverageBuilder]
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
    addField('coverage', coverage);
    addField('priority', priority);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coverage',
      'priority',
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
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
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
      case 'coverage':
        {
          if (child is ReferenceBuilder) {
            coverage = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is FhirPositiveIntBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  priority = converted;
                  return;
                }
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
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'priority':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountCoverageBuilder]
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
      case 'coverage':
        {
          coverage = ReferenceBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountCoverageBuilder clone() => throw UnimplementedError();
  @override
  AccountCoverageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? coverage,
    FhirPositiveIntBuilder? priority,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountCoverageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      priority: priority ?? this.priority,
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
    if (o is! AccountCoverageBuilder) {
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
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountGuarantorBuilder]
/// The parties responsible for balancing the account if other payment
/// options fall short.
class AccountGuarantorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountGuarantorBuilder]

  AccountGuarantorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.party,
    this.onHold,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.guarantor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountGuarantorBuilder.empty() => AccountGuarantorBuilder(
        party: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountGuarantorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.guarantor';
    return AccountGuarantorBuilder(
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
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
      onHold: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'onHold',
        FhirBooleanBuilder.fromJson,
        '$objectPath.onHold',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [AccountGuarantorBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountGuarantorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountGuarantorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountGuarantorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountGuarantorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountGuarantorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountGuarantorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountGuarantorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountGuarantor';

  /// [party]
  /// The entity who is responsible.
  ReferenceBuilder? party;

  /// [onHold]
  /// A guarantor may be placed on credit hold or otherwise have their role
  /// temporarily suspended.
  FhirBooleanBuilder? onHold;

  /// [period]
  /// The timeframe during which the guarantor accepts responsibility for the
  /// account.
  PeriodBuilder? period;

  /// Converts a [AccountGuarantorBuilder]
  /// to [AccountGuarantor]
  @override
  AccountGuarantor build() => AccountGuarantor.fromJson(toJson());

  /// Converts a [AccountGuarantorBuilder]
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
    addField('party', party);
    addField('onHold', onHold);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'party',
      'onHold',
      'period',
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
      case 'party':
        if (party != null) {
          fields.add(party!);
        }
      case 'onHold':
        if (onHold != null) {
          fields.add(onHold!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onHold':
        {
          if (child is FhirBooleanBuilder) {
            onHold = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                onHold = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'party':
        return ['ReferenceBuilder'];
      case 'onHold':
        return ['FhirBooleanBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountGuarantorBuilder]
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
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      case 'onHold':
        {
          onHold = FhirBooleanBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountGuarantorBuilder clone() => throw UnimplementedError();
  @override
  AccountGuarantorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? party,
    FhirBooleanBuilder? onHold,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountGuarantorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      onHold: onHold ?? this.onHold,
      period: period ?? this.period,
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
    if (o is! AccountGuarantorBuilder) {
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
      party,
      o.party,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onHold,
      o.onHold,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountDiagnosisBuilder]
/// When using an account for billing a specific Encounter the set of
/// diagnoses that are relevant for billing are stored here on the account
/// where they are able to be sequenced appropriately prior to processing
/// to produce claim(s).
class AccountDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountDiagnosisBuilder]

  AccountDiagnosisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.condition,
    this.dateOfDiagnosis,
    this.type,
    this.onAdmission,
    this.packageCode,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountDiagnosisBuilder.empty() => AccountDiagnosisBuilder(
        condition: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.diagnosis';
    return AccountDiagnosisBuilder(
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
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      condition: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'condition',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.condition',
      ),
      dateOfDiagnosis: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateOfDiagnosis',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateOfDiagnosis',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      onAdmission: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'onAdmission',
        FhirBooleanBuilder.fromJson,
        '$objectPath.onAdmission',
      ),
      packageCode: (json['packageCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packageCode',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AccountDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountDiagnosisBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountDiagnosis';

  /// [sequence]
  /// Ranking of the diagnosis (for each type).
  FhirPositiveIntBuilder? sequence;

  /// [condition]
  /// The diagnosis relevant to the account.
  CodeableReferenceBuilder? condition;

  /// [dateOfDiagnosis]
  /// Ranking of the diagnosis (for each type).
  FhirDateTimeBuilder? dateOfDiagnosis;

  /// [type]
  /// Type that this diagnosis has relevant to the account (e.g. admission,
  /// billing, discharge …).
  List<CodeableConceptBuilder>? type;

  /// [onAdmission]
  /// Was the Diagnosis present on Admission in the related Encounter.
  FhirBooleanBuilder? onAdmission;

  /// [packageCode]
  /// The package code can be used to group diagnoses that may be priced or
  /// delivered as a single product. Such as DRGs.
  List<CodeableConceptBuilder>? packageCode;

  /// Converts a [AccountDiagnosisBuilder]
  /// to [AccountDiagnosis]
  @override
  AccountDiagnosis build() => AccountDiagnosis.fromJson(toJson());

  /// Converts a [AccountDiagnosisBuilder]
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
    addField('sequence', sequence);
    addField('condition', condition);
    addField('dateOfDiagnosis', dateOfDiagnosis);
    addField('type', type);
    addField('onAdmission', onAdmission);
    addField('packageCode', packageCode);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'condition',
      'dateOfDiagnosis',
      'type',
      'onAdmission',
      'packageCode',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
      case 'dateOfDiagnosis':
        if (dateOfDiagnosis != null) {
          fields.add(dateOfDiagnosis!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'onAdmission':
        if (onAdmission != null) {
          fields.add(onAdmission!);
        }
      case 'packageCode':
        if (packageCode != null) {
          fields.addAll(packageCode!);
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
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  sequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is CodeableReferenceBuilder) {
            condition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dateOfDiagnosis':
        {
          if (child is FhirDateTimeBuilder) {
            dateOfDiagnosis = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateOfDiagnosis = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onAdmission':
        {
          if (child is FhirBooleanBuilder) {
            onAdmission = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                onAdmission = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packageCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            packageCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            packageCode = [
              ...(packageCode ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'condition':
        return ['CodeableReferenceBuilder'];
      case 'dateOfDiagnosis':
        return ['FhirDateTimeBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'onAdmission':
        return ['FhirBooleanBuilder'];
      case 'packageCode':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountDiagnosisBuilder]
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
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = CodeableReferenceBuilder.empty();
          return;
        }
      case 'dateOfDiagnosis':
        {
          dateOfDiagnosis = FhirDateTimeBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'onAdmission':
        {
          onAdmission = FhirBooleanBuilder.empty();
          return;
        }
      case 'packageCode':
        {
          packageCode = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  AccountDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableReferenceBuilder? condition,
    FhirDateTimeBuilder? dateOfDiagnosis,
    List<CodeableConceptBuilder>? type,
    FhirBooleanBuilder? onAdmission,
    List<CodeableConceptBuilder>? packageCode,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      condition: condition ?? this.condition,
      dateOfDiagnosis: dateOfDiagnosis ?? this.dateOfDiagnosis,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
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
    if (o is! AccountDiagnosisBuilder) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateOfDiagnosis,
      o.dateOfDiagnosis,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onAdmission,
      o.onAdmission,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      packageCode,
      o.packageCode,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountProcedureBuilder]
/// When using an account for billing a specific Encounter the set of
/// procedures that are relevant for billing are stored here on the account
/// where they are able to be sequenced appropriately prior to processing
/// to produce claim(s).
class AccountProcedureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountProcedureBuilder]

  AccountProcedureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.code,
    this.dateOfService,
    this.type,
    this.packageCode,
    this.device,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.procedure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountProcedureBuilder.empty() => AccountProcedureBuilder(
        code: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.procedure';
    return AccountProcedureBuilder(
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
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      code: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'code',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.code',
      ),
      dateOfService: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateOfService',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateOfService',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      packageCode: (json['packageCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packageCode',
              },
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.device',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AccountProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountProcedureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountProcedure';

  /// [sequence]
  /// Ranking of the procedure (for each type).
  FhirPositiveIntBuilder? sequence;

  /// [code]
  /// The procedure relevant to the account.
  CodeableReferenceBuilder? code;

  /// [dateOfService]
  /// Date of the procedure when using a coded procedure. If using a
  /// reference to a procedure, then the date on the procedure should be
  /// used.
  FhirDateTimeBuilder? dateOfService;

  /// [type]
  /// How this procedure value should be used in charging the account.
  List<CodeableConceptBuilder>? type;

  /// [packageCode]
  /// The package code can be used to group procedures that may be priced or
  /// delivered as a single product. Such as DRGs.
  List<CodeableConceptBuilder>? packageCode;

  /// [device]
  /// Any devices that were associated with the procedure relevant to the
  /// account.
  List<ReferenceBuilder>? device;

  /// Converts a [AccountProcedureBuilder]
  /// to [AccountProcedure]
  @override
  AccountProcedure build() => AccountProcedure.fromJson(toJson());

  /// Converts a [AccountProcedureBuilder]
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
    addField('sequence', sequence);
    addField('code', code);
    addField('dateOfService', dateOfService);
    addField('type', type);
    addField('packageCode', packageCode);
    addField('device', device);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'code',
      'dateOfService',
      'type',
      'packageCode',
      'device',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'dateOfService':
        if (dateOfService != null) {
          fields.add(dateOfService!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'packageCode':
        if (packageCode != null) {
          fields.addAll(packageCode!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
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
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  sequence = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableReferenceBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dateOfService':
        {
          if (child is FhirDateTimeBuilder) {
            dateOfService = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateOfService = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packageCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            packageCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            packageCode = [
              ...(packageCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            device = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            device = [
              ...(device ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'code':
        return ['CodeableReferenceBuilder'];
      case 'dateOfService':
        return ['FhirDateTimeBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'packageCode':
        return ['CodeableConceptBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountProcedureBuilder]
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
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableReferenceBuilder.empty();
          return;
        }
      case 'dateOfService':
        {
          dateOfService = FhirDateTimeBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'packageCode':
        {
          packageCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'device':
        {
          device = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountProcedureBuilder clone() => throw UnimplementedError();
  @override
  AccountProcedureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableReferenceBuilder? code,
    FhirDateTimeBuilder? dateOfService,
    List<CodeableConceptBuilder>? type,
    List<CodeableConceptBuilder>? packageCode,
    List<ReferenceBuilder>? device,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountProcedureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      code: code ?? this.code,
      dateOfService: dateOfService ?? this.dateOfService,
      type: type ?? this.type,
      packageCode: packageCode ?? this.packageCode,
      device: device ?? this.device,
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
    if (o is! AccountProcedureBuilder) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateOfService,
      o.dateOfService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      packageCode,
      o.packageCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      device,
      o.device,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountRelatedAccountBuilder]
/// Other associated accounts related to this account.
class AccountRelatedAccountBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountRelatedAccountBuilder]

  AccountRelatedAccountBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relationship,
    this.account,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.relatedAccount',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountRelatedAccountBuilder.empty() => AccountRelatedAccountBuilder(
        account: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountRelatedAccountBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.relatedAccount';
    return AccountRelatedAccountBuilder(
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
      relationship: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'relationship',
        CodeableConceptBuilder.fromJson,
        '$objectPath.relationship',
      ),
      account: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'account',
        ReferenceBuilder.fromJson,
        '$objectPath.account',
      ),
    );
  }

  /// Deserialize [AccountRelatedAccountBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountRelatedAccountBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountRelatedAccountBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountRelatedAccountBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountRelatedAccountBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountRelatedAccountBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountRelatedAccountBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountRelatedAccountBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountRelatedAccount';

  /// [relationship]
  /// Relationship of the associated Account.
  CodeableConceptBuilder? relationship;

  /// [account]
  /// Reference to an associated Account.
  ReferenceBuilder? account;

  /// Converts a [AccountRelatedAccountBuilder]
  /// to [AccountRelatedAccount]
  @override
  AccountRelatedAccount build() => AccountRelatedAccount.fromJson(toJson());

  /// Converts a [AccountRelatedAccountBuilder]
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
    addField('relationship', relationship);
    addField('account', account);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relationship',
      'account',
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
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'account':
        if (account != null) {
          fields.add(account!);
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
      case 'relationship':
        {
          if (child is CodeableConceptBuilder) {
            relationship = child;
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
      case 'relationship':
        return ['CodeableConceptBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountRelatedAccountBuilder]
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
      case 'relationship':
        {
          relationship = CodeableConceptBuilder.empty();
          return;
        }
      case 'account':
        {
          account = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AccountRelatedAccountBuilder clone() => throw UnimplementedError();
  @override
  AccountRelatedAccountBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? relationship,
    ReferenceBuilder? account,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountRelatedAccountBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationship: relationship ?? this.relationship,
      account: account ?? this.account,
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
    if (o is! AccountRelatedAccountBuilder) {
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
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      account,
      o.account,
    )) {
      return false;
    }
    return true;
  }
}

/// [AccountBalanceBuilder]
/// The calculated account balances - these are calculated and processed by
/// the finance system. The balances with a `term` that is not current are
/// usually generated/updated by an invoicing or similar process.
class AccountBalanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AccountBalanceBuilder]

  AccountBalanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.aggregate,
    this.term,
    this.estimate,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Account.balance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AccountBalanceBuilder.empty() => AccountBalanceBuilder(
        amount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountBalanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Account.balance';
    return AccountBalanceBuilder(
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
      aggregate: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'aggregate',
        CodeableConceptBuilder.fromJson,
        '$objectPath.aggregate',
      ),
      term: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'term',
        CodeableConceptBuilder.fromJson,
        '$objectPath.term',
      ),
      estimate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'estimate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.estimate',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [AccountBalanceBuilder]
  /// from a [String] or [YamlMap] object
  factory AccountBalanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountBalanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountBalanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountBalanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountBalanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountBalanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AccountBalanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AccountBalance';

  /// [aggregate]
  /// Who is expected to pay this part of the balance.
  CodeableConceptBuilder? aggregate;

  /// [term]
  /// The term of the account balances - The balance value is the amount that
  /// was outstanding for this age.
  CodeableConceptBuilder? term;

  /// [estimate]
  /// The amount is only an estimated value - this is likely common for
  /// `current` term balances, but not with known terms (that were generated
  /// by a backend process).
  FhirBooleanBuilder? estimate;

  /// [amount]
  /// The actual balance value calculated for the age defined in the term
  /// property.
  MoneyBuilder? amount;

  /// Converts a [AccountBalanceBuilder]
  /// to [AccountBalance]
  @override
  AccountBalance build() => AccountBalance.fromJson(toJson());

  /// Converts a [AccountBalanceBuilder]
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
    addField('aggregate', aggregate);
    addField('term', term);
    addField('estimate', estimate);
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
      'aggregate',
      'term',
      'estimate',
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
      case 'aggregate':
        if (aggregate != null) {
          fields.add(aggregate!);
        }
      case 'term':
        if (term != null) {
          fields.add(term!);
        }
      case 'estimate':
        if (estimate != null) {
          fields.add(estimate!);
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
      case 'aggregate':
        {
          if (child is CodeableConceptBuilder) {
            aggregate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'term':
        {
          if (child is CodeableConceptBuilder) {
            term = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'estimate':
        {
          if (child is FhirBooleanBuilder) {
            estimate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                estimate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'aggregate':
        return ['CodeableConceptBuilder'];
      case 'term':
        return ['CodeableConceptBuilder'];
      case 'estimate':
        return ['FhirBooleanBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AccountBalanceBuilder]
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
      case 'aggregate':
        {
          aggregate = CodeableConceptBuilder.empty();
          return;
        }
      case 'term':
        {
          term = CodeableConceptBuilder.empty();
          return;
        }
      case 'estimate':
        {
          estimate = FhirBooleanBuilder.empty();
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
  AccountBalanceBuilder clone() => throw UnimplementedError();
  @override
  AccountBalanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? aggregate,
    CodeableConceptBuilder? term,
    FhirBooleanBuilder? estimate,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AccountBalanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      aggregate: aggregate ?? this.aggregate,
      term: term ?? this.term,
      estimate: estimate ?? this.estimate,
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
    if (o is! AccountBalanceBuilder) {
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
      aggregate,
      o.aggregate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      term,
      o.term,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      estimate,
      o.estimate,
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
