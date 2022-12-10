import 'package:equatable/equatable.dart';

class IngredientForDrink extends Equatable {
  final String ingredientName;
  final String measure;

  const IngredientForDrink({
    required this.ingredientName,
    required this.measure,
  });

  @override
  List<Object?> get props => [
        ingredientName,
        measure,
      ];

  factory IngredientForDrink.fromJson(Map<String, dynamic> json) =>
      IngredientForDrink(
        ingredientName: json['ingredientName'],
        measure: json['measures'],
      );

  Map<String, dynamic> toJson() => {
        'ingredientName': ingredientName,
        'measures': measure,
      };

  IngredientForDrink copyWith({
    String? ingredientName,
    String? measure,
  }) {
    return IngredientForDrink(
      ingredientName: ingredientName ?? this.ingredientName,
      measure: measure ?? this.measure,
    );
  }
}
