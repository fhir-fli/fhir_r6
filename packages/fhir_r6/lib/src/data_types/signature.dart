import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'signature.g.dart';

/// [Signature]
/// A signature along with supporting context. The signature may be a
/// digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as
/// simple as a graphical image representing a hand-written signature, or a
/// signature ceremony Different signature approaches have different
/// utilities.
class Signature extends DataType
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
        ValueXExtension {
  /// Primary constructor for
  /// [Signature]

  const Signature({
    super.id,
    super.extension_,
    this.type,
    this.when,
    this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(
    Map<String, dynamic> json,
  ) {
    return Signature(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      when: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'when',
        FhirInstant.fromJson,
      ),
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
      ),
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
      ),
      targetFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'targetFormat',
        FhirCode.fromJson,
      ),
      sigFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'sigFormat',
        FhirCode.fromJson,
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
      ),
    );
  }

  /// Deserialize [Signature]
  /// from a [String] or [YamlMap] object
  factory Signature.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Signature.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Signature.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Signature '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Signature]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Signature.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Signature.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Signature';

  /// [type]
  /// An indication of the reason that the entity signed this document. This
  /// may be explicitly included as part of the signature information and can
  /// be used when determining accountability for various actions concerning
  /// the document.
  final List<Coding>? type;

  /// [when]
  /// When the digital signature was signed.
  final FhirInstant? when;

  /// [who]
  /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  final Reference? who;

  /// [onBehalfOf]
  /// A reference to an application-usable description of the identity that
  /// is represented by the signature.
  final Reference? onBehalfOf;

  /// [targetFormat]
  /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  final FhirCode? targetFormat;

  /// [sigFormat]
  /// A mime type that indicates the technical format of the signature.
  /// Important mime types are application/signature+xml for X ML DigSig,
  /// application/jose for JWS, and image/* for a graphical image of a
  /// signature, etc.
  final FhirCode? sigFormat;

  /// [data]
  /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  final FhirBase64Binary? data;
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
      'type',
      type,
    );
    addField(
      'when',
      when,
    );
    addField(
      'who',
      who,
    );
    addField(
      'onBehalfOf',
      onBehalfOf,
    );
    addField(
      'targetFormat',
      targetFormat,
    );
    addField(
      'sigFormat',
      sigFormat,
    );
    addField(
      'data',
      data,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'when',
      'who',
      'onBehalfOf',
      'targetFormat',
      'sigFormat',
      'data',
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
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'when':
        if (when != null) {
          fields.add(when!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
        }
      case 'targetFormat':
        if (targetFormat != null) {
          fields.add(targetFormat!);
        }
      case 'sigFormat':
        if (sigFormat != null) {
          fields.add(sigFormat!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
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
  Signature clone() => copyWith();

  /// Copy function for [Signature]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SignatureCopyWith<Signature> get copyWith =>
      _$SignatureCopyWithImpl<Signature>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Signature) {
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
    if (!listEquals<Coding>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      when,
      o.when,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onBehalfOf,
      o.onBehalfOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetFormat,
      o.targetFormat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sigFormat,
      o.sigFormat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    return true;
  }
}
