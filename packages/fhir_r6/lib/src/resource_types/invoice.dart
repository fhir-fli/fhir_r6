import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'invoice.g.dart';

/// [Invoice]
/// Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.
class Invoice extends DomainResource {
  /// Primary constructor for
  /// [Invoice]

  const Invoice({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.cancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.creation,
    PeriodXInvoice? periodX,
    FhirDate? periodDate,
    Period? periodPeriod,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.note,
  })  : periodX = periodX ?? periodDate ?? periodPeriod,
        super(
          resourceType: R6ResourceType.Invoice,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Invoice.fromJson(
    Map<String, dynamic> json,
  ) {
    return Invoice(
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
      status: JsonParser.parsePrimitive<InvoiceStatus>(
        json,
        'status',
        InvoiceStatus.fromJson,
      )!,
      cancelledReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'cancelledReason',
        FhirString.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      creation: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'creation',
        FhirDateTime.fromJson,
      ),
      periodX: JsonParser.parsePolymorphic<PeriodXInvoice>(
        json,
        {
          'periodDate': FhirDate.fromJson,
          'periodPeriod': Period.fromJson,
        },
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<InvoiceParticipant>(
            (v) => InvoiceParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      issuer: JsonParser.parseObject<Reference>(
        json,
        'issuer',
        Reference.fromJson,
      ),
      account: JsonParser.parseObject<Reference>(
        json,
        'account',
        Reference.fromJson,
      ),
      lineItem: (json['lineItem'] as List<dynamic>?)
          ?.map<InvoiceLineItem>(
            (v) => InvoiceLineItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      totalPriceComponent: (json['totalPriceComponent'] as List<dynamic>?)
          ?.map<MonetaryComponent>(
            (v) => MonetaryComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      totalNet: JsonParser.parseObject<Money>(
        json,
        'totalNet',
        Money.fromJson,
      ),
      totalGross: JsonParser.parseObject<Money>(
        json,
        'totalGross',
        Money.fromJson,
      ),
      paymentTerms: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'paymentTerms',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Invoice]
  /// from a [String] or [YamlMap] object
  factory Invoice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Invoice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Invoice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Invoice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Invoice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Invoice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Invoice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Invoice';

  /// [identifier]
  /// Identifier of this Invoice, often used for reference in correspondence
  /// about this invoice or for tracking of payments.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the Invoice.
  final InvoiceStatus status;

  /// [cancelledReason]
  /// In case of Invoice cancellation a reason must be given (entered in
  /// error, superseded by corrected invoice etc.).
  final FhirString? cancelledReason;

  /// [type]
  /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  final CodeableConcept? type;

  /// [subject]
  /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  final Reference? subject;

  /// [recipient]
  /// The individual or Organization responsible for balancing of this
  /// invoice.
  final Reference? recipient;

  /// [date]
  /// Depricared by the element below.
  final FhirDateTime? date;

  /// [creation]
  /// Date/time(s) of when this Invoice was posted.
  final FhirDateTime? creation;

  /// [periodX]
  /// Date/time(s) range of services included in this invoice.
  final PeriodXInvoice? periodX;

  /// Getter for [periodDate] as a FhirDate
  FhirDate? get periodDate => periodX?.isAs<FhirDate>();

  /// Getter for [periodPeriod] as a Period
  Period? get periodPeriod => periodX?.isAs<Period>();

  /// [participant]
  /// Indicates who or what performed or participated in the charged service.
  final List<InvoiceParticipant>? participant;

  /// [issuer]
  /// The organizationissuing the Invoice.
  final Reference? issuer;

  /// [account]
  /// Account which is supposed to be balanced with this Invoice.
  final Reference? account;

  /// [lineItem]
  /// Each line item represents one charge for goods and services rendered.
  /// Details such.ofType(date), code and amount are found in the referenced
  /// ChargeItem resource.
  final List<InvoiceLineItem>? lineItem;

  /// [totalPriceComponent]
  /// The total amount for the Invoice may be calculated as the sum of the
  /// line items with surcharges/deductions that apply in certain conditions.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the total price was calculated.
  final List<MonetaryComponent>? totalPriceComponent;

  /// [totalNet]
  /// Invoice total , taxes excluded.
  final Money? totalNet;

  /// [totalGross]
  /// Invoice total, tax included.
  final Money? totalGross;

  /// [paymentTerms]
  /// Payment details such as banking details, period of payment,
  /// deductibles, methods of payment.
  final FhirMarkdown? paymentTerms;

  /// [note]
  /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  final List<Annotation>? note;
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
      'status',
      status,
    );
    addField(
      'cancelledReason',
      cancelledReason,
    );
    addField(
      'type',
      type,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'recipient',
      recipient,
    );
    addField(
      'date',
      date,
    );
    addField(
      'creation',
      creation,
    );
    if (periodX != null) {
      final fhirType = periodX!.fhirType;
      addField(
        'period${fhirType.capitalize()}',
        periodX,
      );
    }

    addField(
      'participant',
      participant,
    );
    addField(
      'issuer',
      issuer,
    );
    addField(
      'account',
      account,
    );
    addField(
      'lineItem',
      lineItem,
    );
    addField(
      'totalPriceComponent',
      totalPriceComponent,
    );
    addField(
      'totalNet',
      totalNet,
    );
    addField(
      'totalGross',
      totalGross,
    );
    addField(
      'paymentTerms',
      paymentTerms,
    );
    addField(
      'note',
      note,
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
      'status',
      'cancelledReason',
      'type',
      'subject',
      'recipient',
      'date',
      'creation',
      'periodX',
      'participant',
      'issuer',
      'account',
      'lineItem',
      'totalPriceComponent',
      'totalNet',
      'totalGross',
      'paymentTerms',
      'note',
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
      case 'status':
        fields.add(status);
      case 'cancelledReason':
        if (cancelledReason != null) {
          fields.add(cancelledReason!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.add(recipient!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'creation':
        if (creation != null) {
          fields.add(creation!);
        }
      case 'period':
        fields.add(periodX!);
      case 'periodX':
        fields.add(periodX!);
      case 'periodDate':
        if (periodX is FhirDate) {
          fields.add(periodX!);
        }
      case 'periodPeriod':
        if (periodX is Period) {
          fields.add(periodX!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
        }
      case 'account':
        if (account != null) {
          fields.add(account!);
        }
      case 'lineItem':
        if (lineItem != null) {
          fields.addAll(lineItem!);
        }
      case 'totalPriceComponent':
        if (totalPriceComponent != null) {
          fields.addAll(totalPriceComponent!);
        }
      case 'totalNet':
        if (totalNet != null) {
          fields.add(totalNet!);
        }
      case 'totalGross':
        if (totalGross != null) {
          fields.add(totalGross!);
        }
      case 'paymentTerms':
        if (paymentTerms != null) {
          fields.add(paymentTerms!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  Invoice clone() => copyWith();

  /// Copy function for [Invoice]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InvoiceCopyWith<Invoice> get copyWith => _$InvoiceCopyWithImpl<Invoice>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Invoice) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cancelledReason,
      o.cancelledReason,
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recipient,
      o.recipient,
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
      creation,
      o.creation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      periodX,
      o.periodX,
    )) {
      return false;
    }
    if (!listEquals<InvoiceParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<InvoiceLineItem>(
      lineItem,
      o.lineItem,
    )) {
      return false;
    }
    if (!listEquals<MonetaryComponent>(
      totalPriceComponent,
      o.totalPriceComponent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalNet,
      o.totalNet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      totalGross,
      o.totalGross,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentTerms,
      o.paymentTerms,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [InvoiceParticipant]
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceParticipant]

  const InvoiceParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return InvoiceParticipant(
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
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [InvoiceParticipant]
  /// from a [String] or [YamlMap] object
  factory InvoiceParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoiceParticipant';

  /// [role]
  /// Describes the type of involvement (e.g. transcriptionist, creator
  /// etc.). If the invoice has been created automatically, the Participant
  /// may be a billing engine or another kind of device.
  final CodeableConcept? role;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
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
      'role',
      role,
    );
    addField(
      'actor',
      actor,
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
      'role',
      'actor',
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
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'actor':
        fields.add(actor);
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
  InvoiceParticipant clone() => copyWith();

  /// Copy function for [InvoiceParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InvoiceParticipantCopyWith<InvoiceParticipant> get copyWith =>
      _$InvoiceParticipantCopyWithImpl<InvoiceParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InvoiceParticipant) {
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
      role,
      o.role,
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

/// [InvoiceLineItem]
/// Each line item represents one charge for goods and services rendered.
/// Details such.ofType(date), code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItem extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceLineItem]

  const InvoiceLineItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    ServicedXInvoiceLineItem? servicedX,
    FhirDate? servicedDate,
    Period? servicedPeriod,
    required this.chargeItemX,
    this.priceComponent,
    super.disallowExtensions,
  })  : servicedX = servicedX ?? servicedDate ?? servicedPeriod,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return InvoiceLineItem(
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
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      ),
      servicedX: JsonParser.parsePolymorphic<ServicedXInvoiceLineItem>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
      ),
      chargeItemX: JsonParser.parsePolymorphic<ChargeItemXInvoiceLineItem>(
        json,
        {
          'chargeItemReference': Reference.fromJson,
          'chargeItemCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<MonetaryComponent>(
            (v) => MonetaryComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InvoiceLineItem]
  /// from a [String] or [YamlMap] object
  factory InvoiceLineItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceLineItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceLineItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceLineItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceLineItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceLineItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InvoiceLineItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InvoiceLineItem';

  /// [sequence]
  /// Sequence in which the items appear on the invoice.
  final FhirPositiveInt? sequence;

  /// [servicedX]
  /// Date/time(s) range when this service was delivered or completed.
  final ServicedXInvoiceLineItem? servicedX;

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [chargeItemX]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  final ChargeItemXInvoiceLineItem chargeItemX;

  /// Getter for [chargeItemReference] as a Reference
  Reference? get chargeItemReference => chargeItemX.isAs<Reference>();

  /// Getter for [chargeItemCodeableConcept] as a CodeableConcept
  CodeableConcept? get chargeItemCodeableConcept =>
      chargeItemX.isAs<CodeableConcept>();

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice as to how the prices have been calculated.
  final List<MonetaryComponent>? priceComponent;
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
      'sequence',
      sequence,
    );
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField(
        'serviced${fhirType.capitalize()}',
        servicedX,
      );
    }

    final chargeItemXFhirType = chargeItemX.fhirType;
    addField(
      'chargeItem${chargeItemXFhirType.capitalize()}',
      chargeItemX,
    );

    addField(
      'priceComponent',
      priceComponent,
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
      'sequence',
      'servicedX',
      'chargeItemX',
      'priceComponent',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'chargeItem':
        fields.add(chargeItemX);
      case 'chargeItemX':
        fields.add(chargeItemX);
      case 'chargeItemReference':
        if (chargeItemX is Reference) {
          fields.add(chargeItemX);
        }
      case 'chargeItemCodeableConcept':
        if (chargeItemX is CodeableConcept) {
          fields.add(chargeItemX);
        }
      case 'priceComponent':
        if (priceComponent != null) {
          fields.addAll(priceComponent!);
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
  InvoiceLineItem clone() => copyWith();

  /// Copy function for [InvoiceLineItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InvoiceLineItemCopyWith<InvoiceLineItem> get copyWith =>
      _$InvoiceLineItemCopyWithImpl<InvoiceLineItem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InvoiceLineItem) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      chargeItemX,
      o.chargeItemX,
    )) {
      return false;
    }
    if (!listEquals<MonetaryComponent>(
      priceComponent,
      o.priceComponent,
    )) {
      return false;
    }
    return true;
  }
}
