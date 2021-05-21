import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:messio/pages/converstationPages.dart';
import 'package:messio/pages/converstationPagesSlide.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConverstationPagesSlide(),
    ),
  );
  testWidgets('ConverstationPageList UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ConverstationPages), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}
