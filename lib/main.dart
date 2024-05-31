import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:ast_demo/visitors/basic_visitor.dart';
import 'package:ast_demo/visitors/material_app_visitor.dart';
import 'package:ast_demo/visitors/scaffold_visitor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void parseFile(String file) {
    File main = File('lib/router.dart');

    if (main.existsSync()) {
      String content = main.readAsStringSync();

      ParseStringResult unit = parseString(content: content);

      BasicVisitor basicVisitor = BasicVisitor();
      ScaffoldVisitor scaffoldVisitor = ScaffoldVisitor();
      MaterialAppVisitor visitor = MaterialAppVisitor();
      print('AST: ${unit.unit}');
      unit.unit.visitChildren(basicVisitor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
