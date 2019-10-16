// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterintegrationtest/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Home Tab'), findsOneWidget);
    expect(find.text('Files Tab'), findsNothing);
    expect(find.text('Settings Tab'), findsNothing);
    // print(find.byKey(Key('filesTab')));
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Files'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    await tester.tap(find.byKey(Key('files')));
    await tester.pumpAndSettle();
    expect(find.text('Home Tab'), findsNothing);
    expect(find.text('Files Tab'), findsOneWidget);
    expect(find.text('Settings Tab'), findsNothing);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Files'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    await tester.tap(find.byKey(Key('settings')));
    await tester.pumpAndSettle();
    expect(find.text('Home Tab'), findsNothing);
    expect(find.text('Files Tab'), findsNothing);
    expect(find.text('Settings Tab'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Files'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
    // final TabController controller =
    //     DefaultTabController.of(tester.element(find.byKey(Key('home'))));
    // print(controller.index);
    // print(controller.previousIndex);
    // expect(controller, isNotNull);
    // // expect(controller.index, 2);
    // expect(controller.previousIndex, 2);
    // await tester.tap(find.byKey(Key('filesTab')));
    //  await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Files'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
