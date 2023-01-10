import 'package:shared_preferences/shared_preferences.dart';

class StoreFavorites {
  static late SharedPreferences _prefs;

  static late List<String> favorites;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future addFavorites(String drink) async {
    favorites = _prefs.getStringList("favorites") ?? [];
    favorites.add(drink);
    await _prefs.setStringList("favorites", favorites);
  }

  static Future removeFavorite(String drink) async {
    favorites = _prefs.getStringList("favorites") ?? [];
    favorites.remove(drink);
    await _prefs.setStringList("favorites", favorites);
  }

  static bool checkIsFavorite(String drink) {
    favorites = _prefs.getStringList("favorites") ?? [];
    return favorites.contains(drink) ? true : false;
  }
}
