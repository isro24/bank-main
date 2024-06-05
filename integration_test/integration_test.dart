import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Login Test',() {
    testWidgets('Verify Correct Username and Password to Login Screen',(tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(0),'Isro Usman');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(1),'047');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(2),'24 september 2003');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(3),'laki laki');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(4),'081440314422');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(5),'Sma');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(6),'Islam');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(7),'Mahasiswa');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(8),'Namlea');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(9),'Gmail');
      await Future.delayed(const Duration(seconds:1));
      await tester.tap(find.text("Submit Data"));
      await Future.delayed(const Duration(seconds:1));
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 1));
      expect(find.byType(app.MyApp),findsOneWidget);
    });
  });
}