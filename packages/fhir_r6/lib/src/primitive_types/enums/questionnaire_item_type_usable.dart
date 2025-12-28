// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemTypeUsable
enum QuestionnaireItemTypeUsableEnum {
  /// group
  group,

  /// display
  display_,

  /// question
  question,

  /// boolean
  boolean,

  /// decimal
  decimal,

  /// integer
  integer,

  /// date
  date,

  /// dateTime
  dateTime,

  /// time
  time,

  /// string
  string,

  /// text
  text,

  /// url
  url,

  /// coding
  coding,

  /// attachment
  attachment,

  /// reference
  reference,

  /// quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemTypeUsableEnum.group:
        return 'group';
      case QuestionnaireItemTypeUsableEnum.display_:
        return 'display';
      case QuestionnaireItemTypeUsableEnum.question:
        return 'question';
      case QuestionnaireItemTypeUsableEnum.boolean:
        return 'boolean';
      case QuestionnaireItemTypeUsableEnum.decimal:
        return 'decimal';
      case QuestionnaireItemTypeUsableEnum.integer:
        return 'integer';
      case QuestionnaireItemTypeUsableEnum.date:
        return 'date';
      case QuestionnaireItemTypeUsableEnum.dateTime:
        return 'dateTime';
      case QuestionnaireItemTypeUsableEnum.time:
        return 'time';
      case QuestionnaireItemTypeUsableEnum.string:
        return 'string';
      case QuestionnaireItemTypeUsableEnum.text:
        return 'text';
      case QuestionnaireItemTypeUsableEnum.url:
        return 'url';
      case QuestionnaireItemTypeUsableEnum.coding:
        return 'coding';
      case QuestionnaireItemTypeUsableEnum.attachment:
        return 'attachment';
      case QuestionnaireItemTypeUsableEnum.reference:
        return 'reference';
      case QuestionnaireItemTypeUsableEnum.quantity:
        return 'quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemTypeUsableEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemTypeUsableEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemTypeUsableEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'group':
        return QuestionnaireItemTypeUsableEnum.group;
      case 'display':
        return QuestionnaireItemTypeUsableEnum.display_;
      case 'question':
        return QuestionnaireItemTypeUsableEnum.question;
      case 'boolean':
        return QuestionnaireItemTypeUsableEnum.boolean;
      case 'decimal':
        return QuestionnaireItemTypeUsableEnum.decimal;
      case 'integer':
        return QuestionnaireItemTypeUsableEnum.integer;
      case 'date':
        return QuestionnaireItemTypeUsableEnum.date;
      case 'dateTime':
        return QuestionnaireItemTypeUsableEnum.dateTime;
      case 'time':
        return QuestionnaireItemTypeUsableEnum.time;
      case 'string':
        return QuestionnaireItemTypeUsableEnum.string;
      case 'text':
        return QuestionnaireItemTypeUsableEnum.text;
      case 'url':
        return QuestionnaireItemTypeUsableEnum.url;
      case 'coding':
        return QuestionnaireItemTypeUsableEnum.coding;
      case 'attachment':
        return QuestionnaireItemTypeUsableEnum.attachment;
      case 'reference':
        return QuestionnaireItemTypeUsableEnum.reference;
      case 'quantity':
        return QuestionnaireItemTypeUsableEnum.quantity;
    }
    return null;
  }
}

