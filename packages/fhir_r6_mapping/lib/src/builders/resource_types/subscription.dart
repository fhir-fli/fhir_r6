import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        Subscription,
        SubscriptionFilterBy,
        SubscriptionParameter,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubscriptionBuilder]
/// The subscription resource describes a particular client's request to be
/// notified about a SubscriptionTopic.
class SubscriptionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubscriptionBuilder]

  SubscriptionBuilder({
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
    this.status,
    this.topic,
    this.contact,
    this.end,
    this.managingEntity,
    this.reason,
    this.filterBy,
    this.channelType,
    this.endpoint,
    this.parameter,
    this.heartbeatPeriod,
    this.timeout,
    this.contentType,
    this.content,
    this.maxCount,
  }) : super(
          objectPath: 'Subscription',
          resourceType: R5ResourceType.Subscription,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubscriptionBuilder.empty() => SubscriptionBuilder(
        status: SubscriptionStatusCodesBuilder.values.first,
        topic: FhirCanonicalBuilder.empty(),
        channelType: CodingBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Subscription';
    return SubscriptionBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      status: JsonParser.parsePrimitive<SubscriptionStatusCodesBuilder>(
        json,
        'status',
        SubscriptionStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      topic: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'topic',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.topic',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      end: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'end',
        FhirInstantBuilder.fromJson,
        '$objectPath.end',
      ),
      managingEntity: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'managingEntity',
        ReferenceBuilder.fromJson,
        '$objectPath.managingEntity',
      ),
      reason: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'reason',
        FhirStringBuilder.fromJson,
        '$objectPath.reason',
      ),
      filterBy: (json['filterBy'] as List<dynamic>?)
          ?.map<SubscriptionFilterByBuilder>(
            (v) => SubscriptionFilterByBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.filterBy',
              },
            ),
          )
          .toList(),
      channelType: JsonParser.parseObject<CodingBuilder>(
        json,
        'channelType',
        CodingBuilder.fromJson,
        '$objectPath.channelType',
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'endpoint',
        FhirUrlBuilder.fromJson,
        '$objectPath.endpoint',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<SubscriptionParameterBuilder>(
            (v) => SubscriptionParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      heartbeatPeriod: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'heartbeatPeriod',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.heartbeatPeriod',
      ),
      timeout: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'timeout',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.timeout',
      ),
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      content: JsonParser.parsePrimitive<SubscriptionPayloadContentBuilder>(
        json,
        'content',
        SubscriptionPayloadContentBuilder.fromJson,
        '$objectPath.content',
      ),
      maxCount: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'maxCount',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.maxCount',
      ),
    );
  }

  /// Deserialize [SubscriptionBuilder]
  /// from a [String] or [YamlMap] object
  factory SubscriptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [name]
  /// A natural language name identifying the subscription.
  FhirStringBuilder? name;

  /// [status]
  /// The status of the subscription, which marks the server state for
  /// managing the subscription.
  SubscriptionStatusCodesBuilder? status;

  /// [topic]
  /// The reference to the subscription topic to be notified about.
  FhirCanonicalBuilder? topic;

  /// [contact]
  /// Contact details for a human to contact about the subscription. The
  /// primary use of this for system administrator troubleshooting.
  List<ContactPointBuilder>? contact;

  /// [end]
  /// The time for the server to turn the subscription off.
  FhirInstantBuilder? end;

  /// [managingEntity]
  /// Entity with authorization to make subsequent revisions to the
  /// Subscription and also determines what data the subscription is
  /// authorized to disclose.
  ReferenceBuilder? managingEntity;

  /// [reason]
  /// A description of why this subscription is defined.
  FhirStringBuilder? reason;

  /// [filterBy]
  /// The filter properties to be applied to narrow the subscription topic
  /// stream. When multiple filters are applied, evaluates to true if all the
  /// conditions applicable to that resource are met; otherwise it returns
  /// false (i.e., logical AND).
  List<SubscriptionFilterByBuilder>? filterBy;

  /// [channelType]
  /// The type of channel to send notifications on.
  CodingBuilder? channelType;

  /// [endpoint]
  /// The url that describes the actual end-point to send notifications to.
  FhirUrlBuilder? endpoint;

  /// [parameter]
  /// Channel-dependent information to send as part of the notification
  /// (e.g., HTTP Headers).
  List<SubscriptionParameterBuilder>? parameter;

  /// [heartbeatPeriod]
  /// If present, a 'heartbeat' notification (keep-alive) is sent via this
  /// channel with an interval period equal to this elements integer value in
  /// seconds. If not present, a heartbeat notification is not sent.
  FhirUnsignedIntBuilder? heartbeatPeriod;

  /// [timeout]
  /// If present, the maximum amount of time a server will allow before
  /// failing a notification attempt.
  FhirUnsignedIntBuilder? timeout;

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
  FhirCodeBuilder? contentType;

  /// [content]
  /// How much of the resource content to deliver in the notification
  /// payload. The choices are an empty payload, only the resource id, or the
  /// full resource content.
  SubscriptionPayloadContentBuilder? content;

  /// [maxCount]
  /// If present, the maximum number of events that will be included in a
  /// notification bundle. Note that this is not a strict limit on the number
  /// of entries in a bundle, as dependent resources can be included.
  FhirPositiveIntBuilder? maxCount;

  /// Converts a [SubscriptionBuilder]
  /// to [Subscription]
  @override
  Subscription build() => Subscription.fromJson(toJson());

  /// Converts a [SubscriptionBuilder]
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
    addField('name', name);
    addField('status', status);
    addField('topic', topic);
    addField('contact', contact);
    addField('end', end);
    addField('managingEntity', managingEntity);
    addField('reason', reason);
    addField('filterBy', filterBy);
    addField('channelType', channelType);
    addField('endpoint', endpoint);
    addField('parameter', parameter);
    addField('heartbeatPeriod', heartbeatPeriod);
    addField('timeout', timeout);
    addField('contentType', contentType);
    addField('content', content);
    addField('maxCount', maxCount);
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'topic':
        if (topic != null) {
          fields.add(topic!);
        }
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
        if (channelType != null) {
          fields.add(channelType!);
        }
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
      case 'status':
        {
          if (child is SubscriptionStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SubscriptionStatusCodesBuilder(stringValue);
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
      case 'topic':
        {
          if (child is FhirCanonicalBuilder) {
            topic = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                topic = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'end':
        {
          if (child is FhirInstantBuilder) {
            end = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                end = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'managingEntity':
        {
          if (child is ReferenceBuilder) {
            managingEntity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is FhirStringBuilder) {
            reason = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                reason = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'filterBy':
        {
          if (child is List<SubscriptionFilterByBuilder>) {
            // Replace or create new list
            filterBy = child;
            return;
          } else if (child is SubscriptionFilterByBuilder) {
            // Add single element to existing list or create new list
            filterBy = [
              ...(filterBy ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'channelType':
        {
          if (child is CodingBuilder) {
            channelType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpoint':
        {
          if (child is FhirUrlBuilder) {
            endpoint = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                endpoint = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parameter':
        {
          if (child is List<SubscriptionParameterBuilder>) {
            // Replace or create new list
            parameter = child;
            return;
          } else if (child is SubscriptionParameterBuilder) {
            // Add single element to existing list or create new list
            parameter = [
              ...(parameter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'heartbeatPeriod':
        {
          if (child is FhirUnsignedIntBuilder) {
            heartbeatPeriod = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  heartbeatPeriod = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeout':
        {
          if (child is FhirUnsignedIntBuilder) {
            timeout = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  timeout = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                contentType = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'content':
        {
          if (child is SubscriptionPayloadContentBuilder) {
            content = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    SubscriptionPayloadContentBuilder(stringValue);
                content = converted;
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
      case 'maxCount':
        {
          if (child is FhirPositiveIntBuilder) {
            maxCount = child;
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
                  maxCount = converted;
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'topic':
        return ['FhirCanonicalBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'end':
        return ['FhirInstantBuilder'];
      case 'managingEntity':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['FhirStringBuilder'];
      case 'filterBy':
        return ['SubscriptionFilterByBuilder'];
      case 'channelType':
        return ['CodingBuilder'];
      case 'endpoint':
        return ['FhirUrlBuilder'];
      case 'parameter':
        return ['SubscriptionParameterBuilder'];
      case 'heartbeatPeriod':
        return ['FhirUnsignedIntBuilder'];
      case 'timeout':
        return ['FhirUnsignedIntBuilder'];
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'content':
        return ['FhirCodeEnumBuilder'];
      case 'maxCount':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = SubscriptionStatusCodesBuilder.empty();
          return;
        }
      case 'topic':
        {
          topic = FhirCanonicalBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactPointBuilder>[];
          return;
        }
      case 'end':
        {
          end = FhirInstantBuilder.empty();
          return;
        }
      case 'managingEntity':
        {
          managingEntity = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = FhirStringBuilder.empty();
          return;
        }
      case 'filterBy':
        {
          filterBy = <SubscriptionFilterByBuilder>[];
          return;
        }
      case 'channelType':
        {
          channelType = CodingBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = FhirUrlBuilder.empty();
          return;
        }
      case 'parameter':
        {
          parameter = <SubscriptionParameterBuilder>[];
          return;
        }
      case 'heartbeatPeriod':
        {
          heartbeatPeriod = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'timeout':
        {
          timeout = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'content':
        {
          content = SubscriptionPayloadContentBuilder.empty();
          return;
        }
      case 'maxCount':
        {
          maxCount = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubscriptionBuilder clone() => throw UnimplementedError();
  @override
  SubscriptionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? name,
    SubscriptionStatusCodesBuilder? status,
    FhirCanonicalBuilder? topic,
    List<ContactPointBuilder>? contact,
    FhirInstantBuilder? end,
    ReferenceBuilder? managingEntity,
    FhirStringBuilder? reason,
    List<SubscriptionFilterByBuilder>? filterBy,
    CodingBuilder? channelType,
    FhirUrlBuilder? endpoint,
    List<SubscriptionParameterBuilder>? parameter,
    FhirUnsignedIntBuilder? heartbeatPeriod,
    FhirUnsignedIntBuilder? timeout,
    FhirCodeBuilder? contentType,
    SubscriptionPayloadContentBuilder? content,
    FhirPositiveIntBuilder? maxCount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubscriptionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      status: status ?? this.status,
      topic: topic ?? this.topic,
      contact: contact ?? this.contact,
      end: end ?? this.end,
      managingEntity: managingEntity ?? this.managingEntity,
      reason: reason ?? this.reason,
      filterBy: filterBy ?? this.filterBy,
      channelType: channelType ?? this.channelType,
      endpoint: endpoint ?? this.endpoint,
      parameter: parameter ?? this.parameter,
      heartbeatPeriod: heartbeatPeriod ?? this.heartbeatPeriod,
      timeout: timeout ?? this.timeout,
      contentType: contentType ?? this.contentType,
      content: content ?? this.content,
      maxCount: maxCount ?? this.maxCount,
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
    if (o is! SubscriptionBuilder) {
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
    if (!listEquals<ContactPointBuilder>(
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
    if (!listEquals<SubscriptionFilterByBuilder>(
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
    if (!listEquals<SubscriptionParameterBuilder>(
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

/// [SubscriptionFilterByBuilder]
/// The filter properties to be applied to narrow the subscription topic
/// stream. When multiple filters are applied, evaluates to true if all the
/// conditions applicable to that resource are met; otherwise it returns
/// false (i.e., logical AND).
class SubscriptionFilterByBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubscriptionFilterByBuilder]

  SubscriptionFilterByBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.resourceType,
    this.filterParameter,
    this.comparator,
    this.modifier,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Subscription.filterBy',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubscriptionFilterByBuilder.empty() => SubscriptionFilterByBuilder(
        filterParameter: FhirStringBuilder.empty(),
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionFilterByBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Subscription.filterBy';
    return SubscriptionFilterByBuilder(
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
      resourceType: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'resourceType',
        FhirUriBuilder.fromJson,
        '$objectPath.resourceType',
      ),
      filterParameter: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'filterParameter',
        FhirStringBuilder.fromJson,
        '$objectPath.filterParameter',
      ),
      comparator: JsonParser.parsePrimitive<SearchComparatorBuilder>(
        json,
        'comparator',
        SearchComparatorBuilder.fromJson,
        '$objectPath.comparator',
      ),
      modifier: JsonParser.parsePrimitive<SearchModifierCodeBuilder>(
        json,
        'modifier',
        SearchModifierCodeBuilder.fromJson,
        '$objectPath.modifier',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [SubscriptionFilterByBuilder]
  /// from a [String] or [YamlMap] object
  factory SubscriptionFilterByBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionFilterByBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionFilterByBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionFilterByBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionFilterByBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionFilterByBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionFilterByBuilder.fromJson(json);
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
  FhirUriBuilder? resourceType;

  /// [filterParameter]
  /// The filter as defined in the
  /// `SubscriptionTopic.canFilterBy.filterParameter` element.
  FhirStringBuilder? filterParameter;

  /// [comparator]
  /// Comparator applied to this filter parameter.
  SearchComparatorBuilder? comparator;

  /// [modifier]
  /// Modifier applied to this filter parameter.
  SearchModifierCodeBuilder? modifier;

  /// [value]
  /// The literal value or resource path as is legal in search - for example,
  /// `Patient/123` or `le1950`.
  FhirStringBuilder? value;

  /// Converts a [SubscriptionFilterByBuilder]
  /// to [SubscriptionFilterBy]
  @override
  SubscriptionFilterBy build() => SubscriptionFilterBy.fromJson(toJson());

  /// Converts a [SubscriptionFilterByBuilder]
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
    addField('resourceType', resourceType);
    addField('filterParameter', filterParameter);
    addField('comparator', comparator);
    addField('modifier', modifier);
    addField('value', value);
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
      case 'resourceType':
        if (resourceType != null) {
          fields.add(resourceType!);
        }
      case 'filterParameter':
        if (filterParameter != null) {
          fields.add(filterParameter!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'resourceType':
        {
          if (child is FhirUriBuilder) {
            resourceType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                resourceType = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'filterParameter':
        {
          if (child is FhirStringBuilder) {
            filterParameter = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                filterParameter = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comparator':
        {
          if (child is SearchComparatorBuilder) {
            comparator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SearchComparatorBuilder(stringValue);
                comparator = converted;
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
      case 'modifier':
        {
          if (child is SearchModifierCodeBuilder) {
            modifier = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SearchModifierCodeBuilder(stringValue);
                modifier = converted;
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
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'resourceType':
        return ['FhirUriBuilder'];
      case 'filterParameter':
        return ['FhirStringBuilder'];
      case 'comparator':
        return ['FhirCodeEnumBuilder'];
      case 'modifier':
        return ['FhirCodeEnumBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionFilterByBuilder]
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
      case 'resourceType':
        {
          resourceType = FhirUriBuilder.empty();
          return;
        }
      case 'filterParameter':
        {
          filterParameter = FhirStringBuilder.empty();
          return;
        }
      case 'comparator':
        {
          comparator = SearchComparatorBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = SearchModifierCodeBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubscriptionFilterByBuilder clone() => throw UnimplementedError();
  @override
  SubscriptionFilterByBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? resourceType,
    FhirStringBuilder? filterParameter,
    SearchComparatorBuilder? comparator,
    SearchModifierCodeBuilder? modifier,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubscriptionFilterByBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resourceType: resourceType ?? this.resourceType,
      filterParameter: filterParameter ?? this.filterParameter,
      comparator: comparator ?? this.comparator,
      modifier: modifier ?? this.modifier,
      value: value ?? this.value,
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
    if (o is! SubscriptionFilterByBuilder) {
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

/// [SubscriptionParameterBuilder]
/// Channel-dependent information to send as part of the notification
/// (e.g., HTTP Headers).
class SubscriptionParameterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubscriptionParameterBuilder]

  SubscriptionParameterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Subscription.parameter',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubscriptionParameterBuilder.empty() => SubscriptionParameterBuilder(
        name: FhirStringBuilder.empty(),
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubscriptionParameterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Subscription.parameter';
    return SubscriptionParameterBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [SubscriptionParameterBuilder]
  /// from a [String] or [YamlMap] object
  factory SubscriptionParameterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubscriptionParameterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubscriptionParameterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubscriptionParameterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubscriptionParameterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubscriptionParameterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubscriptionParameterBuilder.fromJson(json);
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
  FhirStringBuilder? name;

  /// [value]
  /// Parameter value for information passed to the channel for
  /// notifications, for example in the case of a REST hook wanting to pass
  /// through an authorization header, the value would be `Bearer 0193...`.
  FhirStringBuilder? value;

  /// Converts a [SubscriptionParameterBuilder]
  /// to [SubscriptionParameter]
  @override
  SubscriptionParameter build() => SubscriptionParameter.fromJson(toJson());

  /// Converts a [SubscriptionParameterBuilder]
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
    addField('name', name);
    addField('value', value);
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubscriptionParameterBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubscriptionParameterBuilder clone() => throw UnimplementedError();
  @override
  SubscriptionParameterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubscriptionParameterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      value: value ?? this.value,
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
    if (o is! SubscriptionParameterBuilder) {
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
