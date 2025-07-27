import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show ExtendedContactDetail, yamlMapToJson, yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ExtendedContactDetailBuilder]
/// Specifies contact information for a specific purpose over a period of
/// time, might be handled/monitored by a specific named person or
/// organization.
class ExtendedContactDetailBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        AddressXVirtualServiceDetailBuilder {
  /// Primary constructor for
  /// [ExtendedContactDetailBuilder]

  ExtendedContactDetailBuilder({
    super.id,
    super.extension_,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    this.organization,
    this.period,
    super.disallowExtensions,
    super.objectPath = 'ExtendedContactDetailBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExtendedContactDetailBuilder.empty() =>
      ExtendedContactDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExtendedContactDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'ExtendedContactDetail';
    return ExtendedContactDetailBuilder(
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
      purpose: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'purpose',
        CodeableConceptBuilder.fromJson,
        '$objectPath.purpose',
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<HumanNameBuilder>(
            (v) => HumanNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.telecom',
              },
            ),
          )
          .toList(),
      address: JsonParser.parseObject<AddressBuilder>(
        json,
        'address',
        AddressBuilder.fromJson,
        '$objectPath.address',
      ),
      organization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'organization',
        ReferenceBuilder.fromJson,
        '$objectPath.organization',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [ExtendedContactDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ExtendedContactDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExtendedContactDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExtendedContactDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExtendedContactDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExtendedContactDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExtendedContactDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExtendedContactDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExtendedContactDetail';

  /// [purpose]
  /// The purpose/type of contact.
  CodeableConceptBuilder? purpose;

  /// [name]
  /// The name of an individual to contact, some types of contact detail are
  /// usually blank.
  List<HumanNameBuilder>? name;

  /// [telecom]
  /// The contact details application for the purpose defined.
  List<ContactPointBuilder>? telecom;

  /// [address]
  /// Address for the contact.
  AddressBuilder? address;

  /// [organization]
  /// This contact detail is handled/monitored by a specific organization. If
  /// the name is provided in the contact, then it is referring to the named
  /// individual within this organization.
  ReferenceBuilder? organization;

  /// [period]
  /// Period that this contact was valid for usage.
  PeriodBuilder? period;

  /// Converts a [ExtendedContactDetailBuilder]
  /// to [ExtendedContactDetail]
  @override
  ExtendedContactDetail build() => ExtendedContactDetail.fromJson(toJson());

  /// Converts a [ExtendedContactDetailBuilder]
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
    addField('purpose', purpose);
    addField('name', name);
    addField('telecom', telecom);
    addField('address', address);
    addField('organization', organization);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'purpose',
      'name',
      'telecom',
      'address',
      'organization',
      'period',
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
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'telecom':
        if (telecom != null) {
          fields.addAll(telecom!);
        }
      case 'address':
        if (address != null) {
          fields.add(address!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
      case 'purpose':
        {
          if (child is CodeableConceptBuilder) {
            purpose = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<HumanNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is HumanNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'telecom':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            telecom = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            telecom = [
              ...(telecom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'address':
        {
          if (child is AddressBuilder) {
            address = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is ReferenceBuilder) {
            organization = child;
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
      case 'purpose':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['HumanNameBuilder'];
      case 'telecom':
        return ['ContactPointBuilder'];
      case 'address':
        return ['AddressBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExtendedContactDetailBuilder]
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
      case 'purpose':
        {
          purpose = CodeableConceptBuilder.empty();
          return;
        }
      case 'name':
        {
          name = <HumanNameBuilder>[];
          return;
        }
      case 'telecom':
        {
          telecom = <ContactPointBuilder>[];
          return;
        }
      case 'address':
        {
          address = AddressBuilder.empty();
          return;
        }
      case 'organization':
        {
          organization = ReferenceBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExtendedContactDetailBuilder clone() => throw UnimplementedError();
  @override
  ExtendedContactDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    CodeableConceptBuilder? purpose,
    List<HumanNameBuilder>? name,
    List<ContactPointBuilder>? telecom,
    AddressBuilder? address,
    ReferenceBuilder? organization,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ExtendedContactDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      organization: organization ?? this.organization,
      period: period ?? this.period,
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
    if (o is! ExtendedContactDetailBuilder) {
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
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!listEquals<HumanNameBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      telecom,
      o.telecom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      address,
      o.address,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
