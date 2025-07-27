// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRVersion
enum FHIRVersionEnum {
  /// 0.01
  value001,

  /// 0.05
  value005,

  /// 0.06
  value006,

  /// 0.11
  value011,

  /// 0.0
  value00,

  /// 0.0.80
  value0080,

  /// 0.0.81
  value0081,

  /// 0.0.82
  value0082,

  /// 0.4
  value04,

  /// 0.4.0
  value040,

  /// 0.5
  value05,

  /// 0.5.0
  value050,

  /// 1.0
  value10,

  /// 1.0.0
  value100,

  /// 1.0.1
  value101,

  /// 1.0.2
  value102,

  /// 1.1
  value11,

  /// 1.1.0
  value110,

  /// 1.4
  value14,

  /// 1.4.0
  value140,

  /// 1.6
  value16,

  /// 1.6.0
  value160,

  /// 1.8
  value18,

  /// 1.8.0
  value180,

  /// 3.0
  value30,

  /// 3.0.0
  value300,

  /// 3.0.1
  value301,

  /// 3.0.2
  value302,

  /// 3.3
  value33,

  /// 3.3.0
  value330,

  /// 3.5
  value35,

  /// 3.5.0
  value350,

  /// 4.0
  value40,

  /// 4.0.0
  value400,

  /// 4.0.1
  value401,

  /// 4.1
  value41,

  /// 4.1.0
  value410,

  /// 4.2
  value42,

  /// 4.2.0
  value420,

  /// 4.3
  value43,

  /// 4.3.0
  value430,

  /// 4.3.0-cibuild
  value430Cibuild,

  /// 4.3.0-snapshot1
  value430Snapshot1,

  /// 4.4
  value44,

  /// 4.4.0
  value440,

  /// 4.5
  value45,

  /// 4.5.0
  value450,

  /// 4.6
  value46,

  /// 4.6.0
  value460,

  /// 5.0
  value50,

  /// 5.0.0
  value500,

  /// 5.0.0-cibuild
  value500Cibuild,

  /// 5.0.0-snapshot1
  value500Snapshot1,

  /// 5.0.0-snapshot2
  value500Snapshot2,

  /// 5.0.0-ballot
  value500Ballot,

  /// 5.0.0-snapshot3
  value500Snapshot3,

