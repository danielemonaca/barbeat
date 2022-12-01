// ignore_for_file: file_names

import 'package:barbeat/cig/helpers/string_color_to_hex.dart';
import 'package:barbeat/common_libs.dart';
import 'package:barbeat/cig/helpers/garnishes_to_state_machine_inputs.dart';
import 'package:barbeat/cig/helpers/get_artwork_by_glass.dart';
import 'package:barbeat/cig/helpers/ingredients_to_garnishes.dart';
import 'package:barbeat/models/artworks.dart';
import 'package:barbeat/models/garnish_with_machine_input.dart';
import 'package:barbeat/models/state_machine_input.dart';
import 'package:rive/components.dart';
import 'package:rive/rive.dart';

class CIG extends StatefulWidget {
  late final List<GarnishWithMachineInput> garnishesInputs;
  late final ArtWork artwork;
  final String? colorLiquid;
  final bool animated;

  CIG(List<String> ingredients, this.colorLiquid, String glass, this.animated,
      {super.key}) {
    garnishesInputs =
        garnishesToStateMachineInputs(ingredientsToGarnishes(ingredients));
    artwork = getArtWorkByGlass(glass);
  }

  @override
  State<CIG> createState() => _CIG();
}

class _CIG extends State<CIG> {
  late StateMachineController _controller;

  final _animationStateName = 'animation_state_cocktail_glass';
  final _riveFileLocation = 'assets/animations/rive_animation.riv';

  void _onInit(Artboard art) {
    final ctrl = StateMachineController.fromArtboard(art, _animationStateName)
        as StateMachineController;

    art.addController(ctrl);
    // ignore: avoid_print
    print("------------------------");
    for (var garnishInput in widget.garnishesInputs) {
      print("Ingredient: ${garnishInput.stateMachineInput.name}");
      final input =
          ctrl.findInput<bool>(garnishInput.stateMachineInput.name) as SMIBool;
      input.value = true;

      // Change color of liquid in "liquid" inside the animation
      final liquidFromRive = ctrl.artboard?.children.firstWhere(
          (element) => element.name == 'CocktailGlass',
          orElse: () => throw Exception('Liquid not found in animation'));

      final shape = liquidFromRive
          ?.artboard?.children.first.artboard!.children.first as Node;

      // print('Liquid: ${shape.children}');

      for (var element in shape.children) {
        if (element is Node) {
          if (element.name == 'Cocktail') {
            final liquidShape = element.children.first as Shape;
            final liquidFill =
                liquidShape.fills.first.children[0] as SolidColor;
            if (widget.colorLiquid != null) {
              liquidFill.colorValue = Color(stringColorToHex(widget.colorLiquid!)).value;
            }

            print('Liquid: ${liquidFill.colorValue}');
          }
        }
      }

      print(
          " test fills First ${(ctrl.artboard?.fills.first.children[0] as SolidColor).colorValue}");
    }
    // ignore: avoid_print
    print("------------------------");
    setState(() {
      _controller = ctrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(_riveFileLocation,
        artboard: widget.artwork.name,
        stateMachines: [_animationStateName],
        alignment: Alignment.center,
        fit: BoxFit.contain,
        onInit: _onInit);
  }
}
