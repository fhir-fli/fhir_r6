import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MessageHeader,
        MessageHeaderDestination,
        MessageHeaderResponse,
        MessageHeaderSource,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MessageHeaderBuilder]
/// The header for a message exchange that is either requesting or
/// responding to an action. The reference(s) that are the subject of the
/// action as well as other information related to the action are typically
/// transmitted in a bundle in which the MessageHeader resource instance is
/// the first resource in the bundle.
class MessageHeaderBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MessageHeaderBuilder]

  MessageHeaderBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    EventXMessageHeaderBuilder? eventX,
    CodingBuilder? eventCoding,
    FhirCanonicalBuilder? eventCanonical,
    this.destination,
    this.sender,
    this.author,
    this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
  })  : eventX = eventX ?? eventCoding ?? eventCanonical,
        super(
          objectPath: 'MessageHeader',
          resourceType: R5ResourceType.MessageHeader,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderBuilder.empty() => MessageHeaderBuilder(
        eventX: CodingBuilder.empty(),
        source: MessageHeaderSourceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader';
    return MessageHeaderBuilder(
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
      eventX: JsonParser.parsePolymorphic<EventXMessageHeaderBuilder>(
        json,
        {
          'eventCoding': CodingBuilder.fromJson,
          'eventCanonical': FhirCanonicalBuilder.fromJson,
        },
        objectPath,
      ),
      destination: (json['destination'] as List<dynamic>?)
          ?.map<MessageHeaderDestinationBuilder>(
            (v) => MessageHeaderDestinationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.destination',
              },
            ),
          )
          .toList(),
      sender: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sender',
        ReferenceBuilder.fromJson,
        '$objectPath.sender',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      source: JsonParser.parseObject<MessageHeaderSourceBuilder>(
        json,
        'source',
        MessageHeaderSourceBuilder.fromJson,
        '$objectPath.source',
      ),
      responsible: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'responsible',
        ReferenceBuilder.fromJson,
        '$objectPath.responsible',
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      response: JsonParser.parseObject<MessageHeaderResponseBuilder>(
        json,
        'response',
        MessageHeaderResponseBuilder.fromJson,
        '$objectPath.response',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      definition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'definition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.definition',
      ),
    );
  }

  /// Deserialize [MessageHeaderBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeader';

  /// [eventX]
  /// Code that identifies the event this message represents and connects it
  /// with its definition. Events defined as part of the FHIR specification
  /// are defined by the implementation. Alternatively a canonical uri to the
  /// EventDefinition.
  EventXMessageHeaderBuilder? eventX;

  /// Getter for [eventCoding] as a CodingBuilder
  CodingBuilder? get eventCoding => eventX?.isAs<CodingBuilder>();

  /// Getter for [eventCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get eventCanonical =>
      eventX?.isAs<FhirCanonicalBuilder>();

  /// [destination]
  /// The destination application which the message is intended for.
  List<MessageHeaderDestinationBuilder>? destination;

  /// [sender]
  /// Identifies the sending system to allow the use of a trust relationship.
  ReferenceBuilder? sender;

  /// [author]
  /// The logical author of the message - the personor device that decided
  /// the described event should happen. When there is more than one
  /// candidate, pick the most proximal to the MessageHeader. Can provide
  /// other authors in extensions.
  ReferenceBuilder? author;

  /// [source]
  /// The source application from which this message originated.
  MessageHeaderSourceBuilder? source;

  /// [responsible]
  /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event
  /// happened under the policies of the responsible party.
  ReferenceBuilder? responsible;

  /// [reason]
  /// Coded indication of the cause for the event - indicates a reason for
  /// the occurrence of the event that is a focus of this message.
  CodeableConceptBuilder? reason;

  /// [response]
  /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  MessageHeaderResponseBuilder? response;

  /// [focus]
  /// The actual data of the message - a reference to the root/focus class of
  /// the event. This is allowed to be a Parameters resource.
  List<ReferenceBuilder>? focus;

  /// [definition]
  /// Permanent link to the MessageDefinition for this message.
  FhirCanonicalBuilder? definition;

  /// Converts a [MessageHeaderBuilder]
  /// to [MessageHeader]
  @override
  MessageHeader build() => MessageHeader.fromJson(toJson());

  /// Converts a [MessageHeaderBuilder]
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
    if (eventX != null) {
      final fhirType = eventX!.fhirType;
      addField('event${fhirType.capitalizeFirstLetter()}', eventX);
    }

    addField('destination', destination);
    addField('sender', sender);
    addField('author', author);
    addField('source', source);
    addField('responsible', responsible);
    addField('reason', reason);
    addField('response', response);
    addField('focus', focus);
    addField('definition', definition);
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
      'eventX',
      'destination',
      'sender',
      'author',
      'source',
      'responsible',
      'reason',
      'response',
      'focus',
      'definition',
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
      case 'event':
        if (eventX != null) {
          fields.add(eventX!);
        }
      case 'eventX':
        if (eventX != null) {
          fields.add(eventX!);
        }
      case 'eventCoding':
        if (eventX is CodingBuilder) {
          fields.add(eventX!);
        }
      case 'eventCanonical':
        if (eventX is FhirCanonicalBuilder) {
          fields.add(eventX!);
        }
      case 'destination':
        if (destination != null) {
          fields.addAll(destination!);
        }
      case 'sender':
        if (sender != null) {
          fields.add(sender!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
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
      case 'event':
      case 'eventX':
        {
          if (child is EventXMessageHeaderBuilder) {
            eventX = child;
            return;
          } else {
            if (child is CodingBuilder) {
              eventX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              eventX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventCoding':
        {
          if (child is CodingBuilder) {
            eventX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eventCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            eventX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'destination':
        {
          if (child is List<MessageHeaderDestinationBuilder>) {
            // Replace or create new list
            destination = child;
            return;
          } else if (child is MessageHeaderDestinationBuilder) {
            // Add single element to existing list or create new list
            destination = [
              ...(destination ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sender':
        {
          if (child is ReferenceBuilder) {
            sender = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is MessageHeaderSourceBuilder) {
            source = child;
            return;
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
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is MessageHeaderResponseBuilder) {
            response = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focus':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [
              ...(focus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is FhirCanonicalBuilder) {
            definition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                definition = converted;
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
      case 'event':
      case 'eventX':
        return [
          'CodingBuilder',
          'FhirCanonicalBuilder',
        ];
      case 'eventCoding':
        return ['CodingBuilder'];
      case 'eventCanonical':
        return ['FhirCanonicalBuilder'];
      case 'destination':
        return ['MessageHeaderDestinationBuilder'];
      case 'sender':
        return ['ReferenceBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'source':
        return ['MessageHeaderSourceBuilder'];
      case 'responsible':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'response':
        return ['MessageHeaderResponseBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'definition':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderBuilder]
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
      case 'event':
      case 'eventX':
      case 'eventCoding':
        {
          eventX = CodingBuilder.empty();
          return;
        }
      case 'eventCanonical':
        {
          eventX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = <MessageHeaderDestinationBuilder>[];
          return;
        }
      case 'sender':
        {
          sender = ReferenceBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'source':
        {
          source = MessageHeaderSourceBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'response':
        {
          response = MessageHeaderResponseBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
          return;
        }
      case 'definition':
        {
          definition = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MessageHeaderBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EventXMessageHeaderBuilder? eventX,
    List<MessageHeaderDestinationBuilder>? destination,
    ReferenceBuilder? sender,
    ReferenceBuilder? author,
    MessageHeaderSourceBuilder? source,
    ReferenceBuilder? responsible,
    CodeableConceptBuilder? reason,
    MessageHeaderResponseBuilder? response,
    List<ReferenceBuilder>? focus,
    FhirCanonicalBuilder? definition,
    CodingBuilder? eventCoding,
    FhirCanonicalBuilder? eventCanonical,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MessageHeaderBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventX: eventX ?? eventCoding ?? eventCanonical ?? this.eventX,
      destination: destination ?? this.destination,
      sender: sender ?? this.sender,
      author: author ?? this.author,
      source: source ?? this.source,
      responsible: responsible ?? this.responsible,
      reason: reason ?? this.reason,
      response: response ?? this.response,
      focus: focus ?? this.focus,
      definition: definition ?? this.definition,
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
    if (o is! MessageHeaderBuilder) {
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
    if (!equalsDeepWithNull(
      eventX,
      o.eventX,
    )) {
      return false;
    }
    if (!listEquals<MessageHeaderDestinationBuilder>(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sender,
      o.sender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
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
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderDestinationBuilder]
/// The destination application which the message is intended for.
class MessageHeaderDestinationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderDestinationBuilder]

  MessageHeaderDestinationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    EndpointXMessageHeaderDestinationBuilder? endpointX,
    FhirUrlBuilder? endpointUrl,
    ReferenceBuilder? endpointReference,
    this.name,
    this.target,
    this.receiver,
    super.disallowExtensions,
  })  : endpointX = endpointX ?? endpointUrl ?? endpointReference,
        super(
          objectPath: 'MessageHeader.destination',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderDestinationBuilder.empty() =>
      MessageHeaderDestinationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderDestinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.destination';
    return MessageHeaderDestinationBuilder(
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
      endpointX:
          JsonParser.parsePolymorphic<EndpointXMessageHeaderDestinationBuilder>(
        json,
        {
          'endpointUrl': FhirUrlBuilder.fromJson,
          'endpointReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      target: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'target',
        ReferenceBuilder.fromJson,
        '$objectPath.target',
      ),
      receiver: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'receiver',
        ReferenceBuilder.fromJson,
        '$objectPath.receiver',
      ),
    );
  }

  /// Deserialize [MessageHeaderDestinationBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderDestinationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderDestinationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderDestinationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderDestinationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderDestinationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderDestinationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderDestinationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderDestination';

  /// [endpointX]
  /// Indicates where the message should be routed.
  EndpointXMessageHeaderDestinationBuilder? endpointX;

  /// Getter for [endpointUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get endpointUrl => endpointX?.isAs<FhirUrlBuilder>();

  /// Getter for [endpointReference] as a ReferenceBuilder
  ReferenceBuilder? get endpointReference =>
      endpointX?.isAs<ReferenceBuilder>();

  /// [name]
  /// Human-readable name for the target system.
  FhirStringBuilder? name;

  /// [target]
  /// Identifies the target end system in situations where the initial
  /// message transmission is to an intermediary system.
  ReferenceBuilder? target;

  /// [receiver]
  /// Allows data conveyed by a message to be addressed to a particular
  /// person or department when routing to a specific application isn't
  /// sufficient.
  ReferenceBuilder? receiver;

  /// Converts a [MessageHeaderDestinationBuilder]
  /// to [MessageHeaderDestination]
  @override
  MessageHeaderDestination build() =>
      MessageHeaderDestination.fromJson(toJson());

  /// Converts a [MessageHeaderDestinationBuilder]
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
    if (endpointX != null) {
      final fhirType = endpointX!.fhirType;
      addField('endpoint${fhirType.capitalizeFirstLetter()}', endpointX);
    }

    addField('name', name);
    addField('target', target);
    addField('receiver', receiver);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'endpointX',
      'name',
      'target',
      'receiver',
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
      case 'endpoint':
        if (endpointX != null) {
          fields.add(endpointX!);
        }
      case 'endpointX':
        if (endpointX != null) {
          fields.add(endpointX!);
        }
      case 'endpointUrl':
        if (endpointX is FhirUrlBuilder) {
          fields.add(endpointX!);
        }
      case 'endpointReference':
        if (endpointX is ReferenceBuilder) {
          fields.add(endpointX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'receiver':
        if (receiver != null) {
          fields.add(receiver!);
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
      case 'endpoint':
      case 'endpointX':
        {
          if (child is EndpointXMessageHeaderDestinationBuilder) {
            endpointX = child;
            return;
          } else {
            if (child is FhirUrlBuilder) {
              endpointX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              endpointX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpointUrl':
        {
          if (child is FhirUrlBuilder) {
            endpointX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpointReference':
        {
          if (child is ReferenceBuilder) {
            endpointX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'target':
        {
          if (child is ReferenceBuilder) {
            target = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'receiver':
        {
          if (child is ReferenceBuilder) {
            receiver = child;
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
      case 'endpoint':
      case 'endpointX':
        return [
          'FhirUrlBuilder',
          'ReferenceBuilder',
        ];
      case 'endpointUrl':
        return ['FhirUrlBuilder'];
      case 'endpointReference':
        return ['ReferenceBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'target':
        return ['ReferenceBuilder'];
      case 'receiver':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderDestinationBuilder]
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
      case 'endpoint':
      case 'endpointX':
      case 'endpointUrl':
        {
          endpointX = FhirUrlBuilder.empty();
          return;
        }
      case 'endpointReference':
        {
          endpointX = ReferenceBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'target':
        {
          target = ReferenceBuilder.empty();
          return;
        }
      case 'receiver':
        {
          receiver = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MessageHeaderDestinationBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderDestinationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EndpointXMessageHeaderDestinationBuilder? endpointX,
    FhirStringBuilder? name,
    ReferenceBuilder? target,
    ReferenceBuilder? receiver,
    FhirUrlBuilder? endpointUrl,
    ReferenceBuilder? endpointReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderDestinationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      endpointX:
          endpointX ?? endpointUrl ?? endpointReference ?? this.endpointX,
      name: name ?? this.name,
      target: target ?? this.target,
      receiver: receiver ?? this.receiver,
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
    if (o is! MessageHeaderDestinationBuilder) {
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
      endpointX,
      o.endpointX,
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
      target,
      o.target,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      receiver,
      o.receiver,
    )) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderSourceBuilder]
/// The source application from which this message originated.
class MessageHeaderSourceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderSourceBuilder]

  MessageHeaderSourceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    EndpointXMessageHeaderSourceBuilder? endpointX,
    FhirUrlBuilder? endpointUrl,
    ReferenceBuilder? endpointReference,
    this.name,
    this.software,
    this.version,
    this.contact,
    super.disallowExtensions,
  })  : endpointX = endpointX ?? endpointUrl ?? endpointReference,
        super(
          objectPath: 'MessageHeader.source',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderSourceBuilder.empty() => MessageHeaderSourceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderSourceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.source';
    return MessageHeaderSourceBuilder(
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
      endpointX:
          JsonParser.parsePolymorphic<EndpointXMessageHeaderSourceBuilder>(
        json,
        {
          'endpointUrl': FhirUrlBuilder.fromJson,
          'endpointReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      software: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'software',
        FhirStringBuilder.fromJson,
        '$objectPath.software',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      contact: JsonParser.parseObject<ContactPointBuilder>(
        json,
        'contact',
        ContactPointBuilder.fromJson,
        '$objectPath.contact',
      ),
    );
  }

  /// Deserialize [MessageHeaderSourceBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderSourceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderSourceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderSourceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderSourceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderSourceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderSourceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderSourceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderSource';

  /// [endpointX]
  /// Identifies the routing target to send acknowledgements to.
  EndpointXMessageHeaderSourceBuilder? endpointX;

  /// Getter for [endpointUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get endpointUrl => endpointX?.isAs<FhirUrlBuilder>();

  /// Getter for [endpointReference] as a ReferenceBuilder
  ReferenceBuilder? get endpointReference =>
      endpointX?.isAs<ReferenceBuilder>();

  /// [name]
  /// Human-readable name for the source system.
  FhirStringBuilder? name;

  /// [software]
  /// May include configuration or other information useful in debugging.
  FhirStringBuilder? software;

  /// [version]
  /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  FhirStringBuilder? version;

  /// [contact]
  /// An e-mail, phone, website or other contact point to use to resolve
  /// issues with message communications.
  ContactPointBuilder? contact;

  /// Converts a [MessageHeaderSourceBuilder]
  /// to [MessageHeaderSource]
  @override
  MessageHeaderSource build() => MessageHeaderSource.fromJson(toJson());

  /// Converts a [MessageHeaderSourceBuilder]
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
    if (endpointX != null) {
      final fhirType = endpointX!.fhirType;
      addField('endpoint${fhirType.capitalizeFirstLetter()}', endpointX);
    }

    addField('name', name);
    addField('software', software);
    addField('version', version);
    addField('contact', contact);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'endpointX',
      'name',
      'software',
      'version',
      'contact',
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
      case 'endpoint':
        if (endpointX != null) {
          fields.add(endpointX!);
        }
      case 'endpointX':
        if (endpointX != null) {
          fields.add(endpointX!);
        }
      case 'endpointUrl':
        if (endpointX is FhirUrlBuilder) {
          fields.add(endpointX!);
        }
      case 'endpointReference':
        if (endpointX is ReferenceBuilder) {
          fields.add(endpointX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'software':
        if (software != null) {
          fields.add(software!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'contact':
        if (contact != null) {
          fields.add(contact!);
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
      case 'endpoint':
      case 'endpointX':
        {
          if (child is EndpointXMessageHeaderSourceBuilder) {
            endpointX = child;
            return;
          } else {
            if (child is FhirUrlBuilder) {
              endpointX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              endpointX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpointUrl':
        {
          if (child is FhirUrlBuilder) {
            endpointX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endpointReference':
        {
          if (child is ReferenceBuilder) {
            endpointX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'software':
        {
          if (child is FhirStringBuilder) {
            software = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                software = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
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
          if (child is ContactPointBuilder) {
            contact = child;
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
      case 'endpoint':
      case 'endpointX':
        return [
          'FhirUrlBuilder',
          'ReferenceBuilder',
        ];
      case 'endpointUrl':
        return ['FhirUrlBuilder'];
      case 'endpointReference':
        return ['ReferenceBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'software':
        return ['FhirStringBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderSourceBuilder]
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
      case 'endpoint':
      case 'endpointX':
      case 'endpointUrl':
        {
          endpointX = FhirUrlBuilder.empty();
          return;
        }
      case 'endpointReference':
        {
          endpointX = ReferenceBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'software':
        {
          software = FhirStringBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = ContactPointBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MessageHeaderSourceBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderSourceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    EndpointXMessageHeaderSourceBuilder? endpointX,
    FhirStringBuilder? name,
    FhirStringBuilder? software,
    FhirStringBuilder? version,
    ContactPointBuilder? contact,
    FhirUrlBuilder? endpointUrl,
    ReferenceBuilder? endpointReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderSourceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      endpointX:
          endpointX ?? endpointUrl ?? endpointReference ?? this.endpointX,
      name: name ?? this.name,
      software: software ?? this.software,
      version: version ?? this.version,
      contact: contact ?? this.contact,
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
    if (o is! MessageHeaderSourceBuilder) {
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
      endpointX,
      o.endpointX,
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
      software,
      o.software,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contact,
      o.contact,
    )) {
      return false;
    }
    return true;
  }
}

/// [MessageHeaderResponseBuilder]
/// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponseBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MessageHeaderResponseBuilder]

  MessageHeaderResponseBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.details,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MessageHeader.response',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MessageHeaderResponseBuilder.empty() => MessageHeaderResponseBuilder(
        identifier: IdentifierBuilder.empty(),
        code: ResponseTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MessageHeader.response';
    return MessageHeaderResponseBuilder(
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
      code: JsonParser.parsePrimitive<ResponseTypeBuilder>(
        json,
        'code',
        ResponseTypeBuilder.fromJson,
        '$objectPath.code',
      ),
      details: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'details',
        ReferenceBuilder.fromJson,
        '$objectPath.details',
      ),
    );
  }

  /// Deserialize [MessageHeaderResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MessageHeaderResponseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderResponse';

  /// [identifier]
  /// The Bundle.identifier of the message to which this message is a
  /// response.
  IdentifierBuilder? identifier;

  /// [code]
  /// Code that identifies the type of response to the message - whether it
  /// was successful or not, and whether it should be resent or not.
  ResponseTypeBuilder? code;

  /// [details]
  /// Full details of any issues found in the message.
  ReferenceBuilder? details;

  /// Converts a [MessageHeaderResponseBuilder]
  /// to [MessageHeaderResponse]
  @override
  MessageHeaderResponse build() => MessageHeaderResponse.fromJson(toJson());

  /// Converts a [MessageHeaderResponseBuilder]
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
    addField('code', code);
    addField('details', details);
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
      'code',
      'details',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'details':
        if (details != null) {
          fields.add(details!);
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
      case 'code':
        {
          if (child is ResponseTypeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ResponseTypeBuilder(stringValue);
                code = converted;
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
      case 'details':
        {
          if (child is ReferenceBuilder) {
            details = child;
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
      case 'code':
        return ['FhirCodeEnumBuilder'];
      case 'details':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MessageHeaderResponseBuilder]
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
      case 'code':
        {
          code = ResponseTypeBuilder.empty();
          return;
        }
      case 'details':
        {
          details = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MessageHeaderResponseBuilder clone() => throw UnimplementedError();
  @override
  MessageHeaderResponseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    ResponseTypeBuilder? code,
    ReferenceBuilder? details,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MessageHeaderResponseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      details: details ?? this.details,
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
    if (o is! MessageHeaderResponseBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      details,
      o.details,
    )) {
      return false;
    }
    return true;
  }
}
