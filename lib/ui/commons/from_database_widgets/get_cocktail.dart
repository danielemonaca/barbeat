import 'package:barbeat/common_libs.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetCocktail extends StatelessWidget {
  final String name;

  const GetCocktail(this.name, {super.key});

  getIngredients() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('ingredients')
        .where('name', isEqualTo: name)
        .get();
    print('Trying: ${querySnapshot.docs}');
    for (var doc in querySnapshot.docs) {
      // Getting data directly
      String name = doc.get('name');

      print('Name: $name');
    }
  }

  @override
  Widget build(BuildContext context) {
    getIngredients();
    return const Text('hello');
  }
}
