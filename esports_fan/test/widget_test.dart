import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:esports_fan/screens/login_screen.dart';

void main() {
  testWidgets('Login screen renders', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: LoginScreen()),
    );
    expect(find.text('测试账号: fan1 / 123456'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
