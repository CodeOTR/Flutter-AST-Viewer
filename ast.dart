import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

import 'lib/visitors/basic_visitor.dart';
import 'lib/visitors/material_app_visitor.dart';
import 'lib/visitors/scaffold_visitor.dart';

void main() {
  File main = File('lib/router.dart');

  if (main.existsSync()) {
    String content = main.readAsStringSync();

    ParseStringResult unit = parseString(content: content);

    BasicVisitor basicVisitor = BasicVisitor();
    ScaffoldVisitor scaffoldVisitor = ScaffoldVisitor();
    MaterialAppVisitor visitor = MaterialAppVisitor();
    print('AST: ${unit.unit}');
    unit.unit.visitChildren(basicVisitor);

    // print('ScaffoldVisitor.widgetStartIndex: ${scaffoldVisitor.widgetStartIndex}');
    // print('ScaffoldVisitor.widgetEndIndex: ${scaffoldVisitor.widgetEndIndex}');
    // print('ScaffoldVisitor.scaffoldLabelEndIndex: ${scaffoldVisitor.scaffoldLabelEndIndex}');

   /*  print('visitor.startIndex: ${visitor.startIndex}');
    print('visitor.endIndex: ${visitor.endIndex}');

    String foundContent = content.substring(
      visitor.startIndex!,
      visitor.endIndex!,
    );

    content = insertStringAtPosition(
      content,
      'test',
      visitor.materialAppEndIndex! + 1,
    );

    print('Found Content: $foundContent');
    print('Content: $content'); */
  }
}

String insertStringAtPosition(String original, String insert, int index) {
  return original.substring(0, index) + insert + original.substring(index);
}
