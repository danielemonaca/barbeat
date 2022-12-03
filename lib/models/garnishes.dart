// These are the current garnishes that are currently available in the CIG

import 'package:barbeat/helpers/camel_to_sentence.dart';
import 'package:flutter/foundation.dart';

enum IngredientsRequiringGarnish {
  cherry,
  freshLimeJuice,
  apple,
  fruit,
  orangeSlice,
  orangePeel,
  freshMint,
  basil,
  grapes,
  cherries,
  strawberries,
  lemon,
  lime,
  lemonSlice,
  limeSlice,
  mint,
  maraschinoCherry,
  limePeel,
  lemonPeel,
  orange,
  berries,
  ice,
  squeezedOrange,
}

extension IngredientsRequiringGarnishExtension on IngredientsRequiringGarnish {
  String get name => camelToSentence(describeEnum(this));
}
