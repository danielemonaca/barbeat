import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:barbeat/models/artworks.dart';

class CocktailAnimation extends StatefulWidget {
  const CocktailAnimation({Key? key}) : super(key: key);

  @override
  State<CocktailAnimation> createState() => _CocktailAnimationState();
}

class _CocktailAnimationState extends State<CocktailAnimation> {
  /// Controller for playback

  late StateMachineController _controller;
  SMIBool? _bump;

  final _rive_file_location = 'assets/animations/cocktail_glass.riv';

  @override
  void initState() {
    super.initState();
  }

  void _onInit(Artboard art) {
    final ctrl = StateMachineController.fromArtboard(
        art, 'animation_state_cocktail_glass') as StateMachineController;

    art.addController(ctrl);
    _bump = ctrl.findInput<bool>('Apple') as SMIBool;
    print('bump: ${_bump!.value}');
    _bump!.value = true;
    print('bump: ${_bump!.value}');
    setState(() {
      _controller = ctrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Getting/setting state machine input values

    return RiveAnimation.asset(_rive_file_location,
        artboard: ArtWork.CocktailGlass.name,
        stateMachines: const ['animation_state_cocktail_glass'],
        alignment: Alignment.center,
        fit: BoxFit.contain,
        onInit: _onInit);
  }
}
