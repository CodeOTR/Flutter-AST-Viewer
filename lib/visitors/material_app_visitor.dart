import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class MaterialAppVisitor extends RecursiveAstVisitor {
  int? widgetStartIndex;
  int? widgetEndIndex;
  int? materialAppLabelEndIndex;

  @override
  visitInstanceCreationExpression(InstanceCreationExpression node) {
    print('Instance Creation Expression: $node');

    if (node.toString().contains('MaterialApp')) {
      widgetStartIndex = node.offset;
      widgetEndIndex = node.end;
    }
    return super.visitInstanceCreationExpression(node);
  }

  @override
  visitConstructorName(ConstructorName node) {
    if (node.toString().contains('MaterialApp')) {
      materialAppLabelEndIndex = node.end;
    }
    return super.visitConstructorName(node);
  }
}
