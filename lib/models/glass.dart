import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum Glass {
  highballglass,
  cocktailglass,
  oldFashionedglass,
  whiskeyGlass,
  collinsglass,
  pousseCafeGlass,
  champagneflute,
  whiskeySourGlass,
  cordialGlass,
  brandySnifter,
  whiteWineGlass,
  nickAndNoraGlass,
  hurricaneGlass,
  coffeemug,
  shotglass,
  jar,
  irishCoffeeCup,
  punchbowl,
  pitcher,
  pintGlass,
  copperMug,
  wineGlass,
  beerMug,
  margaritaCoupetteGlass,
  beerPilsner,
  beerGlass,
  parfaitGlass,
  masonJar,
  margaritaGlass,
  martiniGlass,
  balloonGlass,
  coupeGlass,
  cocktailGlass,
  collinsGlass,
  highballGlass,
  coffeeMug,
  punchBowl,
  shotGlass,
  champagneFlute,
  oldFashionedGlass;

  static Glass fromJson(String json) => Glass.values.byName(json);
}

extension GlassWithExtension on Glass {
  String get name => describeEnum(this);

  String get displayName {
    switch (this) {
      case Glass.highballglass:
        return 'Highball glass';
      case Glass.cocktailglass:
        return 'Cocktail glass';
      case Glass.oldFashionedglass:
        return 'Old-fashioned glass';
      case Glass.whiskeyGlass:
        return 'Whiskey Glass';
      case Glass.collinsglass:
        return 'Collins Glass';
      case Glass.pousseCafeGlass:
        return 'Pousse cafe glass';
      case Glass.champagneflute:
        return 'Champagne flute';
      case Glass.whiskeySourGlass:
        return 'Whiskey sour glass';
      case Glass.cordialGlass:
        return 'Cordial glass';
      case Glass.brandySnifter:
        return 'Brandy snifter';
      case Glass.whiteWineGlass:
        return 'White wine glass';
      case Glass.nickAndNoraGlass:
        return 'Nick and Nora Glass';
      case Glass.hurricaneGlass:
        return 'Hurricane glass';
      case Glass.coffeemug:
        return 'Coffee mug';
      case Glass.shotglass:
        return 'Shot glass';
      case Glass.jar:
        return 'Jar';
      case Glass.irishCoffeeCup:
        return 'Irish coffee cup';
      case Glass.punchbowl:
        return 'Punch bowl';
      case Glass.pitcher:
        return 'Pitcher';
      case Glass.pintGlass:
        return 'Pint glass';
      case Glass.copperMug:
        return 'Copper Mug';
      case Glass.wineGlass:
        return 'Wine Glass';
      case Glass.beerMug:
        return 'Beer mug';
      case Glass.margaritaCoupetteGlass:
        return 'Margarita/Coupette glass';
      case Glass.beerPilsner:
        return 'Beer pilsner';
      case Glass.beerGlass:
        return 'Beer Glass';
      case Glass.parfaitGlass:
        return 'Parfait glass';
      case Glass.masonJar:
        return 'Mason jar';
      case Glass.margaritaGlass:
        return 'Margarita glass';
      case Glass.martiniGlass:
        return 'Martini Glass';
      case Glass.balloonGlass:
        return 'Balloon Glass';
      case Glass.coupeGlass:
        return 'Coupe Glass';
      case Glass.cocktailGlass:
        return 'Cocktail Glass';
      case Glass.collinsGlass:
        return 'Collins Glass';
      case Glass.highballGlass:
        return 'Highball Glass';
      case Glass.coffeeMug:
        return 'Coffee Mug';
      case Glass.punchBowl:
        return 'Punch Bowl';
      case Glass.shotGlass:
        return 'Shot Glass';
      case Glass.champagneFlute:
        return 'Champagne Flute';
      case Glass.oldFashionedGlass:
        return 'Old-Fashioned glass';
      default:
        return 'Unknown';
    }
  }
}
