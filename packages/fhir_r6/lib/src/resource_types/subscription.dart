import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'subscription.g.dart';

/// [Subscription]
/// The subscription resource describes a particular client's request to be
/// notified about a SubscriptionTopic.
class Subscription extends DomainResource {
  /// Primary constructor for
  /// [Subscription]

  const Subscription({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    required this.status,
    required this.topic,
    this.contact,
    this.end,
    this.managingEntity,
    this.reason,
    this.filterBy,
    required this.channelType,
    this.endpoint,
    this.parameter,
    this.heartbeatPeriod,
    this.timeout,
    this.contentType,
    this.content,
    this.maxCount,
  }) : super(
          resourceType: R5ResourceType.Subscription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Subscription.fromJson(
    Map<String, dynamic> json,
  ) {
    return Subscription(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<SubscriptionStatusCodes>(
        json,
        'status',
        SubscriptionStatusCodes.fromJson,
      )!,
      topic: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'topic',
        FhirCanonical.fromJson,
      )!,
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
      ),
      managingEntity: JsonParser.parseObject<Reference>(
        json,
        'managingEntity',
        Reference.fromJson,
      ),
      reason: JsonParser.parsePrimitive<FhirString>(
        json,
        'reason',
        FhirString.fromJson,
      ),
      filterBy: (json['filterBy'] as List<dynamic>?)
          ?.map<SubscriptionFilterBy>(
            (v) => SubscriptionFilterBy.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      channelType: JsonParser.parseObject<Coding>(
        json,
        'channelType',
        Coding.fromJson,
      )!,
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<SubscriptionParameter>(
            (v) => SubscriptionParameter.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      heartbeatPeriod: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'heartbeatPeriod',
        FhirUnsignedInt.fromJson,
      ),
      timeout: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'timeout',
        FhirUnsignedInt.fromJson,
      ),
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
      ),
      content: JsonParser.parsePrimitive<SubscriptionPayloadContent>(
        json,
        'content',
        SubscriptionPayloadContent.fromJson,
      ),
      maxCount: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'maxCount',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [Subscription]
  /// from a [String] or [YamlMap] object
  factory Subscription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Subscription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Subscription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Subscription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Subscription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Subscription.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Subscription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Subscription';

  /// [identifier]
  /// A formal identifier that is used to identify this code system when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the subscription.
  final FhirString? name;

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  final SubscriptionStatusCodes status;

  /// [topic]
  /// The reference to the subscription topic to be notified about.
  final FhirCanonical topic;

  /// [contact]
  /// Contact details for a human to contact about the subscription. The
  /// primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [end]
  /// The time for the server to turn the subscription off.
  final FhirInstant? end;

  /// [managingEntity]
  /// Entity with authorization to make subsequent revisions to the
  /// Subscription and also determines what data the subscription is
  /// authorized to disclose.
  final Reference? managingEntity;

  /// [reason]
  /// A description of why this subscription is defined.
  final FhirString? reason;

  /// [filterBy]
  /// The filter properties to be applied to narrow the subscription topic
  /// stream. When multiple filters are applied, evaluates to true if all the
  /// conditions applicable to that resource are met; otherwise it returns
  /// false (i.e., logical AND).
  final List<SubscriptionFilterBy>? filterBy;

  /// [channelType]
  /// The type of channel to send notifications on.
  final Coding channelType;

  /// [endpoint]
  /// The url that describes the actual end-point to send notifications to.
  final FhirUrl? endpoint;

  /// [parameter]
  /// Channel-dependent information to send as part of the notification
  /// (e.g., HTTP Headers).
  final List<SubscriptionParameter>? parameter;

  /// [heartbeatPeriod]
  /// If present, a 'heartbeat' notification (keep-alive) is sent via this
  /// channel with an interval period equal to this elements integer value in
  /// seconds. If not present, a heartbeat notification is not sent.
  final FhirUnsignedInt? heartbeatPeriod;

  /// [timeout]
  /// If present, the maximum amount of time a server will allow before
  /// failing a notification attempt.
  final FhirUnsignedInt? timeout;

  /// [contentType]
  /// The MIME type to send the payload in - e.g., `application/fhir+xml` or
  /// `application/fhir+json`. Note that:
  ///
  /// * clients may request notifications in a specific FHIR version by using
  /// the [FHIR Version Parameter](http.html#version-parameter) - e.g.,
  /// `application/fhir+json; fhirVersion=4.0`.
  ///
  /// * additional MIME types can be allowed by channels - e.g., `text/plain`
  /// and `text/html` are defined by the Email channel.
  final FhirCode? contentType;

  /// [content]
  /// How much of the resource content to deliver in the notification
  /// payload. The choices are an empty payload, only the resource id, or the
  /// full resource content.
  final SubscriptionPayloadContent? content;

