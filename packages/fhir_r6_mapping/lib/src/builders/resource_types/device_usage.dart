import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        DeviceUsage,
        DeviceUsageAdherence,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DeviceUsageBuilder]
/// A record of a device being used by a patient where the record is the
/// result of a report from the patient or a clinician.
class DeviceUsageBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceUsageBuilder]

  DeviceUsageBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.status,
    this.category,
    this.patient,
    this.derivedFrom,
    this.context,
    TimingXDeviceUsageBuilder? timingX,
    TimingBuilder? timingTiming,
    PeriodBuilder? timingPeriod,
    FhirDateTimeBuilder? timingDateTime,
    this.dateAsserted,
    this.usageStatus,
    this.usageReason,
    this.adherence,
    this.informationSource,
    this.device,
    this.reason,
    this.bodySite,
    this.note,
  })  : timingX = timingX ?? timingTiming ?? timingPeriod ?? timingDateTime,
        super(
          objectPath: 'DeviceUsage',
          resourceType: R5ResourceType.DeviceUsage,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceUsageBuilder.empty() => DeviceUsageBuilder(
        status: DeviceUsageStatusBuilder.values.first,
        patient: ReferenceBuilder.empty(),
        device: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUsageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceUsage';
    return DeviceUsageBuilder(
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
      status: JsonParser.parsePrimitive<DeviceUsageStatusBuilder>(
        json,
        'status',
        DeviceUsageStatusBuilder.fromJson,
        '$objectPath.status',
      ),
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
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
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
      context: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'context',
        ReferenceBuilder.fromJson,
        '$objectPath.context',
      ),
      timingX: JsonParser.parsePolymorphic<TimingXDeviceUsageBuilder>(
        json,
        {
          'timingTiming': TimingBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
          'timingDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      dateAsserted: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateAsserted',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateAsserted',
      ),
      usageStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'usageStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.usageStatus',
      ),
      usageReason: (json['usageReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usageReason',
              },
            ),
          )
          .toList(),
      adherence: JsonParser.parseObject<DeviceUsageAdherenceBuilder>(
        json,
        'adherence',
        DeviceUsageAdherenceBuilder.fromJson,
        '$objectPath.adherence',
      ),
      informationSource: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'informationSource',
        ReferenceBuilder.fromJson,
        '$objectPath.informationSource',
      ),
      device: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'device',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'bodySite',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.bodySite',
      ),
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

  /// Deserialize [DeviceUsageBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceUsageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUsageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUsageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUsageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUsageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUsageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUsageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUsage';

  /// [identifier]
  /// An external identifier for this statement such as an IRI.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// DeviceUsage.
  List<ReferenceBuilder>? basedOn;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the device used that this statement is about. Generally this
  /// will be active or completed.
  DeviceUsageStatusBuilder? status;

  /// [category]
  /// This attribute indicates a category for the statement - The device
  /// statement may be made in an inpatient or outpatient settting (inpatient
  /// | outpatient | community | patientspecified).
  List<CodeableConceptBuilder>? category;

  /// [patient]
  /// The patient who used the device.
  ReferenceBuilder? patient;

  /// [derivedFrom]
  /// Allows linking the DeviceUsage to the underlying Request, or to other
  /// information that supports or is used to derive the DeviceUsage.
  List<ReferenceBuilder>? derivedFrom;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// device use statement.
  ReferenceBuilder? context;

  /// [timingX]
  /// How often the device was used.
  TimingXDeviceUsageBuilder? timingX;

  /// Getter for [timingTiming] as a TimingBuilder
  TimingBuilder? get timingTiming => timingX?.isAs<TimingBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// Getter for [timingDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get timingDateTime =>
      timingX?.isAs<FhirDateTimeBuilder>();

  /// [dateAsserted]
  /// The time at which the statement was recorded by informationSource.
  FhirDateTimeBuilder? dateAsserted;

  /// [usageStatus]
  /// The status of the device usage, for example always, sometimes, never.
  /// This is not the same as the status of the statement.
  CodeableConceptBuilder? usageStatus;

  /// [usageReason]
  /// The reason for asserting the usage status - for example forgot, lost,
  /// stolen, broken.
  List<CodeableConceptBuilder>? usageReason;

  /// [adherence]
  /// This indicates how or if the device is being used.
  DeviceUsageAdherenceBuilder? adherence;

  /// [informationSource]
  /// Who reported the device was being used by the patient.
  ReferenceBuilder? informationSource;

  /// [device]
  /// Code or Reference to device used.
  CodeableReferenceBuilder? device;

  /// [reason]
  /// Reason or justification for the use of the device. A coded concept, or
  /// another resource whose existence justifies this DeviceUsage.
  List<CodeableReferenceBuilder>? reason;

  /// [bodySite]
  /// Indicates the anotomic location on the subject's body where the device
  /// was used ( i.e. the target).
  CodeableReferenceBuilder? bodySite;

  /// [note]
  /// Details about the device statement that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated
  /// with the statement.
  List<AnnotationBuilder>? note;

  /// Converts a [DeviceUsageBuilder]
  /// to [DeviceUsage]
  @override
  DeviceUsage build() => DeviceUsage.fromJson(toJson());

  /// Converts a [DeviceUsageBuilder]
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
    addField('basedOn', basedOn);
    addField('status', status);
    addField('category', category);
    addField('patient', patient);
    addField('derivedFrom', derivedFrom);
    addField('context', context);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalizeFirstLetter()}', timingX);
    }

    addField('dateAsserted', dateAsserted);
    addField('usageStatus', usageStatus);
    addField('usageReason', usageReason);
    addField('adherence', adherence);
    addField('informationSource', informationSource);
    addField('device', device);
    addField('reason', reason);
    addField('bodySite', bodySite);
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
      'basedOn',
      'status',
      'category',
      'patient',
      'derivedFrom',
      'context',
      'timingX',
      'dateAsserted',
      'usageStatus',
      'usageReason',
      'adherence',
      'informationSource',
      'device',
      'reason',
      'bodySite',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'timing':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingTiming':
        if (timingX is TimingBuilder) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is PeriodBuilder) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTimeBuilder) {
          fields.add(timingX!);
        }
      case 'dateAsserted':
        if (dateAsserted != null) {
          fields.add(dateAsserted!);
        }
      case 'usageStatus':
        if (usageStatus != null) {
          fields.add(usageStatus!);
        }
      case 'usageReason':
        if (usageReason != null) {
          fields.addAll(usageReason!);
        }
      case 'adherence':
        if (adherence != null) {
          fields.add(adherence!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.add(informationSource!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
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
      case 'status':
        {
          if (child is DeviceUsageStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceUsageStatusBuilder(stringValue);
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
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
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
      case 'context':
        {
          if (child is ReferenceBuilder) {
            context = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
      case 'timingX':
        {
          if (child is TimingXDeviceUsageBuilder) {
            timingX = child;
            return;
          } else {
            if (child is TimingBuilder) {
              timingX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timingX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingTiming':
        {
          if (child is TimingBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is PeriodBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateAsserted':
        {
          if (child is FhirDateTimeBuilder) {
            dateAsserted = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateAsserted = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usageStatus':
        {
          if (child is CodeableConceptBuilder) {
            usageStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usageReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            usageReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            usageReason = [
              ...(usageReason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adherence':
        {
          if (child is DeviceUsageAdherenceBuilder) {
            adherence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'informationSource':
        {
          if (child is ReferenceBuilder) {
            informationSource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is CodeableReferenceBuilder) {
            device = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
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
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'context':
        return ['ReferenceBuilder'];
      case 'timing':
      case 'timingX':
        return [
          'TimingBuilder',
          'PeriodBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'timingTiming':
        return ['TimingBuilder'];
      case 'timingPeriod':
        return ['PeriodBuilder'];
      case 'timingDateTime':
        return ['FhirDateTimeBuilder'];
      case 'dateAsserted':
        return ['FhirDateTimeBuilder'];
      case 'usageStatus':
        return ['CodeableConceptBuilder'];
      case 'usageReason':
        return ['CodeableConceptBuilder'];
      case 'adherence':
        return ['DeviceUsageAdherenceBuilder'];
      case 'informationSource':
        return ['ReferenceBuilder'];
      case 'device':
        return ['CodeableReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'bodySite':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceUsageBuilder]
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
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = DeviceUsageStatusBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'context':
        {
          context = ReferenceBuilder.empty();
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingTiming':
        {
          timingX = TimingBuilder.empty();
          return;
        }
      case 'timingPeriod':
        {
          timingX = PeriodBuilder.empty();
          return;
        }
      case 'timingDateTime':
        {
          timingX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'dateAsserted':
        {
          dateAsserted = FhirDateTimeBuilder.empty();
          return;
        }
      case 'usageStatus':
        {
          usageStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'usageReason':
        {
          usageReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'adherence':
        {
          adherence = DeviceUsageAdherenceBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = ReferenceBuilder.empty();
          return;
        }
      case 'device':
        {
          device = CodeableReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableReferenceBuilder.empty();
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
  DeviceUsageBuilder clone() => throw UnimplementedError();
  @override
  DeviceUsageBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    DeviceUsageStatusBuilder? status,
    List<CodeableConceptBuilder>? category,
    ReferenceBuilder? patient,
    List<ReferenceBuilder>? derivedFrom,
    ReferenceBuilder? context,
    TimingXDeviceUsageBuilder? timingX,
    FhirDateTimeBuilder? dateAsserted,
    CodeableConceptBuilder? usageStatus,
    List<CodeableConceptBuilder>? usageReason,
    DeviceUsageAdherenceBuilder? adherence,
    ReferenceBuilder? informationSource,
    CodeableReferenceBuilder? device,
    List<CodeableReferenceBuilder>? reason,
    CodeableReferenceBuilder? bodySite,
    List<AnnotationBuilder>? note,
    TimingBuilder? timingTiming,
    PeriodBuilder? timingPeriod,
    FhirDateTimeBuilder? timingDateTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceUsageBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      category: category ?? this.category,
      patient: patient ?? this.patient,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      context: context ?? this.context,
      timingX: timingX ??
          timingTiming ??
          timingPeriod ??
          timingDateTime ??
          this.timingX,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      usageStatus: usageStatus ?? this.usageStatus,
      usageReason: usageReason ?? this.usageReason,
      adherence: adherence ?? this.adherence,
      informationSource: informationSource ?? this.informationSource,
      device: device ?? this.device,
      reason: reason ?? this.reason,
      bodySite: bodySite ?? this.bodySite,
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
    if (o is! DeviceUsageBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
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
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateAsserted,
      o.dateAsserted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usageStatus,
      o.usageStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      usageReason,
      o.usageReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adherence,
      o.adherence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
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

/// [DeviceUsageAdherenceBuilder]
/// This indicates how or if the device is being used.
class DeviceUsageAdherenceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceUsageAdherenceBuilder]

  DeviceUsageAdherenceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.reason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceUsage.adherence',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceUsageAdherenceBuilder.empty() => DeviceUsageAdherenceBuilder(
        code: CodeableConceptBuilder.empty(),
        reason: <CodeableConceptBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUsageAdherenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceUsage.adherence';
    return DeviceUsageAdherenceBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
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
    );
  }

  /// Deserialize [DeviceUsageAdherenceBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceUsageAdherenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUsageAdherenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUsageAdherenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUsageAdherenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUsageAdherenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUsageAdherenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUsageAdherenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUsageAdherence';

  /// [code]
  /// Type of adherence.
  CodeableConceptBuilder? code;

  /// [reason]
  /// Reason for adherence type.
  List<CodeableConceptBuilder>? reason;

  /// Converts a [DeviceUsageAdherenceBuilder]
  /// to [DeviceUsageAdherence]
  @override
  DeviceUsageAdherence build() => DeviceUsageAdherence.fromJson(toJson());

  /// Converts a [DeviceUsageAdherenceBuilder]
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
    addField('code', code);
    addField('reason', reason);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'reason',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceUsageAdherenceBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceUsageAdherenceBuilder clone() => throw UnimplementedError();
  @override
  DeviceUsageAdherenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    List<CodeableConceptBuilder>? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceUsageAdherenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      reason: reason ?? this.reason,
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
    if (o is! DeviceUsageAdherenceBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}
