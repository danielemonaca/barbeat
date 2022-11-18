import 'package:barbeat/common_libs.dart';
import 'package:barbeat/globals/theme/app_themes.dart';

class TextWithHighlight extends StatelessWidget {
  final String text;
  final List<String> highlightedTexts;
  final TextStyle? textStyle;

  const TextWithHighlight({
    super.key,
    required this.text,
    required this.highlightedTexts,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textDirection: TextDirection.ltr,
      TextSpan(
        children: _buildTitleSpans(text, highlightedTexts),
      ),
      textAlign: TextAlign.center,
    );
  }

  List<TextSpan> _buildTitleSpans(String text, List<String> highlightedText) {
    final spans = <TextSpan>[];

    for (var i = 0; i < highlightedText.length; i++) {
      final splitText = text.split(highlightedText[i]);

      if (splitText.length == 1) {
        spans.add(_buildTitleSpan(text, highlight: false));
      } else {
        spans.add(_buildTitleSpan(
          splitText[0],
        ));
        spans.add(_buildTitleSpan(
          highlightedText[i],
          highlight: true,
        ));

        text = splitText[1];
      }
    }

    if (text.isNotEmpty) {
      spans.add(_buildTitleSpan(text, highlight: false));
    }

    // If there's no highlighted text, we just add the text
    if (highlightedText.isEmpty) {
      spans.add(_buildTitleSpan(text, highlight: false));
    }

    return spans;
  }

  TextSpan _buildTitleSpan(String text, {bool highlight = false}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontWeight: textStyle?.fontWeight ?? FontWeight.w600,
        fontSize: textStyle?.fontSize ?? 30,
        color: highlight
            ? GetStartedColors.cocktailWordColor
            : TextColors.defaultDarkGreyColor,
      ),
    );
  }
}
