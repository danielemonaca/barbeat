import 'package:flutter/material.dart';

// each class will represent colors used in a specific page with the page title used in the class title
// some pages will not have classes if they do not use any unique colors

// get started page
class GetStartedColors {
  static const whiteBackground = Color(0xFFFFFFFF);

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
class HomeScreenColors extends GetStartedColors {
  // "search cocktail"
  static const searchBarText = Color(0xFFB5B5B5);

  // "search by ingredient", "random cocktail"
  static const menuCardText = Color(0xFF686868);

  // "spritz", "mojito"
  // refer to headingColor in GetStarted Colors

  // "the orangy classic", "minty flavour"
  // refer to descriptionColor in GetStartedColors

  // bottom navbar background color
  static const bottomNavBarColor = Color(0xFFF5F3ED);
}

// favorites page
class FavoritesPageColors extends HomeScreenColors {
  // green background
  static const greenBackground = Color(0xFFA0D4A9);

  // beige background color on top of green
  // refer to bottomNavBarColor in HomeScreenColors

  // heart icon located on top right corner to indicate that a drink is a part of the favorites list
  // is also the same color for the swiping dots located below the title of the drink
  static const favoriteHeart = Color(0xFFFFC300);

  // "18% alcohol"
  // refer to descriptionColor in GetStartedColors

  // bottom nav bar background color === white (0xFFFFFFFF)
}

// settings screen
class SettingsScreenColors extends HomeScreenColors {
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
  // refer to searchBarText in HomeScreenColors
}

// cocktail details screen

// green background
// refer to green background in FavoritesColors

// beige background color on top of green
// refer to bottomNavBarColor in HomeScreenColors

// "18% alcohol"
// same color for title of ingredients
// refer to descriptionColor in GetStartedColors

// ingredient percentage
// refer to swipeDotColor in GetStartedColors

// list of results page
class ResultsListColors extends FavoritesPageColors {
  // red background
  static const redBackground = Color(0xFFFF9697);

  // beige background color
  // same color for back button background color and setting button background color
  // refer to bottomNavBarColor in HomeScreenColors

  // will be using a SearchCard located at the end of this file
}

// search by ingredient page
class SearchByIngredientsColors extends SettingsScreenColors {
  // red background
  // refer to redBackground in SettingsScreenColors

  // beige background color
  // same color for back button background color
  // refer to beigeBackground in SettingsScreenColors

  // card title color
  // refer to menuCardText in HomeScreenColors

  // ingredient name search slider located at bottom of screen
  static const ingredientSlider = Color(0xFFF1EFE8);

  // "ingredient name" search bar
  // same as search icon
  // refer to searchBarText in HomeScreenColors
}

// search cocktail page

// red background
// refer to redBackground in ResultsListColors

// beige background color
// same color for back button background color and search bar background color
// refer to beigeBackground in SettingsScreenColors

// "search cocktail" search bar
// same as search icon
// refer to searchBarText in HomeScreenColors

// will be using a SearchCard located at the end of this file

class SearchCard {
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

class RedButtonColor {
  static const redButton = Color(0xFFF54749);
}
