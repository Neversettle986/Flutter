import 'package:flutter/material.dart';

class Exp3aResponsive extends StatelessWidget {
  const Exp3aResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: width < 600
              ? Text("📱 Mobile View", key: ValueKey(1), style: TextStyle(fontSize: 28))
              : width < 1100
                  ? Text("💻 Tablet View", key: ValueKey(2), style: TextStyle(fontSize: 32))
                  : Text("🖥️ Desktop View", key: ValueKey(3), style: TextStyle(fontSize: 38)),
        ),
      ),
    );
  }
}
