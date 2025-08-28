import 'package:flutter/material.dart';

// Import all experiments
import 'package:experiments/experiments/exp1a_basics.dart';
import 'package:experiments/experiments/exp1b_dart_basics.dart';
import 'package:experiments/experiments/exp2a_widgets.dart';
import 'package:experiments/experiments/exp2b_layouts.dart';
import 'package:experiments/experiments/exp3a_responsive.dart';
import 'package:experiments/experiments/exp3b_media_queries.dart';
import 'package:experiments/experiments/exp4a_navigation.dart';
import 'package:experiments/experiments/exp4b_named_routes.dart';
import 'package:experiments/experiments/exp5a_stateful_stateless.dart';
import 'package:experiments/experiments/exp5b_provider.dart';

void main() {
  runApp(const ExperimentsApp());
}

class ExperimentsApp extends StatelessWidget {
  const ExperimentsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Experiments",
      theme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> experiments = const [
    {"title": "1.a Install Flutter/Dart (Info)", "widget": Exp1aBasics()},
    {"title": "1.b Dart Basics Program", "widget": Exp1bDartBasics()},
    {"title": "2.a Widgets Showcase", "widget": Exp2aWidgets()},
    {"title": "2.b Layouts (Row, Column, Stack)", "widget": Exp2bLayouts()},
    {"title": "3.a Responsive UI", "widget": Exp3aResponsive()},
    {"title": "3.b Media Queries + Breakpoints", "widget": Exp3bMediaQueries()},
    {"title": "4.a Navigation Push", "widget": Exp4aNavigation()},
    {"title": "4.b Named Routes", "widget": Exp4bNamedRoutes()},
    {"title": "5.a Stateful vs Stateless", "widget": Exp5aStatefulStateless()},
    {"title": "5.b Provider State Mgmt", "widget": Exp5bProvider()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🚀 Flutter Experiments")),
      body: ListView.builder(
        itemCount: experiments.length,
        itemBuilder: (context, index) {
          var exp = experiments[index];
          return Card(
            color: Colors.teal.shade900,
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                exp["title"],
                style: const TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => exp["widget"]),
              ),
            ),
          );
        },
      ),
    );
  }
}
