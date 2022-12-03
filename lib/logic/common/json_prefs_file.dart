import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// A class that wraps [SharedPreferences] to provide a simple interface for
/// storing and retrieving JSON objects. (in this case, for the preference of the user,
/// in our case, the favourite cocktails, the settings, etc..)
class JsonPrefsFile {
  JsonPrefsFile(this.name);
  final String name;

  Future<Map<String, dynamic>> load() async {
    final p = (await SharedPreferences.getInstance()).getString(name);
    return Map<String, dynamic>.from(jsonDecode(p ?? '{}'));
  }

  Future<void> save(Map<String, dynamic> data) async {
    await (await SharedPreferences.getInstance())
        .setString(name, jsonEncode(data));
  }
}
