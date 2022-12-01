// ignore_for_file: file_names

import 'package:barbeat/cig/helpers/rive_custom_helper.dart';
import 'package:barbeat/common_libs.dart';
import 'package:barbeat/cig/helpers/garnishes_to_state_machine_inputs.dart';
import 'package:barbeat/cig/helpers/get_artwork_by_glass.dart';
import 'package:barbeat/cig/helpers/ingredients_to_garnishes.dart';
import 'package:barbeat/models/artworks.dart';
import 'package:barbeat/models/garnish_with_machine_input.dart';
import 'package:barbeat/models/state_machine_input.dart';
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
  // ignore: unused_field
  late StateMachineController _controller; // Only used for state update

  final _animationStateName = 'animation_state_cocktail_glass';
  final _riveFileLocation = 'assets/animations/rive_animation.riv';

  void _onInit(Artboard art) {
    final riveHelper = RiveCustomHelper.fromArtboard(art, _animationStateName);

    // 1. Activate inputs
    for (var garnishInput in widget.garnishesInputs) {
      riveHelper.setBoolInput(garnishInput.stateMachineInput.name, true);
    }

    // 2. Set color of liquid
    if (widget.colorLiquid != null) {
      riveHelper.setColorLiquid(widget.colorLiquid!);
    }

    // 3. Set color of garnishes
    for (var garnishInput in widget.garnishesInputs) {
      if (garnishInput.color != null) {
        /// We check for Peel because it doen't have a "fill" color, but only changes the path color
        if (garnishInput.stateMachineInput.name ==
            StateMachineInput.Peel.name) {
          riveHelper.setColorPeel(garnishInput.color!);
        } else {
          /// For this case, we want the color of the Node to be the same as the state machine input
          riveHelper.setNodeColor(garnishInput.stateMachineInput.name,
              garnishInput.stateMachineInput.name, garnishInput.color!);
        }
      }
    }

    setState(() {
      _controller = riveHelper.getController();
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
