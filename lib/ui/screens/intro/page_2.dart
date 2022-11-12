import 'package:flutter/material.dart';

import '../../../globals/theme/app_themes.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/introImages/cocktail2.png'),
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Cocktail',
                    style: TextStyle(
                      color: GetStartedColors.cocktailWordColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' For Your Fridge',
                    style: TextStyle(
                        fontSize: 25,
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
                'In BarBeat, you can search cocktails by the ingredients! Just open the fridge and insert what you have in the app, BarBeat will think about the rest!',
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
