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
  TextEditingController controller = TextEditingController();
  TextEditingController searchController = TextEditingController();
  Map<String, String> astMap = {};
  Map<String, String> searchMap = {};

  void parseCode() {
    String content = controller.text;

    ParseStringResult unit = parseString(content: content);

    BasicVisitor basicVisitor = BasicVisitor();
    ScaffoldVisitor scaffoldVisitor = ScaffoldVisitor();
    MaterialAppVisitor visitor = MaterialAppVisitor();
    print('AST: ${unit.unit}');
    unit.unit.visitChildren(basicVisitor);

    setState(() {
      astMap = basicVisitor.astMap;
      searchMap = astMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter code here...',
                    ),
                    maxLines: null,
                    minLines: 10,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search...',
                        ),
                        onChanged: (value) {
                          setState(() {
                            searchMap = Map.fromEntries(
                              astMap.entries.where((element) => element.key.toLowerCase().contains(value.toLowerCase()) || element.value.toLowerCase().contains(value.toLowerCase())).toList(),
                            );
                          });
                        },
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: searchMap.length,
                          itemBuilder: (context, index) {
                            MapEntry<String, dynamic> entry = searchMap.entries.elementAt(index);
                            return ListTile(
                              leading: CircleAvatar(
                                child: Text(entry.key[0]),
                              ),
                              title: Text(entry.key),
                              subtitle: Text(entry.value.toString()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              parseCode();
            },
            child: const Icon(Icons.refresh),
          )),
    );
  }
}
