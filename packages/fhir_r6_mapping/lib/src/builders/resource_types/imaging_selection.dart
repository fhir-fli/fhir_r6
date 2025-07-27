import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ImagingSelection,
        ImagingSelectionImageRegion2D,
        ImagingSelectionImageRegion3D,
        ImagingSelectionInstance,
        ImagingSelectionPerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ImagingSelectionBuilder]
/// A selection of DICOM SOP instances and/or frames within a single Study
/// and Series. This might include additional specifics such as an image
/// region, an Observation UID or a Segmentation Number, allowing linkage
/// to an Observation Resource or transferring this information along with
/// the ImagingStudy Resource.
class ImagingSelectionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ImagingSelectionBuilder]

  ImagingSelectionBuilder({
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
    this.subject,
    this.issued,
    this.performer,
    this.basedOn,
    this.category,
    this.code,
    this.studyUid,
    this.derivedFrom,
    this.endpoint,
    this.seriesUid,
    this.seriesNumber,
    this.frameOfReferenceUid,
    this.bodySite,
    this.focus,
    this.instance,
  }) : super(
          objectPath: 'ImagingSelection',
          resourceType: R5ResourceType.ImagingSelection,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImagingSelectionBuilder.empty() => ImagingSelectionBuilder(
        status: ImagingSelectionStatusBuilder.values.first,
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingSelection';
    return ImagingSelectionBuilder(
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
      status: JsonParser.parsePrimitive<ImagingSelectionStatusBuilder>(
        json,
        'status',
        ImagingSelectionStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      issued: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'issued',
        FhirInstantBuilder.fromJson,
        '$objectPath.issued',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImagingSelectionPerformerBuilder>(
            (v) => ImagingSelectionPerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
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
      studyUid: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'studyUid',
        FhirIdBuilder.fromJson,
        '$objectPath.studyUid',
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      seriesUid: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'seriesUid',
        FhirIdBuilder.fromJson,
        '$objectPath.seriesUid',
      ),
      seriesNumber: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'seriesNumber',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.seriesNumber',
      ),
      frameOfReferenceUid: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'frameOfReferenceUid',
        FhirIdBuilder.fromJson,
        '$objectPath.frameOfReferenceUid',
      ),
      bodySite: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'bodySite',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.bodySite',
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
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ImagingSelectionInstanceBuilder>(
            (v) => ImagingSelectionInstanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.instance',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingSelectionBuilder]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelection';

  /// [identifier]
  /// A unique identifier assigned to this imaging selection.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the ImagingSelection resource. This is not the
  /// status of any ImagingStudy, ServiceRequest, or Task resources
  /// associated with the ImagingSelection.
  ImagingSelectionStatusBuilder? status;

  /// [subject]
  /// The patient, or group of patients, location, device, organization,
  /// procedure or practitioner this imaging selection is about and into
  /// whose or what record the imaging selection is placed.
  ReferenceBuilder? subject;

  /// [issued]
  /// The date and time this imaging selection was created.
  FhirInstantBuilder? issued;

  /// [performer]
  /// Selector of the instances – human or machine.
  List<ImagingSelectionPerformerBuilder>? performer;

  /// [basedOn]
  /// A list of the diagnostic requests that resulted in this imaging
  /// selection being performed.
  List<ReferenceBuilder>? basedOn;

  /// [category]
  /// Classifies the imaging selection.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Reason for referencing the selected content.
  CodeableConceptBuilder? code;

  /// [studyUid]
  /// The Study Instance UID for the DICOM Study from which the images were
  /// selected.
  FhirIdBuilder? studyUid;

  /// [derivedFrom]
  /// The imaging study from which the imaging selection is made.
  List<ReferenceBuilder>? derivedFrom;

  /// [endpoint]
  /// The network service providing retrieval access to the selected images,
  /// frames, etc. See implementation notes for information about using DICOM
  /// endpoints.
  List<ReferenceBuilder>? endpoint;

  /// [seriesUid]
  /// The Series Instance UID for the DICOM Series from which the images were
  /// selected.
  FhirIdBuilder? seriesUid;

  /// [seriesNumber]
  /// The Series Number for the DICOM Series from which the images were
  /// selected.
  FhirUnsignedIntBuilder? seriesNumber;

  /// [frameOfReferenceUid]
  /// The Frame of Reference UID identifying the coordinate system that
  /// conveys spatial and/or temporal information for the selected images or
  /// frames.
  FhirIdBuilder? frameOfReferenceUid;

  /// [bodySite]
  /// The anatomic structures examined. See DICOM Part 16 Annex L
  /// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings.
  CodeableReferenceBuilder? bodySite;

  /// [focus]
  /// The actual focus of an observation when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record. The focus of an observation could also be an existing
  /// condition, an intervention, the subject's diet, another observation of
  /// the subject, or a body structure such as tumor or implanted device. An
  /// example use case would be using the Observation resource to capture
  /// whether the mother is trained to change her child's tracheostomy tube.
  /// In this example, the child is the patient of record and the mother is
  /// the focus.
  List<ReferenceBuilder>? focus;

  /// [instance]
  /// Each imaging selection includes one or more selected DICOM SOP
  /// instances.
  List<ImagingSelectionInstanceBuilder>? instance;

  /// Converts a [ImagingSelectionBuilder]
  /// to [ImagingSelection]
  @override
  ImagingSelection build() => ImagingSelection.fromJson(toJson());

  /// Converts a [ImagingSelectionBuilder]
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
    addField('subject', subject);
    addField('issued', issued);
    addField('performer', performer);
    addField('basedOn', basedOn);
    addField('category', category);
    addField('code', code);
    addField('studyUid', studyUid);
    addField('derivedFrom', derivedFrom);
    addField('endpoint', endpoint);
    addField('seriesUid', seriesUid);
    addField('seriesNumber', seriesNumber);
    addField('frameOfReferenceUid', frameOfReferenceUid);
    addField('bodySite', bodySite);
    addField('focus', focus);
    addField('instance', instance);
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
      'subject',
      'issued',
      'performer',
      'basedOn',
      'category',
      'code',
      'studyUid',
      'derivedFrom',
      'endpoint',
      'seriesUid',
      'seriesNumber',
      'frameOfReferenceUid',
      'bodySite',
      'focus',
      'instance',
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
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'studyUid':
        if (studyUid != null) {
          fields.add(studyUid!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'seriesUid':
        if (seriesUid != null) {
          fields.add(seriesUid!);
        }
      case 'seriesNumber':
        if (seriesNumber != null) {
          fields.add(seriesNumber!);
        }
      case 'frameOfReferenceUid':
        if (frameOfReferenceUid != null) {
          fields.add(frameOfReferenceUid!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
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
          if (child is ImagingSelectionStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ImagingSelectionStatusBuilder(stringValue);
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issued':
        {
          if (child is FhirInstantBuilder) {
            issued = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                issued = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ImagingSelectionPerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ImagingSelectionPerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
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
      case 'studyUid':
        {
          if (child is FhirIdBuilder) {
            studyUid = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                studyUid = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFrom':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpoint':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            endpoint = [
              ...(endpoint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesUid':
        {
          if (child is FhirIdBuilder) {
            seriesUid = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                seriesUid = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesNumber':
        {
          if (child is FhirUnsignedIntBuilder) {
            seriesNumber = child;
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
                  seriesNumber = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'frameOfReferenceUid':
        {
          if (child is FhirIdBuilder) {
            frameOfReferenceUid = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                frameOfReferenceUid = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is CodeableReferenceBuilder) {
            bodySite = child;
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
      case 'instance':
        {
          if (child is List<ImagingSelectionInstanceBuilder>) {
            // Replace or create new list
            instance = child;
            return;
          } else if (child is ImagingSelectionInstanceBuilder) {
            // Add single element to existing list or create new list
            instance = [
              ...(instance ?? []),
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
      case 'subject':
        return ['ReferenceBuilder'];
      case 'issued':
        return ['FhirInstantBuilder'];
      case 'performer':
        return ['ImagingSelectionPerformerBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'studyUid':
        return ['FhirIdBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      case 'seriesUid':
        return ['FhirIdBuilder'];
      case 'seriesNumber':
        return ['FhirUnsignedIntBuilder'];
      case 'frameOfReferenceUid':
        return ['FhirIdBuilder'];
      case 'bodySite':
        return ['CodeableReferenceBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'instance':
        return ['ImagingSelectionInstanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImagingSelectionBuilder]
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
          status = ImagingSelectionStatusBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'issued':
        {
          issued = FhirInstantBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ImagingSelectionPerformerBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'studyUid':
        {
          studyUid = FhirIdBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'endpoint':
        {
          endpoint = <ReferenceBuilder>[];
          return;
        }
      case 'seriesUid':
        {
          seriesUid = FhirIdBuilder.empty();
          return;
        }
      case 'seriesNumber':
        {
          seriesNumber = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'frameOfReferenceUid':
        {
          frameOfReferenceUid = FhirIdBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableReferenceBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
          return;
        }
      case 'instance':
        {
          instance = <ImagingSelectionInstanceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImagingSelectionBuilder clone() => throw UnimplementedError();
  @override
  ImagingSelectionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ImagingSelectionStatusBuilder? status,
    ReferenceBuilder? subject,
    FhirInstantBuilder? issued,
    List<ImagingSelectionPerformerBuilder>? performer,
    List<ReferenceBuilder>? basedOn,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    FhirIdBuilder? studyUid,
    List<ReferenceBuilder>? derivedFrom,
    List<ReferenceBuilder>? endpoint,
    FhirIdBuilder? seriesUid,
    FhirUnsignedIntBuilder? seriesNumber,
    FhirIdBuilder? frameOfReferenceUid,
    CodeableReferenceBuilder? bodySite,
    List<ReferenceBuilder>? focus,
    List<ImagingSelectionInstanceBuilder>? instance,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ImagingSelectionBuilder(
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
      subject: subject ?? this.subject,
      issued: issued ?? this.issued,
      performer: performer ?? this.performer,
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      code: code ?? this.code,
      studyUid: studyUid ?? this.studyUid,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      endpoint: endpoint ?? this.endpoint,
      seriesUid: seriesUid ?? this.seriesUid,
      seriesNumber: seriesNumber ?? this.seriesNumber,
      frameOfReferenceUid: frameOfReferenceUid ?? this.frameOfReferenceUid,
      bodySite: bodySite ?? this.bodySite,
      focus: focus ?? this.focus,
      instance: instance ?? this.instance,
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
    if (o is! ImagingSelectionBuilder) {
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
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionPerformerBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
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
      studyUid,
      o.studyUid,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesUid,
      o.seriesUid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesNumber,
      o.seriesNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frameOfReferenceUid,
      o.frameOfReferenceUid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionInstanceBuilder>(
      instance,
      o.instance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionPerformerBuilder]
/// Selector of the instances – human or machine.
class ImagingSelectionPerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImagingSelectionPerformerBuilder]

  ImagingSelectionPerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingSelection.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImagingSelectionPerformerBuilder.empty() =>
      ImagingSelectionPerformerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionPerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingSelection.performer';
    return ImagingSelectionPerformerBuilder(
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

  /// Deserialize [ImagingSelectionPerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionPerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionPerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionPerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionPerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionPerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionPerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionPerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Author – human or machine.
  ReferenceBuilder? actor;

  /// Converts a [ImagingSelectionPerformerBuilder]
  /// to [ImagingSelectionPerformer]
  @override
  ImagingSelectionPerformer build() =>
      ImagingSelectionPerformer.fromJson(toJson());

  /// Converts a [ImagingSelectionPerformerBuilder]
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

  /// Creates a new [ImagingSelectionPerformerBuilder]
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
  ImagingSelectionPerformerBuilder clone() => throw UnimplementedError();
  @override
  ImagingSelectionPerformerBuilder copyWith({
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
    final newResult = ImagingSelectionPerformerBuilder(
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
    if (o is! ImagingSelectionPerformerBuilder) {
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

/// [ImagingSelectionInstanceBuilder]
/// Each imaging selection includes one or more selected DICOM SOP
/// instances.
class ImagingSelectionInstanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImagingSelectionInstanceBuilder]

  ImagingSelectionInstanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uid,
    this.number,
    this.sopClass,
    this.subset,
    this.imageRegion2D,
    this.imageRegion3D,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingSelection.instance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImagingSelectionInstanceBuilder.empty() =>
      ImagingSelectionInstanceBuilder(
        uid: FhirIdBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionInstanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingSelection.instance';
    return ImagingSelectionInstanceBuilder(
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
      uid: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'uid',
        FhirIdBuilder.fromJson,
        '$objectPath.uid',
      ),
      number: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'number',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.number',
      ),
      sopClass: JsonParser.parseObject<CodingBuilder>(
        json,
        'sopClass',
        CodingBuilder.fromJson,
        '$objectPath.sopClass',
      ),
      subset: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'subset',
        FhirStringBuilder.fromJson,
        '$objectPath.subset',
      ),
      imageRegion2D: (json['imageRegion2D'] as List<dynamic>?)
          ?.map<ImagingSelectionImageRegion2DBuilder>(
            (v) => ImagingSelectionImageRegion2DBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.imageRegion2D',
              },
            ),
          )
          .toList(),
      imageRegion3D: (json['imageRegion3D'] as List<dynamic>?)
          ?.map<ImagingSelectionImageRegion3DBuilder>(
            (v) => ImagingSelectionImageRegion3DBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.imageRegion3D',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingSelectionInstanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionInstanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionInstanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionInstanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionInstanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionInstanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionInstanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionInstanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionInstance';

  /// [uid]
  /// The SOP Instance UID for the selected DICOM instance.
  FhirIdBuilder? uid;

  /// [number]
  /// The Instance Number for the selected DICOM instance.
  FhirUnsignedIntBuilder? number;

  /// [sopClass]
  /// The SOP Class UID for the selected DICOM instance.
  CodingBuilder? sopClass;

  /// [subset]
  /// Selected subset of the SOP Instance. The content and format of the
  /// subset item is determined by the SOP Class of the selected instance.
  ///  May be one of:
  ///  - A list of frame numbers selected from a multiframe SOP Instance.
  ///  - A list of Content Item Observation UID values selected from a DICOM
  /// SR or other structured document SOP Instance.
  ///  - A list of segment numbers selected from a segmentation SOP Instance.
  ///  - A list of Region of Interest (ROI) numbers selected from a
  /// radiotherapy structure set SOP Instance.
  List<FhirStringBuilder>? subset;

  /// [imageRegion2D]
  /// Each imaging selection instance or frame list might includes an image
  /// region, specified by a region type and a set of 2D coordinates.
  ///  If the parent imagingSelection.instance contains a subset element of
  /// type frame, the image region applies to all frames in the subset list.
  List<ImagingSelectionImageRegion2DBuilder>? imageRegion2D;

  /// [imageRegion3D]
  /// Each imaging selection might includes a 3D image region, specified by a
  /// region type and a set of 3D coordinates.
  List<ImagingSelectionImageRegion3DBuilder>? imageRegion3D;

  /// Converts a [ImagingSelectionInstanceBuilder]
  /// to [ImagingSelectionInstance]
  @override
  ImagingSelectionInstance build() =>
      ImagingSelectionInstance.fromJson(toJson());

  /// Converts a [ImagingSelectionInstanceBuilder]
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
    addField('uid', uid);
    addField('number', number);
    addField('sopClass', sopClass);
    addField('subset', subset);
    addField('imageRegion2D', imageRegion2D);
    addField('imageRegion3D', imageRegion3D);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'uid',
      'number',
      'sopClass',
      'subset',
      'imageRegion2D',
      'imageRegion3D',
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
      case 'uid':
        if (uid != null) {
          fields.add(uid!);
        }
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'sopClass':
        if (sopClass != null) {
          fields.add(sopClass!);
        }
      case 'subset':
        if (subset != null) {
          fields.addAll(subset!);
        }
      case 'imageRegion2D':
        if (imageRegion2D != null) {
          fields.addAll(imageRegion2D!);
        }
      case 'imageRegion3D':
        if (imageRegion3D != null) {
          fields.addAll(imageRegion3D!);
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
      case 'uid':
        {
          if (child is FhirIdBuilder) {
            uid = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                uid = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'number':
        {
          if (child is FhirUnsignedIntBuilder) {
            number = child;
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
                  number = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sopClass':
        {
          if (child is CodingBuilder) {
            sopClass = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subset':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            subset = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            subset = [
              ...(subset ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              subset = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                subset = [
                  ...(subset ?? []),
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
      case 'imageRegion2D':
        {
          if (child is List<ImagingSelectionImageRegion2DBuilder>) {
            // Replace or create new list
            imageRegion2D = child;
            return;
          } else if (child is ImagingSelectionImageRegion2DBuilder) {
            // Add single element to existing list or create new list
            imageRegion2D = [
              ...(imageRegion2D ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'imageRegion3D':
        {
          if (child is List<ImagingSelectionImageRegion3DBuilder>) {
            // Replace or create new list
            imageRegion3D = child;
            return;
          } else if (child is ImagingSelectionImageRegion3DBuilder) {
            // Add single element to existing list or create new list
            imageRegion3D = [
              ...(imageRegion3D ?? []),
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
      case 'uid':
        return ['FhirIdBuilder'];
      case 'number':
        return ['FhirUnsignedIntBuilder'];
      case 'sopClass':
        return ['CodingBuilder'];
      case 'subset':
        return ['FhirStringBuilder'];
      case 'imageRegion2D':
        return ['ImagingSelectionImageRegion2DBuilder'];
      case 'imageRegion3D':
        return ['ImagingSelectionImageRegion3DBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImagingSelectionInstanceBuilder]
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
      case 'uid':
        {
          uid = FhirIdBuilder.empty();
          return;
        }
      case 'number':
        {
          number = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'sopClass':
        {
          sopClass = CodingBuilder.empty();
          return;
        }
      case 'subset':
        {
          subset = <FhirStringBuilder>[];
          return;
        }
      case 'imageRegion2D':
        {
          imageRegion2D = <ImagingSelectionImageRegion2DBuilder>[];
          return;
        }
      case 'imageRegion3D':
        {
          imageRegion3D = <ImagingSelectionImageRegion3DBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImagingSelectionInstanceBuilder clone() => throw UnimplementedError();
  @override
  ImagingSelectionInstanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? uid,
    FhirUnsignedIntBuilder? number,
    CodingBuilder? sopClass,
    List<FhirStringBuilder>? subset,
    List<ImagingSelectionImageRegion2DBuilder>? imageRegion2D,
    List<ImagingSelectionImageRegion3DBuilder>? imageRegion3D,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImagingSelectionInstanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uid: uid ?? this.uid,
      number: number ?? this.number,
      sopClass: sopClass ?? this.sopClass,
      subset: subset ?? this.subset,
      imageRegion2D: imageRegion2D ?? this.imageRegion2D,
      imageRegion3D: imageRegion3D ?? this.imageRegion3D,
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
    if (o is! ImagingSelectionInstanceBuilder) {
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
      uid,
      o.uid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      number,
      o.number,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sopClass,
      o.sopClass,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      subset,
      o.subset,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionImageRegion2DBuilder>(
      imageRegion2D,
      o.imageRegion2D,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionImageRegion3DBuilder>(
      imageRegion3D,
      o.imageRegion3D,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionImageRegion2DBuilder]
/// Each imaging selection instance or frame list might includes an image
/// region, specified by a region type and a set of 2D coordinates.
///  If the parent imagingSelection.instance contains a subset element of
/// type frame, the image region applies to all frames in the subset list.
class ImagingSelectionImageRegion2DBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImagingSelectionImageRegion2DBuilder]

  ImagingSelectionImageRegion2DBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.regionType,
    this.coordinate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingSelection.instance.imageRegion2D',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImagingSelectionImageRegion2DBuilder.empty() =>
      ImagingSelectionImageRegion2DBuilder(
        regionType: ImagingSelection2DGraphicTypeBuilder.values.first,
        coordinate: <FhirDecimalBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionImageRegion2DBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingSelection.instance.imageRegion2D';
    return ImagingSelectionImageRegion2DBuilder(
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
      regionType:
          JsonParser.parsePrimitive<ImagingSelection2DGraphicTypeBuilder>(
        json,
        'regionType',
        ImagingSelection2DGraphicTypeBuilder.fromJson,
        '$objectPath.regionType',
      ),
      coordinate: JsonParser.parsePrimitiveList<FhirDecimalBuilder>(
        json,
        'coordinate',
        FhirDecimalBuilder.fromJson,
        '$objectPath.coordinate',
      ),
    );
  }

  /// Deserialize [ImagingSelectionImageRegion2DBuilder]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionImageRegion2DBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionImageRegion2DBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionImageRegion2DBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionImageRegion2DBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionImageRegion2DBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionImageRegion2DBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionImageRegion2DBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionImageRegion2D';

  /// [regionType]
  /// Specifies the type of image region.
  ImagingSelection2DGraphicTypeBuilder? regionType;

  /// [coordinate]
  /// The coordinates describing the image region. Encoded as a set of
  /// (column, row) pairs that denote positions in the selected image /
  /// frames specified with sub-pixel resolution.
  ///  The origin at the TLHC of the TLHC pixel is 0.0\0.0, the BRHC of the
  /// TLHC pixel is 1.0\1.0, and the BRHC of the BRHC pixel is the number of
  /// columns\rows in the image / frames. The values must be within the range
  /// 0\0 to the number of columns\rows in the image / frames.
  List<FhirDecimalBuilder>? coordinate;

  /// Converts a [ImagingSelectionImageRegion2DBuilder]
  /// to [ImagingSelectionImageRegion2D]
  @override
  ImagingSelectionImageRegion2D build() =>
      ImagingSelectionImageRegion2D.fromJson(toJson());

  /// Converts a [ImagingSelectionImageRegion2DBuilder]
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
    addField('regionType', regionType);
    addField('coordinate', coordinate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'regionType',
      'coordinate',
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
      case 'regionType':
        if (regionType != null) {
          fields.add(regionType!);
        }
      case 'coordinate':
        if (coordinate != null) {
          fields.addAll(coordinate!);
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
      case 'regionType':
        {
          if (child is ImagingSelection2DGraphicTypeBuilder) {
            regionType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ImagingSelection2DGraphicTypeBuilder(stringValue);
                regionType = converted;
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
      case 'coordinate':
        {
          if (child is List<FhirDecimalBuilder>) {
            // Replace or create new list
            coordinate = child;
            return;
          } else if (child is FhirDecimalBuilder) {
            // Add single element to existing list or create new list
            coordinate = [
              ...(coordinate ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDecimalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirDecimalBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              coordinate = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  coordinate = [
                    ...(coordinate ?? []),
                    converted,
                  ];
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
      case 'regionType':
        return ['FhirCodeEnumBuilder'];
      case 'coordinate':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImagingSelectionImageRegion2DBuilder]
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
      case 'regionType':
        {
          regionType = ImagingSelection2DGraphicTypeBuilder.empty();
          return;
        }
      case 'coordinate':
        {
          coordinate = <FhirDecimalBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImagingSelectionImageRegion2DBuilder clone() => throw UnimplementedError();
  @override
  ImagingSelectionImageRegion2DBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ImagingSelection2DGraphicTypeBuilder? regionType,
    List<FhirDecimalBuilder>? coordinate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImagingSelectionImageRegion2DBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regionType: regionType ?? this.regionType,
      coordinate: coordinate ?? this.coordinate,
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
    if (o is! ImagingSelectionImageRegion2DBuilder) {
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
      regionType,
      o.regionType,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimalBuilder>(
      coordinate,
      o.coordinate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionImageRegion3DBuilder]
/// Each imaging selection might includes a 3D image region, specified by a
/// region type and a set of 3D coordinates.
class ImagingSelectionImageRegion3DBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImagingSelectionImageRegion3DBuilder]

  ImagingSelectionImageRegion3DBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.regionType,
    this.coordinate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingSelection.instance.imageRegion3D',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImagingSelectionImageRegion3DBuilder.empty() =>
      ImagingSelectionImageRegion3DBuilder(
        regionType: ImagingSelection3DGraphicTypeBuilder.values.first,
        coordinate: <FhirDecimalBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionImageRegion3DBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingSelection.instance.imageRegion3D';
    return ImagingSelectionImageRegion3DBuilder(
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
      regionType:
          JsonParser.parsePrimitive<ImagingSelection3DGraphicTypeBuilder>(
        json,
        'regionType',
        ImagingSelection3DGraphicTypeBuilder.fromJson,
        '$objectPath.regionType',
      ),
      coordinate: JsonParser.parsePrimitiveList<FhirDecimalBuilder>(
        json,
        'coordinate',
        FhirDecimalBuilder.fromJson,
        '$objectPath.coordinate',
      ),
    );
  }

  /// Deserialize [ImagingSelectionImageRegion3DBuilder]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionImageRegion3DBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionImageRegion3DBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionImageRegion3DBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionImageRegion3DBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionImageRegion3DBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionImageRegion3DBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionImageRegion3DBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionImageRegion3D';

  /// [regionType]
  /// Specifies the type of image region.
  ImagingSelection3DGraphicTypeBuilder? regionType;

  /// [coordinate]
  /// The coordinates describing the image region. Encoded as an ordered set
  /// of (x,y,z) triplets (in mm and may be negative) that define a region of
  /// interest in the patient-relative Reference Coordinate System defined by
  /// ImagingSelection.frameOfReferenceUid element.
  List<FhirDecimalBuilder>? coordinate;

  /// Converts a [ImagingSelectionImageRegion3DBuilder]
  /// to [ImagingSelectionImageRegion3D]
  @override
  ImagingSelectionImageRegion3D build() =>
      ImagingSelectionImageRegion3D.fromJson(toJson());

  /// Converts a [ImagingSelectionImageRegion3DBuilder]
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
    addField('regionType', regionType);
    addField('coordinate', coordinate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'regionType',
      'coordinate',
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
      case 'regionType':
        if (regionType != null) {
          fields.add(regionType!);
        }
      case 'coordinate':
        if (coordinate != null) {
          fields.addAll(coordinate!);
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
      case 'regionType':
        {
          if (child is ImagingSelection3DGraphicTypeBuilder) {
            regionType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ImagingSelection3DGraphicTypeBuilder(stringValue);
                regionType = converted;
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
      case 'coordinate':
        {
          if (child is List<FhirDecimalBuilder>) {
            // Replace or create new list
            coordinate = child;
            return;
          } else if (child is FhirDecimalBuilder) {
            // Add single element to existing list or create new list
            coordinate = [
              ...(coordinate ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDecimalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirDecimalBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              coordinate = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  coordinate = [
                    ...(coordinate ?? []),
                    converted,
                  ];
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
      case 'regionType':
        return ['FhirCodeEnumBuilder'];
      case 'coordinate':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImagingSelectionImageRegion3DBuilder]
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
      case 'regionType':
        {
          regionType = ImagingSelection3DGraphicTypeBuilder.empty();
          return;
        }
      case 'coordinate':
        {
          coordinate = <FhirDecimalBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImagingSelectionImageRegion3DBuilder clone() => throw UnimplementedError();
  @override
  ImagingSelectionImageRegion3DBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ImagingSelection3DGraphicTypeBuilder? regionType,
    List<FhirDecimalBuilder>? coordinate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImagingSelectionImageRegion3DBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regionType: regionType ?? this.regionType,
      coordinate: coordinate ?? this.coordinate,
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
    if (o is! ImagingSelectionImageRegion3DBuilder) {
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
      regionType,
      o.regionType,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimalBuilder>(
      coordinate,
      o.coordinate,
    )) {
      return false;
    }
    return true;
  }
}
