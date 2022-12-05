import 'package:barbeat/models/cocktail_category.dart';
import 'package:barbeat/models/glass.dart';
import 'package:barbeat/models/ingredient.dart';
import 'package:barbeat/models/instruction.dart';
import 'package:equatable/equatable.dart';

class Drink extends Equatable {
  final int cocktailId;
  final String name;
  final Glass? glass;
  final CocktailCategory? category;
  final List<Instruction>? instructions;
  final List<Ingredient>? ingredients;
  final List<String>? tags;

  const Drink({
    required this.cocktailId,
    required this.name,
    this.glass,
    this.category,
    this.instructions,
    this.ingredients,
    this.tags,
  });

  @override
  List<Object?> get props => [
        cocktailId,
        name,
        glass,
        category,
        instructions,
        ingredients,
        tags,
      ];

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        cocktailId: json['cocktailId'],
        name: json['name'],
        glass: Glass.fromJson(json['glass']),
        category: CocktailCategory.fromJson(json['category']),
        instructions: List<Instruction>.from(
            json['instructions'].map((x) => Instruction.fromJson(x))),
        ingredients: List<Ingredient>.from(
            json['ingredients'].map((x) => Ingredient.fromJson(x))),
        tags: List<String>.from(json['tags'].map((x) => x)),
      );
}
