import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show AppointmentResponse, R6ResourceType, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AppointmentResponseBuilder]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AppointmentResponseBuilder]

  AppointmentResponseBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.appointment,
    this.proposedNewTime,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    this.participantStatus,
    this.comment,
    this.recurring,
    this.occurrenceDate,
    this.recurrenceId,
  }) : super(
          objectPath: 'AppointmentResponse',
          resourceType: R6ResourceType.AppointmentResponse,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentResponseBuilder.empty() => AppointmentResponseBuilder(
        appointment: ReferenceBuilder.empty(),
        participantStatus: AppointmentResponseStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AppointmentResponse';
    return AppointmentResponseBuilder(
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
      appointment: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'appointment',
        ReferenceBuilder.fromJson,
        '$objectPath.appointment',
      ),
      proposedNewTime: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'proposedNewTime',
        FhirBooleanBuilder.fromJson,
        '$objectPath.proposedNewTime',
      ),
      start: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'start',
        FhirInstantBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'end',
        FhirInstantBuilder.fromJson,
        '$objectPath.end',
      ),
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participantType',
              },
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
      participantStatus:
          JsonParser.parsePrimitive<AppointmentResponseStatusBuilder>(
        json,
        'participantStatus',
        AppointmentResponseStatusBuilder.fromJson,
        '$objectPath.participantStatus',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
      recurring: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'recurring',
        FhirBooleanBuilder.fromJson,
        '$objectPath.recurring',
      ),
      occurrenceDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'occurrenceDate',
        FhirDateBuilder.fromJson,
        '$objectPath.occurrenceDate',
      ),
      recurrenceId: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'recurrenceId',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.recurrenceId',
      ),
    );
  }

  /// Deserialize [AppointmentResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentResponseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentResponse';

  /// [identifier]
  /// This records identifiers associated with this appointment response
  /// concern that are defined by business processes and/ or used to refer to
  /// it when a direct URL reference to the resource itself is not
  /// appropriate.
  List<IdentifierBuilder>? identifier;

  /// [appointment]
  /// Appointment that this response is replying to.
  ReferenceBuilder? appointment;

  /// [proposedNewTime]
  /// Indicates that the response is proposing a different time that was
  /// initially requested. The new proposed time will be indicated in the
  /// start and end properties.
  FhirBooleanBuilder? proposedNewTime;

  /// [start]
  /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  FhirInstantBuilder? start;

  /// [end]
  /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  FhirInstantBuilder? end;

  /// [participantType]
  /// Role of participant in the appointment.
  List<CodeableConceptBuilder>? participantType;

  /// [actor]
  /// A Person, Location, HealthcareService, or Device that is participating
  /// in the appointment.
  ReferenceBuilder? actor;

  /// [participantStatus]
  /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment
  /// (as a confirmation of the time) or can be empty.
  AppointmentResponseStatusBuilder? participantStatus;

  /// [comment]
  /// Additional comments about the appointment.
  FhirMarkdownBuilder? comment;

  /// [recurring]
  /// Indicates that this AppointmentResponse applies to all occurrences in a
  /// recurring request.
  FhirBooleanBuilder? recurring;

  /// [occurrenceDate]
  /// The original date within a recurring request. This could be used in
  /// place of the recurrenceId to be more direct (or where the template is
  /// provided through the simple list of dates in
  /// `Appointment.occurrenceDate`).
  FhirDateBuilder? occurrenceDate;

  /// [recurrenceId]
  /// The recurrence ID (sequence number) of the specific appointment when
  /// responding to a recurring request.
  FhirPositiveIntBuilder? recurrenceId;

  /// Converts a [AppointmentResponseBuilder]
  /// to [AppointmentResponse]
  @override
  AppointmentResponse build() => AppointmentResponse.fromJson(toJson());

  /// Converts a [AppointmentResponseBuilder]
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
    addField('appointment', appointment);
    addField('proposedNewTime', proposedNewTime);
    addField('start', start);
    addField('end', end);
    addField('participantType', participantType);
    addField('actor', actor);
    addField('participantStatus', participantStatus);
    addField('comment', comment);
    addField('recurring', recurring);
    addField('occurrenceDate', occurrenceDate);
    addField('recurrenceId', recurrenceId);
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
      'appointment',
      'proposedNewTime',
      'start',
      'end',
      'participantType',
      'actor',
      'participantStatus',
      'comment',
      'recurring',
      'occurrenceDate',
      'recurrenceId',
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
      case 'appointment':
        if (appointment != null) {
          fields.add(appointment!);
        }
      case 'proposedNewTime':
        if (proposedNewTime != null) {
          fields.add(proposedNewTime!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'participantType':
        if (participantType != null) {
          fields.addAll(participantType!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      case 'participantStatus':
        if (participantStatus != null) {
          fields.add(participantStatus!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'recurring':
        if (recurring != null) {
          fields.add(recurring!);
        }
      case 'occurrenceDate':
        if (occurrenceDate != null) {
          fields.add(occurrenceDate!);
        }
      case 'recurrenceId':
        if (recurrenceId != null) {
          fields.add(recurrenceId!);
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
      case 'appointment':
        {
          if (child is ReferenceBuilder) {
            appointment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'proposedNewTime':
        {
          if (child is FhirBooleanBuilder) {
            proposedNewTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                proposedNewTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
        {
          if (child is FhirInstantBuilder) {
            start = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                start = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'participantType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            participantType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            participantType = [
              ...(participantType ?? []),
              child,
            ];
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
      case 'participantStatus':
        {
          if (child is AppointmentResponseStatusBuilder) {
            participantStatus = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AppointmentResponseStatusBuilder(stringValue);
                participantStatus = converted;
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
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recurring':
        {
          if (child is FhirBooleanBuilder) {
            recurring = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                recurring = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDate':
        {
          if (child is FhirDateBuilder) {
            occurrenceDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                occurrenceDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recurrenceId':
        {
          if (child is FhirPositiveIntBuilder) {
            recurrenceId = child;
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
                  recurrenceId = converted;
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
      case 'appointment':
        return ['ReferenceBuilder'];
      case 'proposedNewTime':
        return ['FhirBooleanBuilder'];
      case 'start':
        return ['FhirInstantBuilder'];
      case 'end':
        return ['FhirInstantBuilder'];
      case 'participantType':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      case 'participantStatus':
        return ['FhirCodeEnumBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      case 'recurring':
        return ['FhirBooleanBuilder'];
      case 'occurrenceDate':
        return ['FhirDateBuilder'];
      case 'recurrenceId':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentResponseBuilder]
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
      case 'appointment':
        {
          appointment = ReferenceBuilder.empty();
          return;
        }
      case 'proposedNewTime':
        {
          proposedNewTime = FhirBooleanBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirInstantBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirInstantBuilder.empty();
          return;
        }
      case 'participantType':
        {
          participantType = <CodeableConceptBuilder>[];
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      case 'participantStatus':
        {
          participantStatus = AppointmentResponseStatusBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
          return;
        }
      case 'recurring':
        {
          recurring = FhirBooleanBuilder.empty();
          return;
        }
      case 'occurrenceDate':
        {
          occurrenceDate = FhirDateBuilder.empty();
          return;
        }
      case 'recurrenceId':
        {
          recurrenceId = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentResponseBuilder clone() => throw UnimplementedError();
  @override
  AppointmentResponseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ReferenceBuilder? appointment,
    FhirBooleanBuilder? proposedNewTime,
    FhirInstantBuilder? start,
    FhirInstantBuilder? end,
    List<CodeableConceptBuilder>? participantType,
    ReferenceBuilder? actor,
    AppointmentResponseStatusBuilder? participantStatus,
    FhirMarkdownBuilder? comment,
    FhirBooleanBuilder? recurring,
    FhirDateBuilder? occurrenceDate,
    FhirPositiveIntBuilder? recurrenceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AppointmentResponseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      appointment: appointment ?? this.appointment,
      proposedNewTime: proposedNewTime ?? this.proposedNewTime,
      start: start ?? this.start,
      end: end ?? this.end,
      participantType: participantType ?? this.participantType,
      actor: actor ?? this.actor,
      participantStatus: participantStatus ?? this.participantStatus,
      comment: comment ?? this.comment,
      recurring: recurring ?? this.recurring,
      occurrenceDate: occurrenceDate ?? this.occurrenceDate,
      recurrenceId: recurrenceId ?? this.recurrenceId,
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
    if (o is! AppointmentResponseBuilder) {
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
      appointment,
      o.appointment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      proposedNewTime,
      o.proposedNewTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      participantType,
      o.participantType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participantStatus,
      o.participantStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurring,
      o.recurring,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceDate,
      o.occurrenceDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurrenceId,
      o.recurrenceId,
    )) {
      return false;
    }
    return true;
  }
}
