import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:experiments/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async { 
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ExperimentsApp());

    // Since your app no longer has a counter by default,
    // you might want to test something else instead.
    // For example: check if the home page title exists.
    expect(find.text("🚀 Flutter Experiments"), findsOneWidget);
  });
}
