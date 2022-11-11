import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
            Container(
              width: 300,
              child: const Text(
                'Find any Cocktail you want!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Container(
                width: 300,
                child: const Text(
                  'In BarBeat, you can also search cocktails by the taste that you would like! Do you feel like a sweet drink? Do you feel like a low-alcohol level drink? No worries, BarBeat will think about it!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
