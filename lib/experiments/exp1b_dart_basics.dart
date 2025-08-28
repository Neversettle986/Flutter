import 'package:flutter/material.dart';

class Exp1bDartBasics extends StatelessWidget {
  const Exp1bDartBasics({super.key});

  @override
  Widget build(BuildContext context) {
    // A small Dart basics demo inside Flutter
    String name = "B.Rahul";
    int age = 22;
    List<String> skills = ["Dart", "Flutter", "Firebase"];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: $name"),
            Text("Age: $age"),
            Text("Skills: ${skills.join(', ')}"),
          ],
        ),
      ),
    );
  }
}
