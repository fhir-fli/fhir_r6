import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';

/// Represents an error that occurred during the lexing phase of
/// FHIRPath parsing.
class FHIRLexerException extends FHIRException {
  /// Constructor for [FHIRLexerException] with optional [message]
  /// and [location].
  FHIRLexerException({super.message, required this.location});

  /// The location in the source where the error occurred.
  SourceLocation location;

//    public FHIRLexerException() {
//      super();
//    }
//
//    public FHIRLexerException(String message, Throwable cause) {
//      super(message, cause);
//    }
//
//    public FHIRLexerException(String message) {
//      super(message);
//    }
//
//    public FHIRLexerException(Throwable cause) {
//      super(cause);
//    }

  @override
  String toString() => 'FHIRLexerException: $message';
}
