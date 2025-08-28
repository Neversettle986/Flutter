import 'package:flutter/material.dart';

class Exp4aNavigation extends StatelessWidget {
  const Exp4aNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Next Page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => NextScreen()),
            );
          },
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("You are on the next page 🚀")),
    );
  }
}
