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
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xA6F54749);
    const panelColor = Color(0xFFF1EFE8);
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: SlidingUpPanel(
          onPanelClosed: () => FocusManager.instance.primaryFocus?.unfocus(),
          controller: panelController,
          body: Stack(
            children: [
              const Background(),
              NoIngsPic(size: size), // TODO: render conditionally***
            ],
          ),
          panelBuilder: (controller) => PanelWidget(
            controller: controller,
            panelController: panelController,
          ),
          color: panelColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
          maxHeight: size.height * 0.77,
          backdropEnabled: true,
        ),
      ),
    );
  }

  // function to determine whether or not to return to home page
  // based on if panel is open or not
  Future<bool> _onWillPop() async {
    if (panelController.isPanelOpen) {
      panelController.close();
      return false;
    } else {
      return true;
    }
  }
}
