import 'package:shared_preferences/shared_preferences.dart';

class StoreFavorites {
  static late SharedPreferences _prefs;

  static late List<String> favorites;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future addFavorites(String drink) async {
    _prefs = await SharedPreferences.getInstance();
    favorites = _prefs.getStringList("favorites") ?? [];
    favorites.add(drink);
    await _prefs.setStringList("favorites", favorites);
    // print(favorites);
  }

  static Future removeFavorite(String drink) async {
    _prefs = await SharedPreferences.getInstance();
    favorites = _prefs.getStringList("favorites") ?? [];
    favorites.remove(drink);
    await _prefs.setStringList("favorites", favorites);
    // print(favorites);
  }
}
