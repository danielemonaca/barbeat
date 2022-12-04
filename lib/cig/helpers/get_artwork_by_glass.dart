import 'package:barbeat/models/artworks.dart';
import 'package:barbeat/models/glasses_with_artwork.dart';

ArtWork getArtWorkByGlass(String glass) {
  for (var item in glassesWithArtWork) {
    if (item.name == glass) {
      return item.artwork ?? ArtWork.CocktailGlass;
    }
  }
  return ArtWork.CocktailGlass;
}
