import 'package:flutter/material.dart';

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
            child: Text(
              'Find the Perfect Cocktail For Your Fridge',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
