import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/widget/inputWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: InputWidget(),
    ),
  );

  testWidgets('InputWidget Test UI', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(IconButton), findsNWidgets(2));
    expect(find.byType(TextField), findsOneWidget);
  });
}
