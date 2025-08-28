import 'package:flutter/material.dart';

class Exp5aStatefulStateless extends StatefulWidget {
  const Exp5aStatefulStateless({super.key});

  @override
  _Exp5aStatefulStatelessState createState() => _Exp5aStatefulStatelessState();
}

class _Exp5aStatefulStatelessState extends State<Exp5aStatefulStateless> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $count", style: TextStyle(fontSize: 28)),
            ElevatedButton(
              onPressed: () => setState(() => count++),
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
