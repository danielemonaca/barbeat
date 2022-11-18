import 'package:barbeat/globals/theme/app_themes.dart';
import 'package:barbeat/ui/commons/text_with_highlight/text_with_highlight.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String cocktailImage;
  final String text;
  final String highlightedText;
  final String description;

  const IntroPage(
      {super.key,
      required this.cocktailImage,
      required this.text,
      required this.highlightedText,
      required this.description});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // This all section will change when we have RIVE animation
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cocktailImage),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.8,
            child: TextWithHighlight(
                text: text,
                highlightedTexts: [highlightedText],
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: SizedBox(
              width: 300,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
