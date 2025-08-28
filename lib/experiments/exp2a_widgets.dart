import 'package:flutter/material.dart';

class Exp2aWidgets extends StatelessWidget {
  const Exp2aWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("✨ Flutter Widgets ✨",
                style: TextStyle(fontSize: 28, color: Colors.cyanAccent)),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("I am inside a container",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Image.asset(
              "logo.jpg",
              height: 200,
            ),
            SizedBox(height: 20 ),
          ],
        ),
      ),
    );
  }
}
