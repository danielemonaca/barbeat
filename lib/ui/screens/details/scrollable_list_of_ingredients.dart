import 'package:barbeat/common_libs.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:barbeat/models/ingredient_for_drink.dart';
import 'package:barbeat/services/ingredient_service.dart';

class ScrollableListOfIngredients extends StatelessWidget {
  final List<Ingredient> ingredients;
  final List<IngredientForDrink> ingredientsForDrink;
  final Color shadowColor = const Color.fromARGB(46, 219, 218, 212);

  // Scroll controller

  const ScrollableListOfIngredients(
      {super.key,
      required this.ingredients,
      required this.ingredientsForDrink});

// Create an horizontally scrollable list of ingredients items
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 200,
      width: size.width * 0.9,
      child: Scrollbar(
        thumbVisibility: true,
        controller: scrollController,
        child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: ingredients.length,
          itemBuilder: (context, index) {
            return ingredientItem(
                ingredient: ingredients[index],
                ingredientForDrink: ingredientsForDrink[0]);
          },
        ),
      ),
    );
  }

  Widget ingredientItem(
      {required Ingredient ingredient,
      required IngredientForDrink ingredientForDrink}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 82,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(69),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: shadowColor,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Center(
              child:
                  IngredientService.getIngredientImage(ingredient.image ?? ''),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            ingredientForDrink.measure,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
