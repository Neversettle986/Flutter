import 'package:flutter/material.dart';

class Exp3bMediaQueries extends StatelessWidget {
  const Exp3bMediaQueries({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Text(
          "Screen Width: ${size.width}\nScreen Height: ${size.height}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
