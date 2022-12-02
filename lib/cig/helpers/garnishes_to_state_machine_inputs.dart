import 'package:barbeat/models/garnish_with_machine_input.dart';
import 'package:barbeat/models/garnishes.dart';

List<GarnishWithMachineInput> garnishesToStateMachineInputs(
    List<IngredientsRequiringGarnish?> ingredients) {
  List<GarnishWithMachineInput> result = [];
  for (var ingredient in ingredients) {
    if (ingredient != null) {
      for (var garnish in glassesWithArtWork) {
        if (garnish.garnish == ingredient) {
          result.add(garnish);
        }
      }
    }
  }
  return result;
}
