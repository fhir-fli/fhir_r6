import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'extended_contact_detail.g.dart';

/// [ExtendedContactDetail]
/// Specifies contact information for a specific purpose over a period of
/// time, might be handled/monitored by a specific named person or
/// organization.
class ExtendedContactDetail extends DataType
    implements
        ValueXParametersParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        AddressXVirtualServiceDetail {
  /// Primary constructor for
  /// [ExtendedContactDetail]

  const ExtendedContactDetail({
    super.id,
    super.extension_,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    this.organization,
    this.period,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExtendedContactDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExtendedContactDetail(
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
      purpose: JsonParser.parseObject<CodeableConcept>(
        json,
        'purpose',
        CodeableConcept.fromJson,
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<HumanName>(
            (v) => HumanName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      address: JsonParser.parseObject<Address>(
        json,
        'address',
        Address.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [ExtendedContactDetail]
  /// from a [String] or [YamlMap] object
  factory ExtendedContactDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExtendedContactDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExtendedContactDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExtendedContactDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExtendedContactDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExtendedContactDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExtendedContactDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExtendedContactDetail';

  /// [purpose]
  /// The purpose/type of contact.
  final CodeableConcept? purpose;

  /// [name]
  /// The name of an individual to contact, some types of contact detail are
  /// usually blank.
  final List<HumanName>? name;

  /// [telecom]
  /// The contact details application for the purpose defined.
  final List<ContactPoint>? telecom;

  /// [address]
  /// Address for the contact.
  final Address? address;

  /// [organization]
  /// This contact detail is handled/monitored by a specific organization. If
  /// the name is provided in the contact, then it is referring to the named
  /// individual within this organization.
  final Reference? organization;

  /// [period]
  /// Period that this contact was valid for usage.
  final Period? period;
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
      'purpose',
      purpose,
    );
    addField(
      'name',
      name,
    );
    addField(
      'telecom',
      telecom,
    );
    addField(
      'address',
      address,
    );
    addField(
      'organization',
      organization,
    );
    addField(
      'period',
      period,
    );
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExtendedContactDetail clone() => copyWith();

  /// Copy function for [ExtendedContactDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExtendedContactDetailCopyWith<ExtendedContactDetail> get copyWith =>
      _$ExtendedContactDetailCopyWithImpl<ExtendedContactDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExtendedContactDetail) {
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
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!listEquals<HumanName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ContactPoint>(
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
