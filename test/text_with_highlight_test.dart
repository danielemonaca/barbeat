import 'package:barbeat/ui/commons/text_with_highlight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Text With Highlights renders', (tester) async {
    // Setup
    await tester.pumpWidget(
      const TextWithHighlight(
          text: 'Hello test World',
          highlightedTexts: ['test'],
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          )),
    );

    // Find
    final result = find.text('Hello test World');

    // Expect
    expect(result, findsOneWidget);
  });
}
