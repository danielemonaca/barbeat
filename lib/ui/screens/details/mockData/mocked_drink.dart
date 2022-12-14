import 'package:barbeat/models/cocktail_category.dart';
import 'package:barbeat/models/drink.dart';
import 'package:barbeat/models/glass.dart';
import 'package:barbeat/models/ingredient_for_drink.dart';
import 'package:barbeat/models/instruction.dart';

Drink mockedDrink = const Drink(
  cocktailId: 1,
  name: 'Margarita',
  glass: Glass.martiniGlass,
  category: CocktailCategory.cocktail,
  instructions: [
    Instruction(
      language: 'en',
      text:
          'Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass.',
    ),
    Instruction(
      language: 'ru',
      text:
          'Все ингредиенты налить в коктейльный шейкер с кубиками льда. Хорошо встряхнуть. Вылить в холодный коктейльный стакан.',
    ),
  ],
  ingredients: [
    IngredientForDrink(
      ingredientName: 'Ouzo',
      measure: '1/2 oz ',
    ),
    IngredientForDrink(
      ingredientName: 'Champagne',
      measure: '1 oz ',
    ),
    IngredientForDrink(
      ingredientName: 'Applejack',
      measure: '2 oz',
    ),
    IngredientForDrink(
      ingredientName: 'Apricot Brandy',
      measure: '3 oz',
    ),
  ],
  color: '#FF0000',
);
