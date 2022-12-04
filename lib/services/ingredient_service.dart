import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/ingredient.dart';

class IngredientService {
  final String _collection = 'ingredients';

  // get ingredients from firestore
  Future<List<Ingredient>> getIngredients() async {
    final querySnapshot =
        await FirebaseFirestore.instance.collection(_collection).get();

    final ingredients = <Ingredient>[];

    for (var doc in querySnapshot.docs) {
      ingredients.add(Ingredient.fromJson(doc.data()));
    }

    return ingredients;
  }
}
