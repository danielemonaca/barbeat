import 'package:barbeat/cig/CIG.dart';
import 'package:barbeat/common_libs.dart';
import 'package:barbeat/helpers/color_utility.dart';
import 'package:barbeat/helpers/get_drink_abv_from_ingredients.dart';
import 'package:barbeat/helpers/string_color_to_hex.dart';
import 'package:barbeat/models/drink.dart';
import 'package:barbeat/models/garnishes.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:barbeat/services/ingredient_service.dart';
import 'package:barbeat/ui/commons/white_bottom_part.dart';
import 'package:barbeat/ui/screens/details/abv_chip.dart';

class CocktailDetailsPage extends StatefulWidget {
  final Drink drink;

  const CocktailDetailsPage({super.key, required this.drink});

  @override
  State<CocktailDetailsPage> createState() => _CocktailDetailsPageState();
}

class _CocktailDetailsPageState extends State<CocktailDetailsPage> {
  final Color _colorForArchBackground = const Color(0xFFFAF8F2);
  late List<Ingredient> _ingredients;

  @override
  void initState() {
    super.initState();
    _ingredients = []; // a bit of a fall back in case we can't get the ingredients
    IngredientService.getIngredientsFromNames(
            widget.drink.ingredients?.map((e) => e.ingredientName).toList() ??
                [])
        .then((value) => setState(() => _ingredients = value));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 600,
                  color: lightenColor(
                      Color(stringColorToHex(widget.drink.color ?? '#FF0000')),
                      0.2),
                ),
                buildWhiteBottomPart(size,
                    height: 0.60, color: _colorForArchBackground),
                Positioned(
                  top: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // This section will change when we have RIVE animation
                        width: 320,
                        height: 320,
                        child: CIG([
                          'lemon',
                          'ice',
                          IngredientsRequiringGarnish.lemonPeel.name
                        ], widget.drink.color, 'Martini Glass', true),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Mojito',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      AbvChip(abv: getDrinkAbvFromIngredients(_ingredients)),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: Colors.blue,
              constraints: const BoxConstraints(minHeight: 200),
            ),
          ],
        ),
      ),
    );
  }
}
