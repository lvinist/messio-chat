import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/pages/converstationPagesSlide.dart';
import 'package:messio/widget/chatAppBar.dart';
import 'package:messio/widget/chatListWidget.dart';
import 'package:messio/widget/inputWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConverstationPagesSlide(),
    ),
  );

  testWidgets('ConverstationPage UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
  });
}
