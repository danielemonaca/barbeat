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

/*
TODO: fix test
  testWidgets('Text With Highlights renders with multiple highlights',
      (tester) async {
    // Setup
    await tester.pumpWidget(
      const TextWithHighlight(
          text: 'Hello test Cocktail World',
          highlightedTexts: ['test', 'Cocktail'],
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          )),
    );

    // Find Rich Text Widget throgh byWidgetPredicate and find the text 'Cocktail' with color red

    final textWithHighlight = find.byWidgetPredicate((widget) {
      if (widget is RichText) {
        final textSpan = widget.text as TextSpan;
        final children = textSpan.children;
        if (children != null) {
          final cocktailTextSpan = children[0]as TextSpan;
          return cocktailTextSpan.text == 'Cocktail' &&
              cocktailTextSpan.style?.color == Colors.red;
        }
      }
      return false;
    });

    expect(textWithHighlight, findsOneWidget);
  });

*/
