import 'package:flutter/material.dart';

// each class will represent colors used in a specific page with the page title used in the class title

// get started page
class GetStartedColors {
  static const backgroundColor = Color(0xFFFFFFFF);

  // color of dots that move when swiping
  static const swipeDotColor = Color(0xFFFFC532);

  // description of app
  static const descriptionColor = Color(0xFF7A7A7A);

  // "swipe left to continue"
  static const swipeColor = Color(0xFFA1A1A1);

  // "find any cocktail you want"
  static const headingColor = Color(0xFF333333);

  // shade of red for the word "cocktail"
  static const cocktailWordColor = Color(0xFFF54749);
}

// home screen
class HomeScreenColors {
  static const backgroundColor = Color(0xFFFFFFFF);

  // "search cocktail"
  static const searchBarText = Color(0xFFB5B5B5);

  // "search by ingredient", "random cocktail"
  static const menuCardText = Color(0xFF686868);

  // "spritz", "mojito"
  static const drinkCardTitle = Color(0xFF333333);

  // "the orangy classic", "minty flavour"
  static const drinkCardDescription = Color(0xFF7A7A7A);

  // bottom navbar background color
  static const bottomNavBarColor = Color(0xFFF5F3ED);
}

// favorites page
class FavoritesPageColors {
  // green background
  static const greenBackground = Color(0xFFA0D4A9);

  // beige background color on top of green
  static const beigeBackground = Color(0xFFF5F3ED);

  // heart icon located on top right corner to indicate that a drink is a part of the favorites list
  // is also the same color for the swiping dots located below the title of the drink
  static const favoriteHeart = Color(0xFFFFC300);

  // "18% alcohol"
  static const drinkCardDescription = Color(0xFF7A7A7A);

  // bottom nav bar background color === white (0xFFFFFFFF)
}

// settings screen
class SettingsScreenColors {
  // red background color
  static const redBackground = Color(0xA6F54749);

  // beige background color
  // same color for back button background color
  static const beigeBackground = Color(0xFFFAF8F2);

  // option selected color --- "cl", "oz", "english", "italian"
  static const optionSelected = Color(0xD9E76667);

  // option not selected
  static const optionNotSelected = Color(0xFFD9D9D9);

  // option title --- "measurement", "language"
  // same as arrows on the right of screen next to options if there is one
  static const optionTitle = Color(0xFFB5B5B5);
}

// cocktail details screen
class CocktailDetailsColors {
  // green background
  static const greenBackground = Color(0xFFA0D4A9);

  // beige background color on top of green
  static const beigeBackground = Color(0xFFF5F3ED);

  // "18% alcohol"
  // same color for title of ingredients
  static const drinkCardDescription = Color(0xFF7A7A7A);

  // ingredient percentage
  static const ingredientPercentage = Color(0xFFFFC532);
}

// list of results page
class ResultsListColors {
  // red background
  static const redBackground = Color(0xFFFF9697);

  // beige background color
  // same color for back button background color and setting button background color
  static const beigeBackground = Color(0xFFFAF8F2);

  // green color for card
  // ***gradient not implemented***
  static const greenWave = Color(0xFFABECB6);

  // red color for card
  static const redWave = Color(0xFFFFC5C5);

  // card title "mojito"
  static const drinkCardTitle = Color(0xFF7A7A7A);

  // card description
  static const drinkCardDescription = Color(0xFFB7B7B7);
}

// search by ingredient page
class SearchByIngredientsColors {
  // red background
  static const greenBackground = Color(0xA6F54749);

  // beige background color
  // same color for back button background color
  static const beigeBackground = Color(0xFFFAF8F2);

  // card title color
  static const cardTitle = Color(0xFF686868);

  // ingredient name search slider located at bottom of screen
  static const ingredientSlider = Color(0xFFF1EFE8);

  // "ingredient name" search bar
  // same as search icon
  static const searchBarText = Color(0xFFB5B5B5);
}

// search cocktail page
class SearchCocktailPage {
  // red background
  static const redBackground = Color(0xFFFF9697);

  // beige background color
  // same color for back button background color and search bar background color
  static const beigeBackground = Color(0xFFFAF8F2);

  // "search cocktail" search bar
  // same as search icon
  static const searchBarText = Color(0xFFB5B5B5);

  // green color for card
  // ***gradient not implemented***
  static const greenWave = Color(0xFFABECB6);

  // red color for card
  static const redWave = Color(0xFFFFC5C5);

  // card title "mojito"
  static const drinkCardTitle = Color(0xFF7A7A7A);

  // card description "18% alcohol"
  static const drinkCardDescription = Color(0xFFB7B7B7);
}