/// Item types allowed to appear on Questionnaire.type (excludes the
/// abstract 'questionnaire' code.
class QuestionnaireItemTypeUsable extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireItemTypeUsable._({
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
  factory QuestionnaireItemTypeUsable(
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
    final valueEnum = QuestionnaireItemTypeUsableEnum.fromString(valueString);
    return QuestionnaireItemTypeUsable._(
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

  /// Factory constructor to create [QuestionnaireItemTypeUsable]
  /// from JSON.
  factory QuestionnaireItemTypeUsable.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireItemTypeUsableEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemTypeUsable._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemTypeUsable cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemTypeUsable._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireItemTypeUsable
  final QuestionnaireItemTypeUsableEnum? valueEnum;

  /// group
  static const QuestionnaireItemTypeUsable group =
      QuestionnaireItemTypeUsable._(
    valueString: 'group',
    valueEnum: QuestionnaireItemTypeUsableEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// display_
  static const QuestionnaireItemTypeUsable display_ =
      QuestionnaireItemTypeUsable._(
    valueString: 'display',
    valueEnum: QuestionnaireItemTypeUsableEnum.display_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Display',
    ),
  );

  /// question
  static const QuestionnaireItemTypeUsable question =
      QuestionnaireItemTypeUsable._(
    valueString: 'question',
    valueEnum: QuestionnaireItemTypeUsableEnum.question,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Question',
    ),
  );

  /// boolean
  static const QuestionnaireItemTypeUsable boolean =
      QuestionnaireItemTypeUsable._(
    valueString: 'boolean',
    valueEnum: QuestionnaireItemTypeUsableEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Boolean',
    ),
  );

  /// decimal
  static const QuestionnaireItemTypeUsable decimal =
      QuestionnaireItemTypeUsable._(
    valueString: 'decimal',
    valueEnum: QuestionnaireItemTypeUsableEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Decimal',
    ),
  );

  /// integer
  static const QuestionnaireItemTypeUsable integer =
      QuestionnaireItemTypeUsable._(
    valueString: 'integer',
    valueEnum: QuestionnaireItemTypeUsableEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Integer',
    ),
  );

  /// date
  static const QuestionnaireItemTypeUsable date = QuestionnaireItemTypeUsable._(
    valueString: 'date',
    valueEnum: QuestionnaireItemTypeUsableEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Date',
    ),
  );

  /// dateTime
  static const QuestionnaireItemTypeUsable dateTime =
      QuestionnaireItemTypeUsable._(
    valueString: 'dateTime',
    valueEnum: QuestionnaireItemTypeUsableEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Date Time',
    ),
  );

  /// time
  static const QuestionnaireItemTypeUsable time = QuestionnaireItemTypeUsable._(
    valueString: 'time',
    valueEnum: QuestionnaireItemTypeUsableEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Time',
    ),
  );

  /// string
  static const QuestionnaireItemTypeUsable string =
      QuestionnaireItemTypeUsable._(
    valueString: 'string',
    valueEnum: QuestionnaireItemTypeUsableEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'String',
    ),
  );

  /// text
  static const QuestionnaireItemTypeUsable text = QuestionnaireItemTypeUsable._(
    valueString: 'text',
    valueEnum: QuestionnaireItemTypeUsableEnum.text,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Text',
    ),
  );

  /// url
  static const QuestionnaireItemTypeUsable url = QuestionnaireItemTypeUsable._(
    valueString: 'url',
    valueEnum: QuestionnaireItemTypeUsableEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Url',
    ),
  );

  /// coding
  static const QuestionnaireItemTypeUsable coding =
      QuestionnaireItemTypeUsable._(
    valueString: 'coding',
    valueEnum: QuestionnaireItemTypeUsableEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Coding',
    ),
  );

  /// attachment
  static const QuestionnaireItemTypeUsable attachment =
      QuestionnaireItemTypeUsable._(
    valueString: 'attachment',
    valueEnum: QuestionnaireItemTypeUsableEnum.attachment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Attachment',
    ),
  );

  /// reference
  static const QuestionnaireItemTypeUsable reference =
      QuestionnaireItemTypeUsable._(
    valueString: 'reference',
    valueEnum: QuestionnaireItemTypeUsableEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// quantity
  static const QuestionnaireItemTypeUsable quantity =
      QuestionnaireItemTypeUsable._(
    valueString: 'quantity',
    valueEnum: QuestionnaireItemTypeUsableEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type-useable',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireItemTypeUsable> values = [
    group,
    display_,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    coding,
    attachment,
    reference,
    quantity,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemTypeUsable withElement(Element? newElement) {
    return QuestionnaireItemTypeUsable._(
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
  QuestionnaireItemTypeUsable clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireItemTypeUsableCopyWithImpl<QuestionnaireItemTypeUsable>
      get copyWith =>
          QuestionnaireItemTypeUsableCopyWithImpl<QuestionnaireItemTypeUsable>(
            this,
            (v) => v as QuestionnaireItemTypeUsable,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireItemTypeUsableCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireItemTypeUsableCopyWithImpl(super._value, super._then);

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
      QuestionnaireItemTypeUsable(
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