  /// 5.0.0-draft-final
  value500DraftFinal,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRVersionEnum.value001:
        return '0.01';
      case FHIRVersionEnum.value005:
        return '0.05';
      case FHIRVersionEnum.value006:
        return '0.06';
      case FHIRVersionEnum.value011:
        return '0.11';
      case FHIRVersionEnum.value00:
        return '0.0';
      case FHIRVersionEnum.value0080:
        return '0.0.80';
      case FHIRVersionEnum.value0081:
        return '0.0.81';
      case FHIRVersionEnum.value0082:
        return '0.0.82';
      case FHIRVersionEnum.value04:
        return '0.4';
      case FHIRVersionEnum.value040:
        return '0.4.0';
      case FHIRVersionEnum.value05:
        return '0.5';
      case FHIRVersionEnum.value050:
        return '0.5.0';
      case FHIRVersionEnum.value10:
        return '1.0';
      case FHIRVersionEnum.value100:
        return '1.0.0';
      case FHIRVersionEnum.value101:
        return '1.0.1';
      case FHIRVersionEnum.value102:
        return '1.0.2';
      case FHIRVersionEnum.value11:
        return '1.1';
      case FHIRVersionEnum.value110:
        return '1.1.0';
      case FHIRVersionEnum.value14:
        return '1.4';
      case FHIRVersionEnum.value140:
        return '1.4.0';
      case FHIRVersionEnum.value16:
        return '1.6';
      case FHIRVersionEnum.value160:
        return '1.6.0';
      case FHIRVersionEnum.value18:
        return '1.8';
      case FHIRVersionEnum.value180:
        return '1.8.0';
      case FHIRVersionEnum.value30:
        return '3.0';
      case FHIRVersionEnum.value300:
        return '3.0.0';
      case FHIRVersionEnum.value301:
        return '3.0.1';
      case FHIRVersionEnum.value302:
        return '3.0.2';
      case FHIRVersionEnum.value33:
        return '3.3';
      case FHIRVersionEnum.value330:
        return '3.3.0';
      case FHIRVersionEnum.value35:
        return '3.5';
      case FHIRVersionEnum.value350:
        return '3.5.0';
      case FHIRVersionEnum.value40:
        return '4.0';
      case FHIRVersionEnum.value400:
        return '4.0.0';
      case FHIRVersionEnum.value401:
        return '4.0.1';
      case FHIRVersionEnum.value41:
        return '4.1';
      case FHIRVersionEnum.value410:
        return '4.1.0';
      case FHIRVersionEnum.value42:
        return '4.2';
      case FHIRVersionEnum.value420:
        return '4.2.0';
      case FHIRVersionEnum.value43:
        return '4.3';
      case FHIRVersionEnum.value430:
        return '4.3.0';
      case FHIRVersionEnum.value430Cibuild:
        return '4.3.0-cibuild';
      case FHIRVersionEnum.value430Snapshot1:
        return '4.3.0-snapshot1';
      case FHIRVersionEnum.value44:
        return '4.4';
      case FHIRVersionEnum.value440:
        return '4.4.0';
      case FHIRVersionEnum.value45:
        return '4.5';
      case FHIRVersionEnum.value450:
        return '4.5.0';
      case FHIRVersionEnum.value46:
        return '4.6';
      case FHIRVersionEnum.value460:
        return '4.6.0';
      case FHIRVersionEnum.value50:
        return '5.0';
      case FHIRVersionEnum.value500:
        return '5.0.0';
      case FHIRVersionEnum.value500Cibuild:
        return '5.0.0-cibuild';
      case FHIRVersionEnum.value500Snapshot1:
        return '5.0.0-snapshot1';
      case FHIRVersionEnum.value500Snapshot2:
        return '5.0.0-snapshot2';
      case FHIRVersionEnum.value500Ballot:
        return '5.0.0-ballot';
      case FHIRVersionEnum.value500Snapshot3:
        return '5.0.0-snapshot3';
      case FHIRVersionEnum.value500DraftFinal:
        return '5.0.0-draft-final';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRVersionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRVersionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRVersionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '0.01':
        return FHIRVersionEnum.value001;
      case '0.05':
        return FHIRVersionEnum.value005;
      case '0.06':
        return FHIRVersionEnum.value006;
      case '0.11':
        return FHIRVersionEnum.value011;
      case '0.0':
        return FHIRVersionEnum.value00;
      case '0.0.80':
        return FHIRVersionEnum.value0080;
      case '0.0.81':
        return FHIRVersionEnum.value0081;
      case '0.0.82':
        return FHIRVersionEnum.value0082;
      case '0.4':
        return FHIRVersionEnum.value04;
      case '0.4.0':
        return FHIRVersionEnum.value040;
      case '0.5':
        return FHIRVersionEnum.value05;
      case '0.5.0':
        return FHIRVersionEnum.value050;
      case '1.0':
        return FHIRVersionEnum.value10;
      case '1.0.0':
        return FHIRVersionEnum.value100;
      case '1.0.1':
        return FHIRVersionEnum.value101;
      case '1.0.2':
        return FHIRVersionEnum.value102;
      case '1.1':
        return FHIRVersionEnum.value11;
      case '1.1.0':
        return FHIRVersionEnum.value110;
      case '1.4':
        return FHIRVersionEnum.value14;
      case '1.4.0':
        return FHIRVersionEnum.value140;
      case '1.6':
        return FHIRVersionEnum.value16;
      case '1.6.0':
        return FHIRVersionEnum.value160;
      case '1.8':
        return FHIRVersionEnum.value18;
      case '1.8.0':
        return FHIRVersionEnum.value180;
      case '3.0':
        return FHIRVersionEnum.value30;
      case '3.0.0':
        return FHIRVersionEnum.value300;
      case '3.0.1':
        return FHIRVersionEnum.value301;
      case '3.0.2':
        return FHIRVersionEnum.value302;
      case '3.3':
        return FHIRVersionEnum.value33;
      case '3.3.0':
        return FHIRVersionEnum.value330;
      case '3.5':
        return FHIRVersionEnum.value35;
      case '3.5.0':
        return FHIRVersionEnum.value350;
      case '4.0':
        return FHIRVersionEnum.value40;
      case '4.0.0':
        return FHIRVersionEnum.value400;
      case '4.0.1':
        return FHIRVersionEnum.value401;
      case '4.1':
        return FHIRVersionEnum.value41;
      case '4.1.0':
        return FHIRVersionEnum.value410;
      case '4.2':
        return FHIRVersionEnum.value42;
      case '4.2.0':
        return FHIRVersionEnum.value420;
      case '4.3':
        return FHIRVersionEnum.value43;
      case '4.3.0':
        return FHIRVersionEnum.value430;
      case '4.3.0-cibuild':
        return FHIRVersionEnum.value430Cibuild;
      case '4.3.0-snapshot1':
        return FHIRVersionEnum.value430Snapshot1;
      case '4.4':
        return FHIRVersionEnum.value44;
      case '4.4.0':
        return FHIRVersionEnum.value440;
      case '4.5':
        return FHIRVersionEnum.value45;
      case '4.5.0':
        return FHIRVersionEnum.value450;
      case '4.6':
        return FHIRVersionEnum.value46;
      case '4.6.0':
        return FHIRVersionEnum.value460;
      case '5.0':
        return FHIRVersionEnum.value50;
      case '5.0.0':
        return FHIRVersionEnum.value500;
      case '5.0.0-cibuild':
        return FHIRVersionEnum.value500Cibuild;
      case '5.0.0-snapshot1':
        return FHIRVersionEnum.value500Snapshot1;
      case '5.0.0-snapshot2':
        return FHIRVersionEnum.value500Snapshot2;
      case '5.0.0-ballot':
        return FHIRVersionEnum.value500Ballot;
      case '5.0.0-snapshot3':
        return FHIRVersionEnum.value500Snapshot3;
      case '5.0.0-draft-final':
        return FHIRVersionEnum.value500DraftFinal;
    }
    return null;
  }
}

