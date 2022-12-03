import 'package:collection/collection.dart';

import '../../models/garnishes.dart';

List<IngredientsRequiringGarnish?> ingredientsToGarnishes(
    List<String> ingredients) {
  List<IngredientsRequiringGarnish?> garnishes = ingredients
      .map((e) => IngredientsRequiringGarnish.values.firstWhereOrNull(
          (element) => element.name.toLowerCase() == e.toLowerCase()))
      .toList();

  // Remove null values
  garnishes.removeWhere((value) => value == null);

  // Return the list of garnishes without duplicates
  return garnishes.toSet().toList();
}
