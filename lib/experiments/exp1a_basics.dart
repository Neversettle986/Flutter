import 'package:flutter/material.dart';

class Exp1aBasics extends StatelessWidget {
  const Exp1aBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
  """Experiment 1.a: Install Flutter and Dart SDK ✅

Steps:
1. Download Flutter SDK from flutter.dev.
2. Extract it to C:\\src\\flutter.
3. Add Flutter to PATH → C:\\src\\flutter\\bin.
4. Run: flutter --version
5. Run: flutter doctor (fix issues if shown).
6. Install VS Code + Flutter & Dart extensions.
7. Create project: flutter create my_app
8. Run: flutter run -d chrome (or windows).""",
  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  textAlign: TextAlign.left,
),

      ),
    );
  }
}
