import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ChargeItem,
        ChargeItemPerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItemBuilder]
/// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like
/// date, time, amounts and participating organizations and persons. Main
/// Usage of the ChargeItem is to enable the billing process and internal
/// cost allocation.
class ChargeItemBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ChargeItemBuilder]

  ChargeItemBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.definitionUri,
    this.definitionCanonical,
    this.status,
    this.partOf,
    this.code,
    this.subject,
    this.encounter,
    OccurrenceXChargeItemBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.unitPriceComponent,
    this.totalPriceComponent,
    this.overrideReason,
    this.enterer,
    this.enteredDate,
    this.reason,
    this.service,
    this.product,
    this.account,
    this.note,
    this.supportingInformation,
  })  : occurrenceX = occurrenceX ??
            occurrenceDateTime ??
            occurrencePeriod ??
            occurrenceTiming,
        super(
          objectPath: 'ChargeItem',
          resourceType: R5ResourceType.ChargeItem,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemBuilder.empty() => ChargeItemBuilder(
        status: ChargeItemStatusBuilder.values.first,
        code: CodeableConceptBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem';
    return ChargeItemBuilder(
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
      definitionUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'definitionUri',
        FhirUriBuilder.fromJson,
        '$objectPath.definitionUri',
      ),
      definitionCanonical: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'definitionCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definitionCanonical',
      ),
      status: JsonParser.parsePrimitive<ChargeItemStatusBuilder>(
        json,
        'status',
        ChargeItemStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXChargeItemBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
          'occurrenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ChargeItemPerformerBuilder>(
            (v) => ChargeItemPerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      performingOrganization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performingOrganization',
        ReferenceBuilder.fromJson,
        '$objectPath.performingOrganization',
      ),
      requestingOrganization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestingOrganization',
        ReferenceBuilder.fromJson,
        '$objectPath.requestingOrganization',
      ),
      costCenter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'costCenter',
        ReferenceBuilder.fromJson,
        '$objectPath.costCenter',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodysite',
              },
            ),
          )
          .toList(),
      unitPriceComponent: JsonParser.parseObject<MonetaryComponentBuilder>(
        json,
        'unitPriceComponent',
        MonetaryComponentBuilder.fromJson,
        '$objectPath.unitPriceComponent',
      ),
      totalPriceComponent: JsonParser.parseObject<MonetaryComponentBuilder>(
        json,
        'totalPriceComponent',
        MonetaryComponentBuilder.fromJson,
        '$objectPath.totalPriceComponent',
      ),
      overrideReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'overrideReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.overrideReason',
      ),
      enterer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'enterer',
        ReferenceBuilder.fromJson,
        '$objectPath.enterer',
      ),
      enteredDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'enteredDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.enteredDate',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.service',
              },
            ),
          )
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.product',
              },
            ),
          )
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItem';

  /// [identifier]
  /// Identifiers assigned to this event performer or other systems.
  List<IdentifierBuilder>? identifier;

  /// [definitionUri]
  /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  List<FhirUriBuilder>? definitionUri;

  /// [definitionCanonical]
  /// References the source of pricing information, rules of application for
  /// the code this ChargeItem uses.
  List<FhirCanonicalBuilder>? definitionCanonical;

  /// [status]
  /// The current state of the ChargeItem.
  ChargeItemStatusBuilder? status;

  /// [partOf]
  /// ChargeItems can be grouped to larger ChargeItems covering the whole
  /// set.
  List<ReferenceBuilder>? partOf;

  /// [code]
  /// A code that identifies the charge, like a billing code.
  CodeableConceptBuilder? code;

  /// [subject]
  /// The individual or set of individuals the action is being or was
  /// performed on.
  ReferenceBuilder? subject;

  /// [encounter]
  /// This ChargeItem has the details of how the associated Encounter should
  /// be billed or otherwise be handled by finance systems.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// Date/time(s) or duration when the charged service was applied.
  OccurrenceXChargeItemBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurrenceTiming] as a TimingBuilder
  TimingBuilder? get occurrenceTiming => occurrenceX?.isAs<TimingBuilder>();

  /// [performer]
  /// Indicates who or what performed or participated in the charged service.
  List<ChargeItemPerformerBuilder>? performer;

  /// [performingOrganization]
  /// The organization performing the service.
  ReferenceBuilder? performingOrganization;

  /// [requestingOrganization]
  /// The organization requesting the service.
  ReferenceBuilder? requestingOrganization;

  /// [costCenter]
  /// The financial cost center permits the tracking of charge attribution.
  ReferenceBuilder? costCenter;

  /// [quantity]
  /// Quantity of which the charge item has been serviced.
  QuantityBuilder? quantity;

  /// [bodysite]
  /// The anatomical location where the related service has been applied.
  List<CodeableConceptBuilder>? bodysite;

  /// [unitPriceComponent]
  /// The unit price of the chargable item.
  MonetaryComponentBuilder? unitPriceComponent;

  /// [totalPriceComponent]
  /// The total price for the chargable item, accounting for the quantity.
  MonetaryComponentBuilder? totalPriceComponent;

  /// [overrideReason]
  /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason
  /// for this action.
  CodeableConceptBuilder? overrideReason;

  /// [enterer]
  /// The device, practitioner, etc. who entered the charge item.
  ReferenceBuilder? enterer;

  /// [enteredDate]
  /// Date the charge item was entered.
  FhirDateTimeBuilder? enteredDate;

  /// [reason]
  /// Describes why the event occurred in coded or textual form.
  List<CodeableConceptBuilder>? reason;

  /// [service]
  /// Indicated the rendered service that caused this charge.
  List<CodeableReferenceBuilder>? service;

  /// [product]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  List<CodeableReferenceBuilder>? product;

  /// [account]
  /// Account into which this ChargeItems belongs.
  List<ReferenceBuilder>? account;

  /// [note]
  /// Comments made about the event by the performer, subject or other
  /// participants.
  List<AnnotationBuilder>? note;

  /// [supportingInformation]
  /// Further information supporting this charge.
  List<ReferenceBuilder>? supportingInformation;

  /// Converts a [ChargeItemBuilder]
  /// to [ChargeItem]
  @override
  ChargeItem build() => ChargeItem.fromJson(toJson());

  /// Converts a [ChargeItemBuilder]
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
    addField('definitionUri', definitionUri);
    addField('definitionCanonical', definitionCanonical);
    addField('status', status);
    addField('partOf', partOf);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('performer', performer);
    addField('performingOrganization', performingOrganization);
    addField('requestingOrganization', requestingOrganization);
    addField('costCenter', costCenter);
    addField('quantity', quantity);
    addField('bodysite', bodysite);
    addField('unitPriceComponent', unitPriceComponent);
    addField('totalPriceComponent', totalPriceComponent);
    addField('overrideReason', overrideReason);
    addField('enterer', enterer);
    addField('enteredDate', enteredDate);
    addField('reason', reason);
    addField('service', service);
    addField('product', product);
    addField('account', account);
    addField('note', note);
    addField('supportingInformation', supportingInformation);
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
      'definitionUri',
      'definitionCanonical',
      'status',
      'partOf',
      'code',
      'subject',
      'encounter',
      'occurrenceX',
      'performer',
      'performingOrganization',
      'requestingOrganization',
      'costCenter',
      'quantity',
      'bodysite',
      'unitPriceComponent',
      'totalPriceComponent',
      'overrideReason',
      'enterer',
      'enteredDate',
      'reason',
      'service',
      'product',
      'account',
      'note',
      'supportingInformation',
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
      case 'definitionUri':
        if (definitionUri != null) {
          fields.addAll(definitionUri!);
        }
      case 'definitionCanonical':
        if (definitionCanonical != null) {
          fields.addAll(definitionCanonical!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is TimingBuilder) {
          fields.add(occurrenceX!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'performingOrganization':
        if (performingOrganization != null) {
          fields.add(performingOrganization!);
        }
      case 'requestingOrganization':
        if (requestingOrganization != null) {
          fields.add(requestingOrganization!);
        }
      case 'costCenter':
        if (costCenter != null) {
          fields.add(costCenter!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'bodysite':
        if (bodysite != null) {
          fields.addAll(bodysite!);
        }
      case 'unitPriceComponent':
        if (unitPriceComponent != null) {
          fields.add(unitPriceComponent!);
        }
      case 'totalPriceComponent':
        if (totalPriceComponent != null) {
          fields.add(totalPriceComponent!);
        }
      case 'overrideReason':
        if (overrideReason != null) {
          fields.add(overrideReason!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'enteredDate':
        if (enteredDate != null) {
          fields.add(enteredDate!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'service':
        if (service != null) {
          fields.addAll(service!);
        }
      case 'product':
        if (product != null) {
          fields.addAll(product!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
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
      case 'definitionUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            definitionUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            definitionUri = [
              ...(definitionUri ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              definitionUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                definitionUri = [
                  ...(definitionUri ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            definitionCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            definitionCanonical = [
              ...(definitionCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              definitionCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                definitionCanonical = [
                  ...(definitionCanonical ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is ChargeItemStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ChargeItemStatusBuilder(stringValue);
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
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXChargeItemBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is TimingBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is TimingBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<ChargeItemPerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ChargeItemPerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performingOrganization':
        {
          if (child is ReferenceBuilder) {
            performingOrganization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestingOrganization':
        {
          if (child is ReferenceBuilder) {
            requestingOrganization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'costCenter':
        {
          if (child is ReferenceBuilder) {
            costCenter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodysite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            bodysite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            bodysite = [
              ...(bodysite ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitPriceComponent':
        {
          if (child is MonetaryComponentBuilder) {
            unitPriceComponent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'totalPriceComponent':
        {
          if (child is MonetaryComponentBuilder) {
            totalPriceComponent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'overrideReason':
        {
          if (child is CodeableConceptBuilder) {
            overrideReason = child;
            return;
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
      case 'enteredDate':
        {
          if (child is FhirDateTimeBuilder) {
            enteredDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                enteredDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'service':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            service = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            service = [
              ...(service ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'product':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            product = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            product = [
              ...(product ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'account':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            account = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            account = [
              ...(account ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInformation = [
              ...(supportingInformation ?? []),
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
      case 'definitionUri':
        return ['FhirUriBuilder'];
      case 'definitionCanonical':
        return ['FhirCanonicalBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'occurrenceTiming':
        return ['TimingBuilder'];
      case 'performer':
        return ['ChargeItemPerformerBuilder'];
      case 'performingOrganization':
        return ['ReferenceBuilder'];
      case 'requestingOrganization':
        return ['ReferenceBuilder'];
      case 'costCenter':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'bodysite':
        return ['CodeableConceptBuilder'];
      case 'unitPriceComponent':
        return ['MonetaryComponentBuilder'];
      case 'totalPriceComponent':
        return ['MonetaryComponentBuilder'];
      case 'overrideReason':
        return ['CodeableConceptBuilder'];
      case 'enterer':
        return ['ReferenceBuilder'];
      case 'enteredDate':
        return ['FhirDateTimeBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'service':
        return ['CodeableReferenceBuilder'];
      case 'product':
        return ['CodeableReferenceBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemBuilder]
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
      case 'definitionUri':
        {
          definitionUri = <FhirUriBuilder>[];
          return;
        }
      case 'definitionCanonical':
        {
          definitionCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'status':
        {
          status = ChargeItemStatusBuilder.empty();
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'occurrenceTiming':
        {
          occurrenceX = TimingBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ChargeItemPerformerBuilder>[];
          return;
        }
      case 'performingOrganization':
        {
          performingOrganization = ReferenceBuilder.empty();
          return;
        }
      case 'requestingOrganization':
        {
          requestingOrganization = ReferenceBuilder.empty();
          return;
        }
      case 'costCenter':
        {
          costCenter = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'bodysite':
        {
          bodysite = <CodeableConceptBuilder>[];
          return;
        }
      case 'unitPriceComponent':
        {
          unitPriceComponent = MonetaryComponentBuilder.empty();
          return;
        }
      case 'totalPriceComponent':
        {
          totalPriceComponent = MonetaryComponentBuilder.empty();
          return;
        }
      case 'overrideReason':
        {
          overrideReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'enterer':
        {
          enterer = ReferenceBuilder.empty();
          return;
        }
      case 'enteredDate':
        {
          enteredDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      case 'service':
        {
          service = <CodeableReferenceBuilder>[];
          return;
        }
      case 'product':
        {
          product = <CodeableReferenceBuilder>[];
          return;
        }
      case 'account':
        {
          account = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ChargeItemBuilder clone() => throw UnimplementedError();
  @override
  ChargeItemBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<FhirUriBuilder>? definitionUri,
    List<FhirCanonicalBuilder>? definitionCanonical,
    ChargeItemStatusBuilder? status,
    List<ReferenceBuilder>? partOf,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OccurrenceXChargeItemBuilder? occurrenceX,
    List<ChargeItemPerformerBuilder>? performer,
    ReferenceBuilder? performingOrganization,
    ReferenceBuilder? requestingOrganization,
    ReferenceBuilder? costCenter,
    QuantityBuilder? quantity,
    List<CodeableConceptBuilder>? bodysite,
    MonetaryComponentBuilder? unitPriceComponent,
    MonetaryComponentBuilder? totalPriceComponent,
    CodeableConceptBuilder? overrideReason,
    ReferenceBuilder? enterer,
    FhirDateTimeBuilder? enteredDate,
    List<CodeableConceptBuilder>? reason,
    List<CodeableReferenceBuilder>? service,
    List<CodeableReferenceBuilder>? product,
    List<ReferenceBuilder>? account,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? supportingInformation,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    TimingBuilder? occurrenceTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ChargeItemBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      definitionUri: definitionUri ?? this.definitionUri,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      status: status ?? this.status,
      partOf: partOf ?? this.partOf,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          occurrenceTiming ??
          this.occurrenceX,
      performer: performer ?? this.performer,
      performingOrganization:
          performingOrganization ?? this.performingOrganization,
      requestingOrganization:
          requestingOrganization ?? this.requestingOrganization,
      costCenter: costCenter ?? this.costCenter,
      quantity: quantity ?? this.quantity,
      bodysite: bodysite ?? this.bodysite,
      unitPriceComponent: unitPriceComponent ?? this.unitPriceComponent,
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      overrideReason: overrideReason ?? this.overrideReason,
      enterer: enterer ?? this.enterer,
      enteredDate: enteredDate ?? this.enteredDate,
      reason: reason ?? this.reason,
      service: service ?? this.service,
      product: product ?? this.product,
      account: account ?? this.account,
      note: note ?? this.note,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
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
    if (o is! ChargeItemBuilder) {
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
    if (!listEquals<FhirUriBuilder>(
      definitionUri,
      o.definitionUri,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      definitionCanonical,
      o.definitionCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      partOf,
      o.partOf,
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
      subject,
      o.subject,
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
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!listEquals<ChargeItemPerformerBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performingOrganization,
      o.performingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestingOrganization,
      o.requestingOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      costCenter,
      o.costCenter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      bodysite,
      o.bodysite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPriceComponent,
      o.unitPriceComponent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalPriceComponent,
      o.totalPriceComponent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      overrideReason,
      o.overrideReason,
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
      enteredDate,
      o.enteredDate,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      service,
      o.service,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      product,
      o.product,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ChargeItemPerformerBuilder]
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ChargeItemPerformerBuilder]

  ChargeItemPerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ChargeItem.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ChargeItemPerformerBuilder.empty() => ChargeItemPerformerBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemPerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ChargeItem.performer';
    return ChargeItemPerformerBuilder(
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
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [ChargeItemPerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory ChargeItemPerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemPerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemPerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemPerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemPerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemPerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ChargeItemPerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemPerformer';

  /// [function_]
  /// Describes the type of performance or participation(e.g. primary
  /// surgeon, anesthesiologiest, etc.).
  CodeableConceptBuilder? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  ReferenceBuilder? actor;

  /// Converts a [ChargeItemPerformerBuilder]
  /// to [ChargeItemPerformer]
  @override
  ChargeItemPerformer build() => ChargeItemPerformer.fromJson(toJson());

  /// Converts a [ChargeItemPerformerBuilder]
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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ChargeItemPerformerBuilder]
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
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ChargeItemPerformerBuilder clone() => throw UnimplementedError();
  @override
  ChargeItemPerformerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ChargeItemPerformerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
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
    if (o is! ChargeItemPerformerBuilder) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}
