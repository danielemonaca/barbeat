import 'package:barbeat/cig/helpers/garnishes_to_state_machine_inputs.dart';
import 'package:barbeat/models/garnish_with_machine_input.dart';
import 'package:barbeat/models/garnishes.dart';
import 'package:barbeat/models/state_machine_input.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("convert garnishes to state machine usable inputs", () {
    // Setup
    List<IngredientsRequiringGarnish?> ingredients = [
      IngredientsRequiringGarnish.cherry,
      IngredientsRequiringGarnish.ice,
      IngredientsRequiringGarnish.lemon,
      IngredientsRequiringGarnish.lime
    ];
    List<GarnishWithMachineInput> expected = [
      GarnishWithMachineInput(
          IngredientsRequiringGarnish.cherry, StateMachineInput.Cherry),
      GarnishWithMachineInput(
          IngredientsRequiringGarnish.ice, StateMachineInput.Ice),
      GarnishWithMachineInput(
          IngredientsRequiringGarnish.lemon, StateMachineInput.Orange),
      GarnishWithMachineInput(
          IngredientsRequiringGarnish.lime, StateMachineInput.Orange)
    ];

    // Test
    List<GarnishWithMachineInput> result =
        garnishesToStateMachineInputs(ingredients);


    // Asset
    expect(result.length, expected.length);
  });
}
