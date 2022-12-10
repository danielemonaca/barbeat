import 'package:barbeat/helpers/get_drink_abv_from_ingredients.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get drink abv from ingredients', (() {
    // Setup
    const List<Ingredient> ingredients = [
      Ingredient(
        name: 'gin',
        abv: 40,
      ),
      Ingredient(
        name: 'aperol',
        abv: 11,
      ),
      Ingredient(
        name: 'lemon',
        abv: null,
      ),
      Ingredient(
        name: 'lime',
        abv: 0,
      ),
    ];

    const int expected = 22;

    // Test

    final int result = getDrinkAbvFromIngredients(ingredients);

    // Assert
    expect(result, expected);
  }));

  test('get drink abv from ingredients with abv < 10', (() {
    // Setup

    const List<Ingredient> ingredients = [
      Ingredient(
        name: 'gin',
        abv: 8,
      ),
      Ingredient(
        name: 'aperol',
        abv: 9,
      ),
      Ingredient(
        name: 'lemon',
        abv: null,
      ),
      Ingredient(
        name: 'lime',
        abv: 0,
      ),
      Ingredient(
        name: 'lime Peel',
      ),
    ];

    const int expected = 8;

    // Test

    final int result = getDrinkAbvFromIngredients(ingredients);

    // Assert
    expect(result, expected);
  }));
}
