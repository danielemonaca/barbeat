import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
            child: Text(
              'Find any Cocktail you want!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: SizedBox(
              width: 300,
              child: Text(
                'In BarBeat, you can search any cocktail you can think of! We have more than 500 cocktails available for you to discover',
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
