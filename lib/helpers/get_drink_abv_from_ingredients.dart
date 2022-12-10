/* 
* This function takes a list of ingredients containing an abv,
 filter for existing abv and that abv > 0 
 and returns the average abv of the ingredients,
 reduce the result by 10% if the result is > 10
 return the result as an int
*/

import 'package:barbeat/models/ingredient.dart';

int getDrinkAbvFromIngredients(List<Ingredient> ingredients) {
  List<int> abvs = ingredients
      .where((ingredient) => ingredient.abv != null)
      .where((ingredient) => ingredient.abv! > 0)
      .map((ingredient) => ingredient.abv!)
      .toList();

  if (abvs.isEmpty) {
    return 0;
  }

  double abv = abvs.reduce((value, element) => value + element) / abvs.length;

  if (abv > 10) {
    abv = abv * 0.9;
  }

  return abv.toInt();
}
