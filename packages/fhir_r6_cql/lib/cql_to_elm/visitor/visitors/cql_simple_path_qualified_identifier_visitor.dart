import 'package:fhir_r6_cql/fhir_r6_cql.dart';

class CqlSimplePathQualifiedIdentifierVisitor extends CqlBaseVisitor<String> {
  CqlSimplePathQualifiedIdentifierVisitor(super.library);

  @override
  Retrieve visitSimplePathQualifiedIdentifier(
      SimplePathQualifiedIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    // for (final child in ctx.children ?? <ParseTree>[]) {
    // }
    throw ArgumentError('$thisNode Invalid SimplePathQualifiedIdentifier');
  }
}
