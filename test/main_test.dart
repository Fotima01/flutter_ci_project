import 'package:flutter/material.dart';
import 'package:flutter_ci_project/main.dart';
import 'package:flutter_test/flutter_test.dart';

const _title = 'title';

void main() {
  testWidgets('main ...', (WidgetTester tester) async {
    await pumpWidget(tester);

    expect(find.text(_title), findsOneWidget);
  });
}

Future<void> pumpWidget(WidgetTester tester) {
  return tester.pumpWidget(
    const MaterialApp(
      home: MyHomePage(
        title: _title,
      ),
    ),
  );
}
