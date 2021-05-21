import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/pages/converstationPageList.dart';
import 'package:messio/pages/converstationPages.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConverstationPageList(),
    ),
  );
  testWidgets('ConverstationPageList UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ConverstationPages), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}
