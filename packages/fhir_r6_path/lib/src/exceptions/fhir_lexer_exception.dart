import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_path/fhir_r5_path.dart';

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
