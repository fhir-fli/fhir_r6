import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        InventoryReport,
        InventoryReportInventoryListing,
        InventoryReportItem,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [InventoryReportBuilder]
/// A report of inventory or stock items.
class InventoryReportBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [InventoryReportBuilder]

  InventoryReportBuilder({
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
    this.countType,
    this.operationType,
    this.operationTypeReason,
    this.reportedDateTime,
    this.reporter,
    this.reportingPeriod,
    this.inventoryListing,
    this.note,
  }) : super(
          objectPath: 'InventoryReport',
          resourceType: R5ResourceType.InventoryReport,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryReportBuilder.empty() => InventoryReportBuilder(
        status: InventoryReportStatusBuilder.values.first,
        countType: InventoryCountTypeBuilder.values.first,
        reportedDateTime: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReportBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryReport';
    return InventoryReportBuilder(
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
      status: JsonParser.parsePrimitive<InventoryReportStatusBuilder>(
        json,
        'status',
        InventoryReportStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      countType: JsonParser.parsePrimitive<InventoryCountTypeBuilder>(
        json,
        'countType',
        InventoryCountTypeBuilder.fromJson,
        '$objectPath.countType',
      ),
      operationType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'operationType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.operationType',
      ),
      operationTypeReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'operationTypeReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.operationTypeReason',
      ),
      reportedDateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'reportedDateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.reportedDateTime',
      ),
      reporter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reporter',
        ReferenceBuilder.fromJson,
        '$objectPath.reporter',
      ),
      reportingPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'reportingPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.reportingPeriod',
      ),
      inventoryListing: (json['inventoryListing'] as List<dynamic>?)
          ?.map<InventoryReportInventoryListingBuilder>(
            (v) => InventoryReportInventoryListingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.inventoryListing',
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
    );
  }

  /// Deserialize [InventoryReportBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryReportBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReportBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReportBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReportBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReportBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReportBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReportBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReport';

  /// [identifier]
  /// Business identifier for the InventoryReport.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the inventory check or notification - whether this is
  /// draft (e.g. the report is still pending some updates) or active.
  InventoryReportStatusBuilder? status;

  /// [countType]
  /// Whether the report is about the current inventory count (snapshot) or a
  /// differential change in inventory (change).
  InventoryCountTypeBuilder? countType;

  /// [operationType]
  /// What type of operation is being performed - addition or subtraction.
  CodeableConceptBuilder? operationType;

  /// [operationTypeReason]
  /// The reason for this count - regular count, ad-hoc count, new arrivals,
  /// etc.
  CodeableConceptBuilder? operationTypeReason;

  /// [reportedDateTime]
  /// When the report has been submitted.
  FhirDateTimeBuilder? reportedDateTime;

  /// [reporter]
  /// Who submits the report.
  ReferenceBuilder? reporter;

  /// [reportingPeriod]
  /// The period the report refers to.
  PeriodBuilder? reportingPeriod;

  /// [inventoryListing]
  /// An inventory listing section (grouped by any of the attributes).
  List<InventoryReportInventoryListingBuilder>? inventoryListing;

  /// [note]
  /// A note associated with the InventoryReport.
  List<AnnotationBuilder>? note;

  /// Converts a [InventoryReportBuilder]
  /// to [InventoryReport]
  @override
  InventoryReport build() => InventoryReport.fromJson(toJson());

  /// Converts a [InventoryReportBuilder]
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
    addField('countType', countType);
    addField('operationType', operationType);
    addField('operationTypeReason', operationTypeReason);
    addField('reportedDateTime', reportedDateTime);
    addField('reporter', reporter);
    addField('reportingPeriod', reportingPeriod);
    addField('inventoryListing', inventoryListing);
    addField('note', note);
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
      'countType',
      'operationType',
      'operationTypeReason',
      'reportedDateTime',
      'reporter',
      'reportingPeriod',
      'inventoryListing',
      'note',
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
      case 'countType':
        if (countType != null) {
          fields.add(countType!);
        }
      case 'operationType':
        if (operationType != null) {
          fields.add(operationType!);
        }
      case 'operationTypeReason':
        if (operationTypeReason != null) {
          fields.add(operationTypeReason!);
        }
      case 'reportedDateTime':
        if (reportedDateTime != null) {
          fields.add(reportedDateTime!);
        }
      case 'reporter':
        if (reporter != null) {
          fields.add(reporter!);
        }
      case 'reportingPeriod':
        if (reportingPeriod != null) {
          fields.add(reportingPeriod!);
        }
      case 'inventoryListing':
        if (inventoryListing != null) {
          fields.addAll(inventoryListing!);
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
          if (child is InventoryReportStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = InventoryReportStatusBuilder(stringValue);
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
      case 'countType':
        {
          if (child is InventoryCountTypeBuilder) {
            countType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = InventoryCountTypeBuilder(stringValue);
                countType = converted;
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
      case 'operationType':
        {
          if (child is CodeableConceptBuilder) {
            operationType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operationTypeReason':
        {
          if (child is CodeableConceptBuilder) {
            operationTypeReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            reportedDateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                reportedDateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reporter':
        {
          if (child is ReferenceBuilder) {
            reporter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportingPeriod':
        {
          if (child is PeriodBuilder) {
            reportingPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inventoryListing':
        {
          if (child is List<InventoryReportInventoryListingBuilder>) {
            // Replace or create new list
            inventoryListing = child;
            return;
          } else if (child is InventoryReportInventoryListingBuilder) {
            // Add single element to existing list or create new list
            inventoryListing = [
              ...(inventoryListing ?? []),
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
      case 'countType':
        return ['FhirCodeEnumBuilder'];
      case 'operationType':
        return ['CodeableConceptBuilder'];
      case 'operationTypeReason':
        return ['CodeableConceptBuilder'];
      case 'reportedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'reporter':
        return ['ReferenceBuilder'];
      case 'reportingPeriod':
        return ['PeriodBuilder'];
      case 'inventoryListing':
        return ['InventoryReportInventoryListingBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryReportBuilder]
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
          status = InventoryReportStatusBuilder.empty();
          return;
        }
      case 'countType':
        {
          countType = InventoryCountTypeBuilder.empty();
          return;
        }
      case 'operationType':
        {
          operationType = CodeableConceptBuilder.empty();
          return;
        }
      case 'operationTypeReason':
        {
          operationTypeReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'reportedDateTime':
        {
          reportedDateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'reporter':
        {
          reporter = ReferenceBuilder.empty();
          return;
        }
      case 'reportingPeriod':
        {
          reportingPeriod = PeriodBuilder.empty();
          return;
        }
      case 'inventoryListing':
        {
          inventoryListing = <InventoryReportInventoryListingBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryReportBuilder clone() => throw UnimplementedError();
  @override
  InventoryReportBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    InventoryReportStatusBuilder? status,
    InventoryCountTypeBuilder? countType,
    CodeableConceptBuilder? operationType,
    CodeableConceptBuilder? operationTypeReason,
    FhirDateTimeBuilder? reportedDateTime,
    ReferenceBuilder? reporter,
    PeriodBuilder? reportingPeriod,
    List<InventoryReportInventoryListingBuilder>? inventoryListing,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = InventoryReportBuilder(
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
      countType: countType ?? this.countType,
      operationType: operationType ?? this.operationType,
      operationTypeReason: operationTypeReason ?? this.operationTypeReason,
      reportedDateTime: reportedDateTime ?? this.reportedDateTime,
      reporter: reporter ?? this.reporter,
      reportingPeriod: reportingPeriod ?? this.reportingPeriod,
      inventoryListing: inventoryListing ?? this.inventoryListing,
      note: note ?? this.note,
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
    if (o is! InventoryReportBuilder) {
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
      countType,
      o.countType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationType,
      o.operationType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationTypeReason,
      o.operationTypeReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportedDateTime,
      o.reportedDateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reporter,
      o.reporter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportingPeriod,
      o.reportingPeriod,
    )) {
      return false;
    }
    if (!listEquals<InventoryReportInventoryListingBuilder>(
      inventoryListing,
      o.inventoryListing,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryReportInventoryListingBuilder]
/// An inventory listing section (grouped by any of the attributes).
class InventoryReportInventoryListingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryReportInventoryListingBuilder]

  InventoryReportInventoryListingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.location,
    this.itemStatus,
    this.countingDateTime,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryReport.inventoryListing',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryReportInventoryListingBuilder.empty() =>
      InventoryReportInventoryListingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReportInventoryListingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryReport.inventoryListing';
    return InventoryReportInventoryListingBuilder(
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
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      itemStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'itemStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.itemStatus',
      ),
      countingDateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'countingDateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.countingDateTime',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<InventoryReportItemBuilder>(
            (v) => InventoryReportItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [InventoryReportInventoryListingBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryReportInventoryListingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReportInventoryListingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReportInventoryListingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReportInventoryListingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReportInventoryListingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReportInventoryListingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReportInventoryListingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReportInventoryListing';

  /// [location]
  /// Location of the inventory items.
  ReferenceBuilder? location;

  /// [itemStatus]
  /// The status of the items.
  CodeableConceptBuilder? itemStatus;

  /// [countingDateTime]
  /// The date and time when the items were counted.
  FhirDateTimeBuilder? countingDateTime;

  /// [item]
  /// The item or items in this listing.
  List<InventoryReportItemBuilder>? item;

  /// Converts a [InventoryReportInventoryListingBuilder]
  /// to [InventoryReportInventoryListing]
  @override
  InventoryReportInventoryListing build() =>
      InventoryReportInventoryListing.fromJson(toJson());

  /// Converts a [InventoryReportInventoryListingBuilder]
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
    addField('location', location);
    addField('itemStatus', itemStatus);
    addField('countingDateTime', countingDateTime);
    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'location',
      'itemStatus',
      'countingDateTime',
      'item',
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
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'itemStatus':
        if (itemStatus != null) {
          fields.add(itemStatus!);
        }
      case 'countingDateTime':
        if (countingDateTime != null) {
          fields.add(countingDateTime!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'itemStatus':
        {
          if (child is CodeableConceptBuilder) {
            itemStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'countingDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            countingDateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                countingDateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<InventoryReportItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is InventoryReportItemBuilder) {
            // Add single element to existing list or create new list
            item = [
              ...(item ?? []),
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
      case 'location':
        return ['ReferenceBuilder'];
      case 'itemStatus':
        return ['CodeableConceptBuilder'];
      case 'countingDateTime':
        return ['FhirDateTimeBuilder'];
      case 'item':
        return ['InventoryReportItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryReportInventoryListingBuilder]
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
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'itemStatus':
        {
          itemStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'countingDateTime':
        {
          countingDateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <InventoryReportItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryReportInventoryListingBuilder clone() => throw UnimplementedError();
  @override
  InventoryReportInventoryListingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? location,
    CodeableConceptBuilder? itemStatus,
    FhirDateTimeBuilder? countingDateTime,
    List<InventoryReportItemBuilder>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryReportInventoryListingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      location: location ?? this.location,
      itemStatus: itemStatus ?? this.itemStatus,
      countingDateTime: countingDateTime ?? this.countingDateTime,
      item: item ?? this.item,
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
    if (o is! InventoryReportInventoryListingBuilder) {
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
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      itemStatus,
      o.itemStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      countingDateTime,
      o.countingDateTime,
    )) {
      return false;
    }
    if (!listEquals<InventoryReportItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryReportItemBuilder]
/// The item or items in this listing.
class InventoryReportItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryReportItemBuilder]

  InventoryReportItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.quantity,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryReport.inventoryListing.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryReportItemBuilder.empty() => InventoryReportItemBuilder(
        quantity: QuantityBuilder.empty(),
        item: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryReportItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryReport.inventoryListing.item';
    return InventoryReportItemBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      item: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'item',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
    );
  }

  /// Deserialize [InventoryReportItemBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryReportItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryReportItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryReportItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryReportItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryReportItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryReportItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryReportItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryReportItem';

  /// [category]
  /// The inventory category or classification of the items being reported.
  /// This is meant not for defining the product, but for inventory
  /// categories e.g. 'pending recount' or 'damaged'.
  CodeableConceptBuilder? category;

  /// [quantity]
  /// The quantity of the item or items being reported.
  QuantityBuilder? quantity;

  /// [item]
  /// The code or reference to the item type.
  CodeableReferenceBuilder? item;

  /// Converts a [InventoryReportItemBuilder]
  /// to [InventoryReportItem]
  @override
  InventoryReportItem build() => InventoryReportItem.fromJson(toJson());

  /// Converts a [InventoryReportItemBuilder]
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
    addField('category', category);
    addField('quantity', quantity);
    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'quantity',
      'item',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'item':
        if (item != null) {
          fields.add(item!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
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
      case 'item':
        {
          if (child is CodeableReferenceBuilder) {
            item = child;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'item':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryReportItemBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'item':
        {
          item = CodeableReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryReportItemBuilder clone() => throw UnimplementedError();
  @override
  InventoryReportItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    QuantityBuilder? quantity,
    CodeableReferenceBuilder? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryReportItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      item: item ?? this.item,
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
    if (o is! InventoryReportItemBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}
