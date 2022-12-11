import 'package:barbeat/common_libs.dart';
import 'package:barbeat/ui/screens/home/discover_new_ones.dart';
import 'package:barbeat/ui/screens/searchByIngs/searchByIngs_main.dart';

List<CardInfo> getCardInfo(BuildContext context) => [
      CardInfo(
        image: 'assets/introImages/cocktail1.png',
        title: 'Search by Ingredient',
        action: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchByIngredients(),
          ),
        ),
      ),
      CardInfo(
        image: 'assets/homeCards/arrows.svg',
        title: 'Search by Taste',
        action: () => null,
      ),
      CardInfo(
        image: 'assets/homeCards/arrows.svg',
        title: 'Random Cocktail',
        action: () => null,
      ),
      CardInfo(
        image: 'assets/homeCards/heart.svg',
        title: 'Your Favorites',
        action: () => null,
      ),
    ];
