import 'package:barbeat/models/garnishes.dart';
import 'package:barbeat/models/state_machine_input.dart';

class GarnishWithMachineInput {
  IngredientsRequiringGarnish garnish;
  StateMachineInput stateMachineInput;
  String? color;

  GarnishWithMachineInput(this.garnish, this.stateMachineInput, {this.color});
}

const limeColor = '#C0F000';
const lemonColor = '#FFE600';
const orangeColor = '#FF7E25';

List<GarnishWithMachineInput> glassesWithArtWork = [
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.cherry,
    StateMachineInput.Cherry,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.freshLimeJuice,
    StateMachineInput.Orange,
    color: limeColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.apple,
    StateMachineInput.Apple,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.fruit,
    StateMachineInput.Apple,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.orangeSlice,
    StateMachineInput.Orange,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.orangePeel,
    StateMachineInput.Peel,
    color: orangeColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.freshMint,
    StateMachineInput.Mint,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.basil,
    StateMachineInput.Basil,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.grapes,
    StateMachineInput.GreenOlives,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.cherries,
    StateMachineInput.Cherry,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.strawberries,
    StateMachineInput.Strawberry,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.lemon,
    StateMachineInput.Orange,
    color: lemonColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.lime,
    StateMachineInput.Orange,
    color: limeColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.lemonSlice,
    StateMachineInput.Orange,
    color: lemonColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.mint,
    StateMachineInput.Mint,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.maraschinoCherry,
    StateMachineInput.Cherry,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.limePeel,
    StateMachineInput.Peel,
    color: limeColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.lemonPeel,
    StateMachineInput.Peel,
    color: lemonColor,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.orange,
    StateMachineInput.Orange,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.berries,
    StateMachineInput.Cherry,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.ice,
    StateMachineInput.Ice,
  ),
  GarnishWithMachineInput(
    IngredientsRequiringGarnish.squeezedOrange,
    StateMachineInput.Orange,
  ),
];
