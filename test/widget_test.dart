import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('AboutUI แสดงข้อมูลผู้จัดทำ', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutUI()));

    expect(find.text('ผู้จัดทำ'), findsOneWidget);
    expect(find.text('มหาวิทยาลัยเอเชียอาคเนย์'), findsOneWidget);
  });
}
