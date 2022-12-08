import 'dart:async';

import 'package:barbeat/models/drink.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

const String _cocktailsCollection = 'cocktails';

class CocktailService {
  // get ingredient from ingredientName
  static Future<Drink?> getCocktailFromName(String cocktailName) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection(_cocktailsCollection)
        .where('name', isEqualTo: cocktailName)
        .get();

    if (querySnapshot.docs.isEmpty) {
      return null;
    }

    return Drink.fromJson(querySnapshot.docs.first.data());
  }
}
