import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Isro Usman',
          identitynumber: '047',
          birthdate: '24 september 2003',
          gender: 'laki laki',
          phonenumber: '081440314422',
          lasteducation: 'Sma',
          religion: 'Islam',
          job: 'Mahasiswa',
          address: 'Namlea',
          accounttype: 'Gmail',
        ),
      ),
    );

    expect(find.text('Name: Isro Usman'), findsOneWidget);
    expect(find.text('Identity Number: 047'), findsOneWidget);
    expect(find.text('Birht Date: 24 september 2003'), findsOneWidget);
    expect(find.text('Gender: laki laki'), findsOneWidget);
    expect(find.text('Phone Number: 081440314422'), findsOneWidget);
    expect(find.text('Last Education: Sma'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Mahasiswa'), findsOneWidget);
    expect(find.text('Address: Namlea'), findsOneWidget);
    expect(find.text('Account Type: Gmail'), findsOneWidget);
  });
}