import 'package:barbeat/ui/screens/searchByIngs/searchByIngs_background.dart';
import 'package:flutter/material.dart';

class SearchByIngredients extends StatelessWidget {
  const SearchByIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xA6F54749);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: const [
          Background(),
        ],
      ),
    );
  }
}
