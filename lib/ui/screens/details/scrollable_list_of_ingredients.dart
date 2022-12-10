import 'package:barbeat/common_libs.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:barbeat/models/ingredient_for_drink.dart';
import 'package:barbeat/services/ingredient_service.dart';

class ScrollableListOfIngredients extends StatelessWidget {
  final List<Ingredient> ingredients;
  final List<IngredientForDrink> ingredientsForDrink;
  final Color shadowColor = const Color.fromARGB(46, 219, 218, 212);

  // ignore: todo
  // TODO:  Here I would take from the global state which measure is preferred from the user

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
      height: 210,
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
                ingredientForDrink: ingredientsForDrink[index]);
          },
        ),
      ),
    );
  }

// linear vertical gradient text color from black to white
  Widget gradientText(String text) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFEBB13), Color(0xFFFF5474)],
        ).createShader(rect);
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget ingredientItem(
      {required Ingredient ingredient,
      required IngredientForDrink ingredientForDrink}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            width: 90,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 90,
                    height: 72,
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
                  ),
                ),
                Positioned(
                  top: 10,
                  left: -5,
                  child: SizedBox(
                    width: 100,
                    child: IngredientService.getIngredientImage(
                        ingredient.image ?? ''),
                  ),
                ),
              ],
            ),
          ),
          Text(
            ingredientForDrink.ingredientName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              Text(
                ingredientForDrink.measure,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gradientText('- 10%')
            ],
          ),
        ],
      ),
    );
  }
}
