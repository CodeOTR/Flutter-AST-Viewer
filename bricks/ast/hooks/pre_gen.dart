import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:mason/mason.dart';
import 'package:analyzer/dart/ast/ast.dart';

void run(HookContext context) {
  File main = File('lib/main.dart');

  if (main.existsSync()) {
    final content = main.readAsStringSync();

    ParseStringResult unit = parseString(content: content);
  }
}
