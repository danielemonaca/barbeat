import 'package:barbeat/ui/screens/searchByIngs/no_ings_pic.dart';
import 'package:barbeat/ui/screens/searchByIngs/panel_widget.dart';
import 'package:barbeat/ui/screens/searchByIngs/searchByIngs_background.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SearchByIngredients extends StatefulWidget {
  const SearchByIngredients({super.key});

  @override
  State<SearchByIngredients> createState() => _SearchByIngredientsState();
}

class _SearchByIngredientsState extends State<SearchByIngredients> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xA6F54749);
    const panelColor = Color(0xFFF1EFE8);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SlidingUpPanel(
        body: Stack(
          children: [
            const Background(),
            NoIngsPic(size: size), // TODO: render conditionally***
          ],
        ),
        panelBuilder: (controller) => PanelWidget(controller: controller),
        color: panelColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        maxHeight: size.height * 0.77,
        backdropEnabled: true,
      ),
    );
  }
}
