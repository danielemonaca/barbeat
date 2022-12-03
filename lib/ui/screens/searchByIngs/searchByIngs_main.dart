import 'package:barbeat/ui/screens/searchByIngs/no_ings_pic.dart';
import 'package:barbeat/ui/screens/searchByIngs/searchByIngs_background.dart';
import 'package:flutter/material.dart';

class SearchByIngredients extends StatelessWidget {
  const SearchByIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xA6F54749);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          const Background(),
          NoIngsPic(size: size), // TODO: render conditionally***
        ],
      ),
    );
  }
}
