// ignore_for_file: public_member_api_docs

import 'package:fhir_r6/fhir_r6.dart';

// ignore: constant_identifier_names
const String NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';

class FHIRPathConstant {
  static bool isFHIRPathConstant(String string) {
    return string.isNotEmpty &&
        (string[0] == "'" ||
            string[0] == '"' ||
            string[0] == '@' ||
            string[0] == '%' ||
            string[0] == '-' ||
            string[0] == '+' ||
            (string[0].compareTo('0') >= 0 && string[0].compareTo('9') <= 0) ||
            string == 'true' ||
            string == 'false' ||
            string == '{}');
  }

  static bool isFHIRPathFixedName(String string) {
    return string.isNotEmpty && (string[0] == '`');
  }

  static bool isFHIRPathStringConstant(String string) {
    return string[0] == "'" || string[0] == '"' || string[0] == '`';
  }
}

class FHIRConstant extends FhirBase {
  FHIRConstant(this.value);

  static final BigInt serialVersionUID = BigInt.parse('-8933773658248269439');
  String value;
  String? idBase;

  @override
  String toString() => value;

  @override
  String get fhirType => '%constant';

  @override
  String get primitiveValue => value;

  FhirBase copy() {
    throw UnimplementedError();
  }

  @override
  FhirBase clone() {
    throw UnimplementedError();
  }

  @override
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  @override
  $FhirBaseCopyWith<FhirBase> get copyWith => throw UnimplementedError();
}
