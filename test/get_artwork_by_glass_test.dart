import 'package:barbeat/cig/helpers/get_artwork_by_glass.dart';
import 'package:barbeat/models/artworks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Define the test
  test("if I get the CocktailGlass artwork out of a Martini Glass", () {
    // Asset
    expect(getArtWorkByGlass("Martini Glass"), ArtWork.CocktailGlass);
    expect(getArtWorkByGlass("Highball Glass"), ArtWork.NormalGlass);
  });
}