/// All published FHIR Versions.
class FHIRVersion extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRVersion._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory FHIRVersion(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = FHIRVersionEnum.fromString(valueString);
    return FHIRVersion._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [FHIRVersion]
  /// from JSON.
  factory FHIRVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRVersionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRVersion cannot be constructed from JSON.',
      );
    }
    return FHIRVersion._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRVersion
  final FHIRVersionEnum? valueEnum;

  /// value0_01
  static const FHIRVersion value001 = FHIRVersion._(
    valueString: '0.01',
    valueEnum: FHIRVersionEnum.value001,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.01',
    ),
  );

  /// value0_05
  static const FHIRVersion value005 = FHIRVersion._(
    valueString: '0.05',
    valueEnum: FHIRVersionEnum.value005,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.05',
    ),
  );

  /// value0_06
  static const FHIRVersion value006 = FHIRVersion._(
    valueString: '0.06',
    valueEnum: FHIRVersionEnum.value006,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.06',
    ),
  );

  /// value0_11
  static const FHIRVersion value011 = FHIRVersion._(
    valueString: '0.11',
    valueEnum: FHIRVersionEnum.value011,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.11',
    ),
  );

  /// value0_0
  static const FHIRVersion value00 = FHIRVersion._(
    valueString: '0.0',
    valueEnum: FHIRVersionEnum.value00,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.0',
    ),
  );

  /// value0_0_80
  static const FHIRVersion value0080 = FHIRVersion._(
    valueString: '0.0.80',
    valueEnum: FHIRVersionEnum.value0080,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.0.80',
    ),
  );

  /// value0_0_81
  static const FHIRVersion value0081 = FHIRVersion._(
    valueString: '0.0.81',
    valueEnum: FHIRVersionEnum.value0081,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.0.81',
    ),
  );

  /// value0_0_82
  static const FHIRVersion value0082 = FHIRVersion._(
    valueString: '0.0.82',
    valueEnum: FHIRVersionEnum.value0082,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.0.82',
    ),
  );

  /// value0_4
  static const FHIRVersion value04 = FHIRVersion._(
    valueString: '0.4',
    valueEnum: FHIRVersionEnum.value04,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.4',
    ),
  );

  /// value0_4_0
  static const FHIRVersion value040 = FHIRVersion._(
    valueString: '0.4.0',
    valueEnum: FHIRVersionEnum.value040,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.4.0',
    ),
  );

  /// value0_5
  static const FHIRVersion value05 = FHIRVersion._(
    valueString: '0.5',
    valueEnum: FHIRVersionEnum.value05,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.5',
    ),
  );

  /// value0_5_0
  static const FHIRVersion value050 = FHIRVersion._(
    valueString: '0.5.0',
    valueEnum: FHIRVersionEnum.value050,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '0.5.0',
    ),
  );

  /// value1_0
  static const FHIRVersion value10 = FHIRVersion._(
    valueString: '1.0',
    valueEnum: FHIRVersionEnum.value10,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.0',
    ),
  );

  /// value1_0_0
  static const FHIRVersion value100 = FHIRVersion._(
    valueString: '1.0.0',
    valueEnum: FHIRVersionEnum.value100,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.0.0',
    ),
  );

  /// value1_0_1
  static const FHIRVersion value101 = FHIRVersion._(
    valueString: '1.0.1',
    valueEnum: FHIRVersionEnum.value101,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.0.1',
    ),
  );

  /// value1_0_2
  static const FHIRVersion value102 = FHIRVersion._(
    valueString: '1.0.2',
    valueEnum: FHIRVersionEnum.value102,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.0.2',
    ),
  );

  /// value1_1
  static const FHIRVersion value11 = FHIRVersion._(
    valueString: '1.1',
    valueEnum: FHIRVersionEnum.value11,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.1',
    ),
  );

  /// value1_1_0
  static const FHIRVersion value110 = FHIRVersion._(
    valueString: '1.1.0',
    valueEnum: FHIRVersionEnum.value110,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.1.0',
    ),
  );

  /// value1_4
  static const FHIRVersion value14 = FHIRVersion._(
    valueString: '1.4',
    valueEnum: FHIRVersionEnum.value14,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.4',
    ),
  );

  /// value1_4_0
  static const FHIRVersion value140 = FHIRVersion._(
    valueString: '1.4.0',
    valueEnum: FHIRVersionEnum.value140,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.4.0',
    ),
  );

  /// value1_6
  static const FHIRVersion value16 = FHIRVersion._(
    valueString: '1.6',
    valueEnum: FHIRVersionEnum.value16,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.6',
    ),
  );

  /// value1_6_0
  static const FHIRVersion value160 = FHIRVersion._(
    valueString: '1.6.0',
    valueEnum: FHIRVersionEnum.value160,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.6.0',
    ),
  );

  /// value1_8
  static const FHIRVersion value18 = FHIRVersion._(
    valueString: '1.8',
    valueEnum: FHIRVersionEnum.value18,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.8',
    ),
  );

  /// value1_8_0
  static const FHIRVersion value180 = FHIRVersion._(
    valueString: '1.8.0',
    valueEnum: FHIRVersionEnum.value180,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '1.8.0',
    ),
  );

  /// value3_0
  static const FHIRVersion value30 = FHIRVersion._(
    valueString: '3.0',
    valueEnum: FHIRVersionEnum.value30,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.0',
    ),
  );

  /// value3_0_0
  static const FHIRVersion value300 = FHIRVersion._(
    valueString: '3.0.0',
    valueEnum: FHIRVersionEnum.value300,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.0.0',
    ),
  );

  /// value3_0_1
  static const FHIRVersion value301 = FHIRVersion._(
    valueString: '3.0.1',
    valueEnum: FHIRVersionEnum.value301,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.0.1',
    ),
  );

  /// value3_0_2
  static const FHIRVersion value302 = FHIRVersion._(
    valueString: '3.0.2',
    valueEnum: FHIRVersionEnum.value302,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.0.2',
    ),
  );

  /// value3_3
  static const FHIRVersion value33 = FHIRVersion._(
    valueString: '3.3',
    valueEnum: FHIRVersionEnum.value33,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.3',
    ),
  );

  /// value3_3_0
  static const FHIRVersion value330 = FHIRVersion._(
    valueString: '3.3.0',
    valueEnum: FHIRVersionEnum.value330,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.3.0',
    ),
  );

  /// value3_5
  static const FHIRVersion value35 = FHIRVersion._(
    valueString: '3.5',
    valueEnum: FHIRVersionEnum.value35,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.5',
    ),
  );

  /// value3_5_0
  static const FHIRVersion value350 = FHIRVersion._(
    valueString: '3.5.0',
    valueEnum: FHIRVersionEnum.value350,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '3.5.0',
    ),
  );

  /// value4_0
  static const FHIRVersion value40 = FHIRVersion._(
    valueString: '4.0',
    valueEnum: FHIRVersionEnum.value40,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.0',
    ),
  );

  /// value4_0_0
  static const FHIRVersion value400 = FHIRVersion._(
    valueString: '4.0.0',
    valueEnum: FHIRVersionEnum.value400,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.0.0',
    ),
  );

  /// value4_0_1
  static const FHIRVersion value401 = FHIRVersion._(
    valueString: '4.0.1',
    valueEnum: FHIRVersionEnum.value401,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.0.1',
    ),
  );

  /// value4_1
  static const FHIRVersion value41 = FHIRVersion._(
    valueString: '4.1',
    valueEnum: FHIRVersionEnum.value41,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.1',
    ),
  );

  /// value4_1_0
  static const FHIRVersion value410 = FHIRVersion._(
    valueString: '4.1.0',
    valueEnum: FHIRVersionEnum.value410,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.1.0',
    ),
  );

  /// value4_2
  static const FHIRVersion value42 = FHIRVersion._(
    valueString: '4.2',
    valueEnum: FHIRVersionEnum.value42,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.2',
    ),
  );

  /// value4_2_0
  static const FHIRVersion value420 = FHIRVersion._(
    valueString: '4.2.0',
    valueEnum: FHIRVersionEnum.value420,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.2.0',
    ),
  );

  /// value4_3
  static const FHIRVersion value43 = FHIRVersion._(
    valueString: '4.3',
    valueEnum: FHIRVersionEnum.value43,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.3',
    ),
  );

  /// value4_3_0
  static const FHIRVersion value430 = FHIRVersion._(
    valueString: '4.3.0',
    valueEnum: FHIRVersionEnum.value430,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.3.0',
    ),
  );

  /// value4_3_0_cibuild
  static const FHIRVersion value430Cibuild = FHIRVersion._(
    valueString: '4.3.0-cibuild',
    valueEnum: FHIRVersionEnum.value430Cibuild,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.3.0-cibuild',
    ),
  );

  /// value4_3_0_snapshot1
  static const FHIRVersion value430Snapshot1 = FHIRVersion._(
    valueString: '4.3.0-snapshot1',
    valueEnum: FHIRVersionEnum.value430Snapshot1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.3.0-snapshot1',
    ),
  );

  /// value4_4
  static const FHIRVersion value44 = FHIRVersion._(
    valueString: '4.4',
    valueEnum: FHIRVersionEnum.value44,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.4',
    ),
  );

  /// value4_4_0
  static const FHIRVersion value440 = FHIRVersion._(
    valueString: '4.4.0',
    valueEnum: FHIRVersionEnum.value440,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.4.0',
    ),
  );

  /// value4_5
  static const FHIRVersion value45 = FHIRVersion._(
    valueString: '4.5',
    valueEnum: FHIRVersionEnum.value45,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.5',
    ),
  );

  /// value4_5_0
  static const FHIRVersion value450 = FHIRVersion._(
    valueString: '4.5.0',
    valueEnum: FHIRVersionEnum.value450,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.5.0',
    ),
  );

  /// value4_6
  static const FHIRVersion value46 = FHIRVersion._(
    valueString: '4.6',
    valueEnum: FHIRVersionEnum.value46,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.6',
    ),
  );

  /// value4_6_0
  static const FHIRVersion value460 = FHIRVersion._(
    valueString: '4.6.0',
    valueEnum: FHIRVersionEnum.value460,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '4.6.0',
    ),
  );

  /// value5_0
  static const FHIRVersion value50 = FHIRVersion._(
    valueString: '5.0',
    valueEnum: FHIRVersionEnum.value50,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0',
    ),
  );

  /// value5_0_0
  static const FHIRVersion value500 = FHIRVersion._(
    valueString: '5.0.0',
    valueEnum: FHIRVersionEnum.value500,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0',
    ),
  );

  /// value5_0_0_cibuild
  static const FHIRVersion value500Cibuild = FHIRVersion._(
    valueString: '5.0.0-cibuild',
    valueEnum: FHIRVersionEnum.value500Cibuild,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-cibuild',
    ),
  );

  /// value5_0_0_snapshot1
  static const FHIRVersion value500Snapshot1 = FHIRVersion._(
    valueString: '5.0.0-snapshot1',
    valueEnum: FHIRVersionEnum.value500Snapshot1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-snapshot1',
    ),
  );

  /// value5_0_0_snapshot2
  static const FHIRVersion value500Snapshot2 = FHIRVersion._(
    valueString: '5.0.0-snapshot2',
    valueEnum: FHIRVersionEnum.value500Snapshot2,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-snapshot2',
    ),
  );

  /// value5_0_0_ballot
  static const FHIRVersion value500Ballot = FHIRVersion._(
    valueString: '5.0.0-ballot',
    valueEnum: FHIRVersionEnum.value500Ballot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-ballot',
    ),
  );

  /// value5_0_0_snapshot3
  static const FHIRVersion value500Snapshot3 = FHIRVersion._(
    valueString: '5.0.0-snapshot3',
    valueEnum: FHIRVersionEnum.value500Snapshot3,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-snapshot3',
    ),
  );

  /// value5_0_0_draft_final
  static const FHIRVersion value500DraftFinal = FHIRVersion._(
    valueString: '5.0.0-draft-final',
    valueEnum: FHIRVersionEnum.value500DraftFinal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/FHIR-version',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: '5.0.0-draft-final',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRVersion> values = [
    value001,
    value005,
    value006,
    value011,
    value00,
    value0080,
    value0081,
    value0082,
    value04,
    value040,
    value05,
    value050,
    value10,
    value100,
    value101,
    value102,
    value11,
    value110,
    value14,
    value140,
    value16,
    value160,
    value18,
    value180,
    value30,
    value300,
    value301,
    value302,
    value33,
    value330,
    value35,
    value350,
    value40,
    value400,
    value401,
    value41,
    value410,
    value42,
    value420,
    value43,
    value430,
    value430Cibuild,
    value430Snapshot1,
    value44,
    value440,
    value45,
    value450,
    value46,
    value460,
    value50,
    value500,
    value500Cibuild,
    value500Snapshot1,
    value500Snapshot2,
    value500Ballot,
    value500Snapshot3,
    value500DraftFinal,
  ];

  /// Returns the enum value with an element attached
  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  FHIRVersion clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRVersionCopyWithImpl<FHIRVersion> get copyWith =>
      FHIRVersionCopyWithImpl<FHIRVersion>(
        this,
        (v) => v as FHIRVersion,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRVersionCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRVersionCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      FHIRVersion(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
