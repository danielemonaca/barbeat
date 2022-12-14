import 'package:barbeat/common_libs.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:barbeat/models/ingredient_for_drink.dart';
import 'package:barbeat/services/ingredient_service.dart';

class ScrollableListOfIngredients extends StatefulWidget {
  final List<Ingredient> ingredients;
  final List<IngredientForDrink> ingredientsForDrink;

  const ScrollableListOfIngredients(
      {super.key,
      required this.ingredients,
      required this.ingredientsForDrink});

  @override
  State<ScrollableListOfIngredients> createState() =>
      _ScrollableListOfIngredientsState();
}

class _ScrollableListOfIngredientsState
    extends State<ScrollableListOfIngredients> {
  final Color shadowColor = const Color.fromARGB(46, 219, 218, 212);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 172,
      width: size.width * 0.84,
      child: (() {
        if (widget.ingredients.isNotEmpty) {
          setState(() {});
          return Scrollbar(
            scrollbarOrientation: ScrollbarOrientation.bottom,
            thumbVisibility: true,
            radius: const Radius.circular(10),
            thickness: 7,
            controller: scrollController,
            child: ListView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.ingredients.length,
              itemBuilder: (context, index) {
                return ingredientItem(
                    ingredient: widget.ingredients[index],
                    ingredientForDrink: widget.ingredientsForDrink[index]);
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }()),
    );
  }

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
      height: 120,
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
