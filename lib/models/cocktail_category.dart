import 'package:barbeat/helpers/camel_to_sentence.dart';
import 'package:flutter/foundation.dart';

enum CocktailCategory {
  ordinaryDrink,
  cocktail,
  milkOrFloatOrShake,
  otherOrUnknown,
  cocoa,
  shot,
  coffeeOrTea,
  homemeadeLiqueur,
  punchOrPartyDrink,
  beer,
  softDrinkOrSoda;

  static CocktailCategory fromJson(String json) =>
      CocktailCategory.values.byName(json);
}

extension CocktailCategoryExtension on CocktailCategory {
  String get name {
    switch (this) {
      case CocktailCategory.otherOrUnknown:
        return 'Other/Unknown';
      case CocktailCategory.milkOrFloatOrShake:
        return 'Milk / Float / Shake';
      case CocktailCategory.coffeeOrTea:
        return 'Coffee / Tea';
      case CocktailCategory.punchOrPartyDrink:
        return 'Punch / Party Drink';
      case CocktailCategory.softDrinkOrSoda:
        return 'Soft Drink / Soda';
      default:
        return camelToSentence(describeEnum(this));
    }
  }
}
