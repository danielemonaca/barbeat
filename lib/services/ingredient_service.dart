import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/ingredient.dart';

const String _ingredientsCollection = 'ingredients';

class IngredientService {
  static Future<List<Ingredient>> getIngredients() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection(_ingredientsCollection)
        .get();

    final ingredients = <Ingredient>[];

    for (var doc in querySnapshot.docs) {
      ingredients.add(Ingredient.fromJson(doc.data()));
    }

    return ingredients;
  }

  // get ingredient from ingredientName
  static Future<Ingredient?> getIngredientFromName(
      String ingredientName) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection(_ingredientsCollection)
        .where('name', isEqualTo: ingredientName)
        .get();

    if (querySnapshot.docs.isEmpty) {
      return null;
    }

    return Ingredient.fromJson(querySnapshot.docs.first.data());
  }

  // get ingredients from different ingredients names
  static Future<List<Ingredient>> getIngredientsFromNames(
      List<String> ingredientNames) async {
    if (ingredientNames.isEmpty) {
      return [];
    }
    final querySnapshot = await FirebaseFirestore.instance
        .collection(_ingredientsCollection)
        .where('name', whereIn: ingredientNames)
        .get();

    final ingredients = <Ingredient>[];

    for (var doc in querySnapshot.docs) {
      ingredients.add(Ingredient.fromJson(doc.data()));
    }

    return ingredients;
  }

  // get ingredients that have the name that starts with a string (search)

  // NOT TESTED
  static Future<List<Ingredient>> getIngredientsFromSearch(
      String search) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection(_ingredientsCollection)
        .where('name', isGreaterThanOrEqualTo: search)
        .where('name', isLessThan: '${search}z')
        .get();

    final ingredients = <Ingredient>[];

    for (var doc in querySnapshot.docs) {
      ingredients.add(Ingredient.fromJson(doc.data()));
    }

    return ingredients;
  }
}