  /// [maxCount]
  /// If present, the maximum number of events that will be included in a
  /// notification bundle. Note that this is not a strict limit on the number
  /// of entries in a bundle, as dependent resources can be included.
  final FhirPositiveInt? maxCount;
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
      'name',
      name,
    );
    addField(
      'status',
      status,
    );
    addField(
      'topic',
      topic,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'end',
      end,
    );
    addField(
      'managingEntity',
      managingEntity,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'filterBy',
      filterBy,
    );
    addField(
      'channelType',
      channelType,
    );
    addField(
      'endpoint',
      endpoint,
    );
    addField(
      'parameter',
      parameter,
    );
    addField(
      'heartbeatPeriod',
      heartbeatPeriod,
    );
    addField(
      'timeout',
      timeout,
    );
    addField(
      'contentType',
      contentType,
    );
    addField(
      'content',
      content,
    );
    addField(
      'maxCount',
      maxCount,
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
      'name',
      'status',
      'topic',
      'contact',
      'end',
      'managingEntity',
      'reason',
      'filterBy',
      'channelType',
      'endpoint',
      'parameter',
      'heartbeatPeriod',
      'timeout',
      'contentType',
      'content',
      'maxCount',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'status':
        fields.add(status);
      case 'topic':
        fields.add(topic);
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'managingEntity':
        if (managingEntity != null) {
          fields.add(managingEntity!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'filterBy':
        if (filterBy != null) {
          fields.addAll(filterBy!);
        }
      case 'channelType':
        fields.add(channelType);
      case 'endpoint':
        if (endpoint != null) {
          fields.add(endpoint!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'heartbeatPeriod':
        if (heartbeatPeriod != null) {
          fields.add(heartbeatPeriod!);
        }
      case 'timeout':
        if (timeout != null) {
          fields.add(timeout!);
        }
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'content':
        if (content != null) {
          fields.add(content!);
        }
      case 'maxCount':
        if (maxCount != null) {
          fields.add(maxCount!);
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
  Subscription clone() => copyWith();

  /// Copy function for [Subscription]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionCopyWith<Subscription> get copyWith =>
      _$SubscriptionCopyWithImpl<Subscription>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Subscription) {
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
      name,
      o.name,
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
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      managingEntity,
      o.managingEntity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionFilterBy>(
      filterBy,
      o.filterBy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      channelType,
      o.channelType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!listEquals<SubscriptionParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      heartbeatPeriod,
      o.heartbeatPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeout,
      o.timeout,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxCount,
      o.maxCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubscriptionFilterBy]
/// The filter properties to be applied to narrow the subscription topic
/// stream. When multiple filters are applied, evaluates to true if all the
/// conditions applicable to that resource are met; otherwise it returns
/// false (i.e., logical AND).
class SubscriptionFilterBy extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionFilterBy]

  const SubscriptionFilterBy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.resourceType,
    required this.filterParameter,
    this.comparator,
    this.modifier,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionFilterBy.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionFilterBy(
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
      resourceType: JsonParser.parsePrimitive<FhirUri>(
        json,
        'resourceType',
        FhirUri.fromJson,
      ),
      filterParameter: JsonParser.parsePrimitive<FhirString>(
        json,
        'filterParameter',
        FhirString.fromJson,
      )!,
      comparator: JsonParser.parsePrimitive<SearchComparator>(
        json,
        'comparator',
        SearchComparator.fromJson,
      ),
      modifier: JsonParser.parsePrimitive<SearchModifierCode>(
        json,
        'modifier',
        SearchModifierCode.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [SubscriptionFilterBy]
  /// from a [String] or [YamlMap] object
  factory SubscriptionFilterBy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionFilterBy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionFilterBy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionFilterBy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionFilterBy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionFilterBy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionFilterBy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionFilterBy';

  /// [resourceType]
  /// A resource listed in the `SubscriptionTopic` this `Subscription`
  /// references (`SubscriptionTopic.canFilterBy.resource`). This element can
  /// be used to differentiate filters for topics that include more than one
  /// resource type.
  final FhirUri? resourceType;

  /// [filterParameter]
  /// The filter as defined in the
  /// `SubscriptionTopic.canFilterBy.filterParameter` element.
  final FhirString filterParameter;

  /// [comparator]
  /// Comparator applied to this filter parameter.
  final SearchComparator? comparator;

  /// [modifier]
  /// Modifier applied to this filter parameter.
  final SearchModifierCode? modifier;

  /// [value]
  /// The literal value or resource path as is legal in search - for example,
  /// `Patient/123` or `le1950`.
  final FhirString value;
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
      'resourceType',
      resourceType,
    );
    addField(
      'filterParameter',
      filterParameter,
    );
    addField(
      'comparator',
      comparator,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'value',
      value,
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
      'resourceType',
      'filterParameter',
      'comparator',
      'modifier',
      'value',
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
      case 'resourceType':
        if (resourceType != null) {
          fields.add(resourceType!);
        }
      case 'filterParameter':
        fields.add(filterParameter);
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
        }
      case 'value':
        fields.add(value);
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
  SubscriptionFilterBy clone() => copyWith();

  /// Copy function for [SubscriptionFilterBy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionFilterByCopyWith<SubscriptionFilterBy> get copyWith =>
      _$SubscriptionFilterByCopyWithImpl<SubscriptionFilterBy>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionFilterBy) {
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
      resourceType,
      o.resourceType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      filterParameter,
      o.filterParameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubscriptionParameter]
/// Channel-dependent information to send as part of the notification
/// (e.g., HTTP Headers).
class SubscriptionParameter extends BackboneElement {
  /// Primary constructor for
  /// [SubscriptionParameter]

  const SubscriptionParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubscriptionParameter(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [SubscriptionParameter]
  /// from a [String] or [YamlMap] object
  factory SubscriptionParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubscriptionParameter';

  /// [name]
  /// Parameter name for information passed to the channel for notifications,
  /// for example in the case of a REST hook wanting to pass through an
  /// authorization header, the name would be Authorization.
  final FhirString name;

  /// [value]
  /// Parameter value for information passed to the channel for
  /// notifications, for example in the case of a REST hook wanting to pass
  /// through an authorization header, the value would be `Bearer 0193...`.
  final FhirString value;
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
      'name',
      name,
    );
    addField(
      'value',
      value,
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
      'name',
      'value',
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
      case 'name':
        fields.add(name);
      case 'value':
        fields.add(value);
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
  SubscriptionParameter clone() => copyWith();

  /// Copy function for [SubscriptionParameter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubscriptionParameterCopyWith<SubscriptionParameter> get copyWith =>
      _$SubscriptionParameterCopyWithImpl<SubscriptionParameter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubscriptionParameter) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
