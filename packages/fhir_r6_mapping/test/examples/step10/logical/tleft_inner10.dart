import 'package:collection/collection.dart';
import 'package:fhir_r5/fhir_r5.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';

/// [TLeftInner10]
/// TLeftInner definition
class TLeftInner10 extends Element {
  const TLeftInner10({
    super.id,
    super.extension_,
    this.ab,
    super.disallowExtensions,
  });

  /// An empty constructor for partial usage
  factory TLeftInner10.empty() => const TLeftInner10();

  factory TLeftInner10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeftInner10';
    return TLeftInner10(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      ab: JsonParser.parsePrimitive<FhirString>(
        json,
        'ab',
        FhirString.fromJson,
        '$objectPath.ab',
      ),
    );
  }

  /// [ab]
  /// A string field
  final FhirString? ab;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ab != null) {
      json['ab'] = ab!.valueString;
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeftInner10) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        ab == other.ab;
  }
}

/// Extension to convert [TLeftInner10] to a Builder
extension BuilderTLeftInner10 on TLeftInner10 {
  /// Converts [TLeftInner10] to a [TLeftInner10Builder]
  TLeftInner10Builder get toBuilder => TLeftInner10Builder.fromJson(toJson());
}

/// [TLeftInner10Builder]
/// TLeftInner definition - builder version for mutability
class TLeftInner10Builder extends ElementBuilder {
  /// Constructor for TLeftInner10Builder
  TLeftInner10Builder({
    super.id,
    super.extension_,
    this.ab,
    super.disallowExtensions,
    super.objectPath = 'TLeftInner10Builder',
  });

  /// An empty constructor for partial usage
  factory TLeftInner10Builder.empty() => TLeftInner10Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeftInner10Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeftInner10';
    return TLeftInner10Builder(
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
      ab: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'ab',
        FhirStringBuilder.fromJson,
        '$objectPath.ab',
      ),
    );
  }

  /// [ab]
  /// A string field
  FhirStringBuilder? ab;

  @override
  String get fhirType => 'TLeftInner10';

  /// converts a [TLeftInner10Builder]
  /// to [TLeftInner10]
  @override
  TLeftInner10 build() => TLeftInner10.fromJson(toJson());

  @override
  TLeftInner10Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? ab,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeftInner10Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ab: ab ?? this.ab,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'ab'];

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
      case 'ab':
        if (ab != null) {
          fields.add(ab!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ab':
        {
          if (child is FhirStringBuilder) {
            ab = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'ab':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

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
      case 'ab':
        {
          ab = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

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
    addField('ab', ab);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeftInner10Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        ab == other.ab;
  }

  @override
  TLeftInner10Builder clone() => copyWith();
}
