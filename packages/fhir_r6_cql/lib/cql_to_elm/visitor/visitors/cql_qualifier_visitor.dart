import 'package:antlr4/antlr4.dart';
import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class CqlQualifierVisitor extends CqlBaseVisitor<String> {
  CqlQualifierVisitor(super.library);

  @override
  String visitQualifier(QualifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is IdentifierContext) {
        return visitIdentifier(child);
      }
    }
    throw ArgumentError('$thisNode Invalid Qualifier');
  }
}
