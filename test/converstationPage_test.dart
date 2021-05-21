import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/pages/converstationPageList.dart';
import 'package:messio/widget/chatAppBar.dart';
import 'package:messio/widget/chatListWidget.dart';
import 'package:messio/widget/inputWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConverstationPageList(),
    ),
  );

  testWidgets('ConverstationPage UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
  });
}
