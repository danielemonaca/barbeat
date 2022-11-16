import 'package:barbeat/globals/theme/app_themes.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String cocktailImage;
  final String text1;
  final String text2;
  final String text3;
  final String description;

  const IntroPage(
      {super.key,
      required this.cocktailImage,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cocktailImage),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: 325,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: text1,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: text2,
                    style: const TextStyle(
                      color: GetStartedColors.cocktailWordColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: text3,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: SizedBox(
              width: 300,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
