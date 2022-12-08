import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
  final String name;
  final String? type;
  final String? description;
  final int? abv;
  final bool? alcohol;
  final int? ingredientId;
  final String? image;

  const Ingredient({
    required this.name,
    this.type,
    this.description,
    this.abv,
    this.alcohol,
    this.ingredientId,
    this.image,
  });

  @override
  List<Object?> get props => [
        name,
        type,
        description,
        abv,
        alcohol,
        ingredientId,
        image,
      ];

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        name: json['name'],
        type: json['type'],
        description: json['description'],
        abv: json['abv'].floor(),
        alcohol: json['alcohol'],
        ingredientId: json['ingredientId'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'type': type,
        'description': description,
        'abv': abv,
        'alcohol': alcohol,
        'ingredientId': ingredientId,
        'image': image,
      };

  Ingredient copyWith({
    String? name,
    String? type,
    String? description,
    int? abv,
    bool? alcohol,
    int? ingredientId,
    String? image,
  }) {
    return Ingredient(
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
      abv: abv ?? this.abv,
      alcohol: alcohol ?? this.alcohol,
      ingredientId: ingredientId ?? this.ingredientId,
      image: image ?? this.image,
    );
  }

  @override
  String toString() {
    return 'Ingredient(name: $name, type: $type, description: $description, abv: $abv, alcohol: $alcohol, ingredientId: $ingredientId, image: $image)';
  }
}
