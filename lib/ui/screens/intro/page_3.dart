import 'package:flutter/material.dart';

import '../../../globals/theme/app_themes.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/introImages/cocktail1.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(
            width: 300,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Find the Perfect ',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Cocktail',
                    style: TextStyle(
                      color: GetStartedColors.cocktailWordColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' For You',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: SizedBox(
              width: 300,
              child: Text(
                'In BarBeat, you can also search cocktails by the taste that you would like! Do you feel like a sweet drink? Do you feel like a low-alcohol level drink? No worries, BarBeat will think about it!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
