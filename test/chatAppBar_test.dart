import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/widget/chatAppBar.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ChatAppBar(),
    ),
  );

  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Alvin Fikri'), findsOneWidget);
    expect(find.text('@alvinfikri'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
