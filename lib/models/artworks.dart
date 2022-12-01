// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';

enum ArtWork {
  CocktailGlass,
  NormalGlass,
}

extension ArtWorkExtension on ArtWork {
  String get name => describeEnum(this);
}
