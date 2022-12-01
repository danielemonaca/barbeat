import 'package:barbeat/cig/helpers/ingredients_to_garnishes.dart';
import 'package:barbeat/models/garnishes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("convert ingredients to garnishes", () {
    // Setup
    List<String> ingredients = ['cherry', 'ice', 'lemon', 'lime'];
    List<IngredientsRequiringGarnish> expected = [
      IngredientsRequiringGarnish.cherry,
      IngredientsRequiringGarnish.ice,
      IngredientsRequiringGarnish.lemon,
      IngredientsRequiringGarnish.lime
    ];

    // Test
    List<IngredientsRequiringGarnish?> result =
        ingredientsToGarnishes(ingredients);

    // Asset
    expect(result, expected);
  });

  test("convert ingredients to garnishes with different casing", () {
    // Setup
    List<String> ingredients = ['Cherry', 'Ice', 'lemon', 'LIME'];
    List<IngredientsRequiringGarnish> expected = [
      IngredientsRequiringGarnish.cherry,
      IngredientsRequiringGarnish.ice,
      IngredientsRequiringGarnish.lemon,
      IngredientsRequiringGarnish.lime
    ];

    // Test
    List<IngredientsRequiringGarnish?> result =
        ingredientsToGarnishes(ingredients);

    // Asset
    expect(result, expected);
  });

  test("do not convert ingredients to garnishes when it is not a garnish", () {
    // Setup
    List<String> ingredients = [
      'Cherry',
      'Ice',
      'lemon',
      'LIME',
      'aperol',
      'gin'
    ];
    List<IngredientsRequiringGarnish> expected = [
      IngredientsRequiringGarnish.cherry,
      IngredientsRequiringGarnish.ice,
      IngredientsRequiringGarnish.lemon,
      IngredientsRequiringGarnish.lime
    ];

    // Test
    List<IngredientsRequiringGarnish?> result =
        ingredientsToGarnishes(ingredients);

    // Asset
    expect(result, expected);
  });
}
