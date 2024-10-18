import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_diri/main.dart';
import 'package:profile_diri/page3.dart';

void main() {
  testWidgets('Profile app flow test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Page3()));

    expect(find.text('Hello Anda!'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextField, 'Username'), 'Test User');
    await tester.enterText(find.widgetWithText(TextField, 'Role'), 'Test Role');
    await tester.enterText(find.widgetWithText(TextField, 'School'), 'Test School');
    await tester.enterText(find.widgetWithText(TextField, 'Description'), 'Test Description');

    await tester.tap(find.text('SUBMIT'));
    await tester.pumpAndSettle();

    expect(find.text('Test User'), findsOneWidget);
    expect(find.text('Test Role'), findsOneWidget);
    expect(find.text('Test School'), findsOneWidget);
    expect(find.text('Test Description'), findsOneWidget);

    expect(find.text('See More'), findsOneWidget);

    await tester.tap(find.text('See More'));
    await tester.pumpAndSettle();

    expect(find.text('Test User'), findsNothing);
  });
}