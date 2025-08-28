import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Exp5bProvider extends StatelessWidget {
  const Exp5bProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: Scaffold(
        body: Center(
          child: Consumer<CounterModel>(
            builder: (context, counter, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Count: ${counter.count}", style: TextStyle(fontSize: 28)),
                ElevatedButton(
                  onPressed: () => counter.increment(),
                  child: Text("Increment with Provider"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterModel extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
