import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class ScaffoldVisitor extends RecursiveAstVisitor {
  int? widgetStartIndex;
  int? widgetEndIndex;
  int? scaffoldLabelEndIndex;

  @override
  visitSimpleIdentifier(SimpleIdentifier node) {
    if (node.toString() == 'Scaffold') {
      scaffoldLabelEndIndex = node.end;
    }
    return super.visitSimpleIdentifier(node);
  }

  @override
  visitMethodInvocation(MethodInvocation node) {
    if (node.toString().startsWith('Scaffold')) {
      widgetStartIndex = node.offset;
      widgetEndIndex = node.end;
    }
    return super.visitMethodInvocation(node);
  }
}
