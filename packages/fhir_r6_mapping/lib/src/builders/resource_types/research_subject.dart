import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        ResearchSubject,
        ResearchSubjectProgress,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ResearchSubjectBuilder]
/// A ResearchSubject is a participant or object which is the recipient of
/// investigative activities in a research study.
class ResearchSubjectBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ResearchSubjectBuilder]

  ResearchSubjectBuilder({
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
    this.progress,
    this.period,
    this.study,
    this.subject,
    this.assignedComparisonGroup,
    this.actualComparisonGroup,
    this.consent,
  }) : super(
          objectPath: 'ResearchSubject',
          resourceType: R5ResourceType.ResearchSubject,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchSubjectBuilder.empty() => ResearchSubjectBuilder(
        status: PublicationStatusBuilder.values.first,
        study: ReferenceBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubjectBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchSubject';
    return ResearchSubjectBuilder(
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
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      progress: (json['progress'] as List<dynamic>?)
          ?.map<ResearchSubjectProgressBuilder>(
            (v) => ResearchSubjectProgressBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.progress',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      study: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'study',
        ReferenceBuilder.fromJson,
        '$objectPath.study',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      assignedComparisonGroup: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'assignedComparisonGroup',
        FhirIdBuilder.fromJson,
        '$objectPath.assignedComparisonGroup',
      ),
      actualComparisonGroup: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'actualComparisonGroup',
        FhirIdBuilder.fromJson,
        '$objectPath.actualComparisonGroup',
      ),
      consent: (json['consent'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.consent',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchSubjectBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchSubjectBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubjectBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubjectBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubjectBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubjectBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubjectBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubjectBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The publication state of the resource (not of the subject).
  PublicationStatusBuilder? status;

  /// [progress]
  /// The current state (status) of the subject and resons for status change
  /// where appropriate.
  List<ResearchSubjectProgressBuilder>? progress;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  PeriodBuilder? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  ReferenceBuilder? study;

  /// [subject]
  /// The record of the person, animal or other entity involved in the study.
  ReferenceBuilder? subject;

  /// [assignedComparisonGroup]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  FhirIdBuilder? assignedComparisonGroup;

  /// [actualComparisonGroup]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  FhirIdBuilder? actualComparisonGroup;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  List<ReferenceBuilder>? consent;

  /// Converts a [ResearchSubjectBuilder]
  /// to [ResearchSubject]
  @override
  ResearchSubject build() => ResearchSubject.fromJson(toJson());

  /// Converts a [ResearchSubjectBuilder]
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
    addField('progress', progress);
    addField('period', period);
    addField('study', study);
    addField('subject', subject);
    addField('assignedComparisonGroup', assignedComparisonGroup);
    addField('actualComparisonGroup', actualComparisonGroup);
    addField('consent', consent);
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
      'progress',
      'period',
      'study',
      'subject',
      'assignedComparisonGroup',
      'actualComparisonGroup',
      'consent',
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
      case 'progress':
        if (progress != null) {
          fields.addAll(progress!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'study':
        if (study != null) {
          fields.add(study!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'assignedComparisonGroup':
        if (assignedComparisonGroup != null) {
          fields.add(assignedComparisonGroup!);
        }
      case 'actualComparisonGroup':
        if (actualComparisonGroup != null) {
          fields.add(actualComparisonGroup!);
        }
      case 'consent':
        if (consent != null) {
          fields.addAll(consent!);
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
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
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
      case 'progress':
        {
          if (child is List<ResearchSubjectProgressBuilder>) {
            // Replace or create new list
            progress = child;
            return;
          } else if (child is ResearchSubjectProgressBuilder) {
            // Add single element to existing list or create new list
            progress = [
              ...(progress ?? []),
              child,
            ];
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
      case 'study':
        {
          if (child is ReferenceBuilder) {
            study = child;
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
      case 'assignedComparisonGroup':
        {
          if (child is FhirIdBuilder) {
            assignedComparisonGroup = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                assignedComparisonGroup = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actualComparisonGroup':
        {
          if (child is FhirIdBuilder) {
            actualComparisonGroup = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                actualComparisonGroup = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'consent':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            consent = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            consent = [
              ...(consent ?? []),
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'progress':
        return ['ResearchSubjectProgressBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'study':
        return ['ReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'assignedComparisonGroup':
        return ['FhirIdBuilder'];
      case 'actualComparisonGroup':
        return ['FhirIdBuilder'];
      case 'consent':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchSubjectBuilder]
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
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'progress':
        {
          progress = <ResearchSubjectProgressBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'study':
        {
          study = ReferenceBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'assignedComparisonGroup':
        {
          assignedComparisonGroup = FhirIdBuilder.empty();
          return;
        }
      case 'actualComparisonGroup':
        {
          actualComparisonGroup = FhirIdBuilder.empty();
          return;
        }
      case 'consent':
        {
          consent = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchSubjectBuilder clone() => throw UnimplementedError();
  @override
  ResearchSubjectBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    PublicationStatusBuilder? status,
    List<ResearchSubjectProgressBuilder>? progress,
    PeriodBuilder? period,
    ReferenceBuilder? study,
    ReferenceBuilder? subject,
    FhirIdBuilder? assignedComparisonGroup,
    FhirIdBuilder? actualComparisonGroup,
    List<ReferenceBuilder>? consent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ResearchSubjectBuilder(
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
      progress: progress ?? this.progress,
      period: period ?? this.period,
      study: study ?? this.study,
      subject: subject ?? this.subject,
      assignedComparisonGroup:
          assignedComparisonGroup ?? this.assignedComparisonGroup,
      actualComparisonGroup:
          actualComparisonGroup ?? this.actualComparisonGroup,
      consent: consent ?? this.consent,
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
    if (o is! ResearchSubjectBuilder) {
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
    if (!listEquals<ResearchSubjectProgressBuilder>(
      progress,
      o.progress,
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
      study,
      o.study,
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
      assignedComparisonGroup,
      o.assignedComparisonGroup,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualComparisonGroup,
      o.actualComparisonGroup,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      consent,
      o.consent,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchSubjectProgressBuilder]
/// The current state (status) of the subject and resons for status change
/// where appropriate.
class ResearchSubjectProgressBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ResearchSubjectProgressBuilder]

  ResearchSubjectProgressBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.subjectState,
    this.milestone,
    this.reason,
    this.startDate,
    this.endDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ResearchSubject.progress',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchSubjectProgressBuilder.empty() =>
      ResearchSubjectProgressBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubjectProgressBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchSubject.progress';
    return ResearchSubjectProgressBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subjectState: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subjectState',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subjectState',
      ),
      milestone: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'milestone',
        CodeableConceptBuilder.fromJson,
        '$objectPath.milestone',
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      startDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'startDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.startDate',
      ),
      endDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'endDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.endDate',
      ),
    );
  }

  /// Deserialize [ResearchSubjectProgressBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchSubjectProgressBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubjectProgressBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubjectProgressBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubjectProgressBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubjectProgressBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubjectProgressBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubjectProgressBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubjectProgress';

  /// [type]
  /// Identifies the aspect of the subject's journey that the state refers
  /// to.
  CodeableConceptBuilder? type;

  /// [subjectState]
  /// The current state of the subject.
  CodeableConceptBuilder? subjectState;

  /// [milestone]
  /// The milestones the subject has passed through.
  CodeableConceptBuilder? milestone;

  /// [reason]
  /// The reason for the state change. If coded it should follow the formal
  /// subject state model.
  CodeableConceptBuilder? reason;

  /// [startDate]
  /// The date when the new status started.
  FhirDateTimeBuilder? startDate;

  /// [endDate]
  /// The date when the state ended.
  FhirDateTimeBuilder? endDate;

  /// Converts a [ResearchSubjectProgressBuilder]
  /// to [ResearchSubjectProgress]
  @override
  ResearchSubjectProgress build() => ResearchSubjectProgress.fromJson(toJson());

  /// Converts a [ResearchSubjectProgressBuilder]
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
    addField('subjectState', subjectState);
    addField('milestone', milestone);
    addField('reason', reason);
    addField('startDate', startDate);
    addField('endDate', endDate);
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
      'subjectState',
      'milestone',
      'reason',
      'startDate',
      'endDate',
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
      case 'subjectState':
        if (subjectState != null) {
          fields.add(subjectState!);
        }
      case 'milestone':
        if (milestone != null) {
          fields.add(milestone!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'startDate':
        if (startDate != null) {
          fields.add(startDate!);
        }
      case 'endDate':
        if (endDate != null) {
          fields.add(endDate!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectState':
        {
          if (child is CodeableConceptBuilder) {
            subjectState = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'milestone':
        {
          if (child is CodeableConceptBuilder) {
            milestone = child;
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
      case 'startDate':
        {
          if (child is FhirDateTimeBuilder) {
            startDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                startDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endDate':
        {
          if (child is FhirDateTimeBuilder) {
            endDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                endDate = converted;
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
        return ['CodeableConceptBuilder'];
      case 'subjectState':
        return ['CodeableConceptBuilder'];
      case 'milestone':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'startDate':
        return ['FhirDateTimeBuilder'];
      case 'endDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchSubjectProgressBuilder]
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
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subjectState':
        {
          subjectState = CodeableConceptBuilder.empty();
          return;
        }
      case 'milestone':
        {
          milestone = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'startDate':
        {
          startDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'endDate':
        {
          endDate = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ResearchSubjectProgressBuilder clone() => throw UnimplementedError();
  @override
  ResearchSubjectProgressBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subjectState,
    CodeableConceptBuilder? milestone,
    CodeableConceptBuilder? reason,
    FhirDateTimeBuilder? startDate,
    FhirDateTimeBuilder? endDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ResearchSubjectProgressBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      subjectState: subjectState ?? this.subjectState,
      milestone: milestone ?? this.milestone,
      reason: reason ?? this.reason,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
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
    if (o is! ResearchSubjectProgressBuilder) {
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
      subjectState,
      o.subjectState,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      milestone,
      o.milestone,
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
      startDate,
      o.startDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endDate,
      o.endDate,
    )) {
      return false;
    }
    return true;
  }
}
