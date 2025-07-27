part of 'primitive_types.dart';

/// Extension on [String] to easily convert it to a [FhirTimeBuilder].
extension FhirTimeBuilderExtension on String {
  /// Creates a [FhirTimeBuilder] from this [String].
  FhirTimeBuilder get toFhirTimeBuilder => FhirTimeBuilder(this);
}

/// A FHIR primitive type representing a time of day (`time`).
///
/// Stored as a string like `"HH:MM:SS.sss"` with optional fractional seconds.
/// Not tied to a date or timezone; purely a clock time.
class FhirTimeBuilder extends PrimitiveTypeBuilder
    implements
        Comparable<FhirTimeBuilder>,
        ValueXAuditEventDetailBuilder,
        ValueXContractAnswerBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        ValueXStructureMapParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that calls [super._] with [valueString].
  FhirTimeBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Time',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirTimeBuilder] from [rawValue], validating if it's a valid
  /// HH:MM[:SS[.sss]] format.
  // ignore: sort_unnamed_constructors_first
  factory FhirTimeBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Time',
  }) {
    final validatedString = _validateTime(rawValue);
    return FhirTimeBuilder._(
      valueString: validatedString,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates a [FhirTimeBuilder] from specific [hour], [minute], [second],
  /// [millisecond].
  ///
  /// - [hour] must be [0..23].
  /// - [minute], [second] must be [0..59].
  /// - [millisecond] is [0..999].
  factory FhirTimeBuilder.fromUnits({
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    final h = hour?.toString().padLeft(2, '0') ?? '00';
    var output = h;

    if (minute != null) {
      final m = minute.toString().padLeft(2, '0');
      output += ':$m';
      if (second != null) {
        final s = second.toString().padLeft(2, '0');
        output += ':$s';
        if (millisecond != null) {
          final ms = millisecond.toString().padLeft(3, '0');
          output += '.$ms';
        }
      }
    }
    return FhirTimeBuilder(output);
  }

  /// Creates an empty [FhirTimeBuilder].
  factory FhirTimeBuilder.empty() =>
      FhirTimeBuilder(null, element: ElementBuilder.empty());

  /// Constructs a [FhirTimeBuilder] from a JSON [Map].
  factory FhirTimeBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elemJson == null ? null : ElementBuilder.fromJson(elemJson);
    final objectPath = json['objectPath'] as String? ?? 'Time';
    return FhirTimeBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirTimeBuilder] from YAML ([String] or [YamlMap]).
  static FhirTimeBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirTimeBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirTimeBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException('Invalid YAML format for FhirTimeBuilder');
    }
  }

  /// Attempts to parse [input] into a [FhirTimeBuilder]. Returns `null`
  /// if parsing fails.
  static FhirTimeBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirTimeBuilder(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates the [input] as a `time` format: `HH:MM[:SS[.sss]]`.
  /// Throws [FormatException] if invalid.
  static String? _validateTime(dynamic input) {
    if (input == null) return null; // element-only
    if (input is! String) {
      throw FormatException('Invalid time format, must be a string: $input');
    }
    if (input.isEmpty) return null;

    final timeRegex = RegExp(
      r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$',
    );
    if (timeRegex.hasMatch(input)) {
      return input;
    } else {
      throw FormatException('Invalid time format: $input');
    }
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"time"`.
  @override
  String get fhirType => 'time';

  /// Converts this [FhirTimeBuilder] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() {
    return {
      if (valueString != null) 'value': valueString,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Method to convert the builder object to the original Element object
  @override
  FhirTime build() => FhirTime.fromJson(toJson());

  /// Returns the string form or `''`.
  @override
  String toString() => valueString ?? '';

  @override
  String? get primitiveValue => valueString;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirTimeBuilder &&
      other.valueString == valueString &&
      other.element == element;

  /// Overridden equality operator checking if [other] is a [FhirTimeBuilder]
  /// with same string.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  bool equals(Object other) => _compare(Comparator.equal, other) ?? false;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  // --------------------------------------------------------------------------
  // Comparable Implementation
  // --------------------------------------------------------------------------

  /// Compares this [FhirTimeBuilder] to [other], returning -1 if less,
  /// 1 if greater, or 0 otherwise.
  @override
  int compareTo(FhirTimeBuilder other) {
    final isGt = this > other;
    if (isGt ?? false) return 1;
    final isLt = this < other;
    if (isLt ?? false) return -1;
    return 0;
  }

  // --------------------------------------------------------------------------
  // Time Components
  // --------------------------------------------------------------------------

  /// The hour component [0..23].
  int? get hour =>
      valueString == null ? null : int.tryParse(valueString!.split(':')[0]);

  /// The minute component [0..59].
  int? get minute {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    return parts.length > 1 ? int.tryParse(parts[1]) : null;
  }

  /// The second component [0..59].
  int? get second {
    if (valueString == null) return null;
    final parts = valueString!.split(':');
    if (parts.length > 2) {
      return int.tryParse(parts[2].split('.')[0]);
    }
    return null;
  }

  /// The millisecond component [0..999].
  int? get millisecond {
    if (valueString == null) return null;
    final dotParts = valueString!.split('.');
    if (dotParts.length > 1) {
      return int.tryParse(dotParts[1]);
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Arithmetic (Add / Subtract Time)
  // --------------------------------------------------------------------------

  /// Adds hours, minutes, seconds, and milliseconds to this time
  /// (wrapping at 24h).
  FhirTimeBuilder plus({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    var newMs = (millisecond ?? 0) + milliseconds;
    var newSec = (second ?? 0) + seconds + (newMs ~/ 1000);
    newMs %= 1000;
    var newMin = (minute ?? 0) + minutes + (newSec ~/ 60);
    newSec %= 60;
    var newHr = (hour ?? 0) + hours + (newMin ~/ 60);
    newMin %= 60;
    newHr %= 24;

    return FhirTimeBuilder.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    );
  }

  /// Subtracts hours, minutes, seconds, milliseconds from this time
  /// (wrapping at 24h).
  FhirTimeBuilder subtract({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    var newMs = (millisecond ?? 0) - milliseconds;
    var newSec = (second ?? 0) - seconds;
    var newMin = (minute ?? 0) - minutes;
    var newHr = (hour ?? 0) - hours;

    while (newMs < 0) {
      newMs += 1000;
      newSec -= 1;
    }
    while (newSec < 0) {
      newSec += 60;
      newMin -= 1;
    }
    while (newMin < 0) {
      newMin += 60;
      newHr -= 1;
    }
    newHr = (newHr % 24 + 24) % 24;

    return FhirTimeBuilder.fromUnits(
      hour: newHr,
      minute: newMin,
      second: newSec,
      millisecond: newMs,
    );
  }

  // --------------------------------------------------------------------------
  // Precision
  // --------------------------------------------------------------------------

  /// Adjusts the time's precision (hour, minute, second, millisecond).
  ///
  /// If the time has a higher precision than requested, truncates.
  /// If the time has a lower precision, zero-fills missing parts.
  FhirTimeBuilder adjustToPrecision(TemporalPrecisionEnum precision) {
    if (!precision.isValidTimePrecision) {
      throw ArgumentError(
        'Precision must be one of: hour, minute, second, or millisecond.',
      );
    }

    final h = hour ?? 0;
    final m = minute ?? 0;
    final s = second ?? 0;
    final ms = millisecond ?? 0;

    switch (precision) {
      case TemporalPrecisionEnum.hour:
        return FhirTimeBuilder.fromUnits(hour: h);
      case TemporalPrecisionEnum.minute:
        return FhirTimeBuilder.fromUnits(hour: h, minute: m);
      case TemporalPrecisionEnum.second:
        return FhirTimeBuilder.fromUnits(hour: h, minute: m, second: s);
      case TemporalPrecisionEnum.millisecond:
        return FhirTimeBuilder.fromUnits(
          hour: h,
          minute: m,
          second: s,
          millisecond: ms,
        );
      case TemporalPrecisionEnum.year:
      case TemporalPrecisionEnum.month:
      case TemporalPrecisionEnum.day:
        throw ArgumentError('Unhandled precision: $precision');
    }
  }

  // --------------------------------------------------------------------------
  // Comparison Operators
  // --------------------------------------------------------------------------

  /// `>` operator for comparing times (returns `true/false` or `null` if invalid).
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);

  /// `>=` operator.
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// `<` operator.
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);

  /// `<=` operator.
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  /// Checks if this time is after [other].
  bool? isAfter(Object other) => _compare(Comparator.greaterThan, other);

  /// Checks if this time is before [other].
  bool? isBefore(Object other) => _compare(Comparator.lessThan, other);

  /// Checks if this time is the same or after [other].
  bool? isSameOrAfter(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Checks if this time is the same or before [other].
  bool? isSameOrBefore(Object other) =>
      _compare(Comparator.lessThanEqual, other);

  /// Checks if this time is exactly equal to [other].
  bool? isEqual(Object other) => _compare(Comparator.equal, other);

  /// Checks if this time is "equivalent" to [other] (same HH:MM:SS.mmm).
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  // --------------------------------------------------------------------------
  // Internal Comparison
  // --------------------------------------------------------------------------

  /// Compares [this] with [other] using [comparator], returns `bool?`.
  bool? _compare(Comparator comparator, Object other) {
    final rhs = other is FhirTimeBuilder
        ? other
        : other is String
            ? FhirTimeBuilder.tryParse(other)
            : null;
    if (rhs == null) return false;

    if (valueString == null || rhs.valueString == null) return null;

    final lhsParts = valueString!.split(':');
    final rhsParts = rhs.valueString!.split(':');

    if (lhsParts.length != rhsParts.length) return null;

    for (var i = 0; i < lhsParts.length; i++) {
      final lhsVal = double.parse(lhsParts[i]);
      final rhsVal = double.parse(rhsParts[i]);
      switch (comparator) {
        case Comparator.equal:
        case Comparator.equivalent:
          if (lhsVal != rhsVal) return false;
        case Comparator.greaterThan:
          if (lhsVal < rhsVal) return false;
          if (lhsVal > rhsVal) return true;
        case Comparator.lessThan:
          if (lhsVal > rhsVal) return false;
          if (lhsVal < rhsVal) return true;
        case Comparator.greaterThanEqual:
          if (lhsVal < rhsVal) return false;
          if (lhsVal > rhsVal) return true;
        case Comparator.lessThanEqual:
          if (lhsVal > rhsVal) return false;
          if (lhsVal < rhsVal) return true;
      }
    }
    return comparator == Comparator.equal ||
        comparator == Comparator.equivalent ||
        comparator == Comparator.greaterThanEqual ||
        comparator == Comparator.lessThanEqual;
  }

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirTimeBuilder clone() => FhirTimeBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirTimeBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy of this [FhirTimeBuilder].
  @override
  FhirTimeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirTimeBuilder(
      newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  // --------------------------------------------------------------------------
  // Subclass Contract
  // --------------------------------------------------------------------------

  @override
  FhirTimeBuilder createProperty(String propertyName) => this;
}

/// An extension on [TemporalPrecisionEnum] to check if it is valid for `time`.
extension TimePrecisionCheck on TemporalPrecisionEnum {
  /// Valid time precisions: hour, minute, second, millisecond.
  bool get isValidTimePrecision =>
      this == TemporalPrecisionEnum.hour ||
      this == TemporalPrecisionEnum.minute ||
      this == TemporalPrecisionEnum.second ||
      this == TemporalPrecisionEnum.millisecond;
}
