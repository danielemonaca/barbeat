import '../../../models/garnishes.dart';

class CocktailInfo {
  final String title;
  final String description;
  final List<String> cigIngs;
  final String cigColor;
  final String cigGlass;

  CocktailInfo(
      {required this.title,
      required this.description,
      required this.cigIngs,
      required this.cigColor,
      required this.cigGlass});
}

List<CocktailInfo> cocktails = [
  CocktailInfo(
    title: 'Mojito',
    description: '18% Alcohol',
    cigIngs: const ['lime', 'ice', 'Lime Peel'],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
  CocktailInfo(
    title: 'Orange Spice',
    description: '15% Alcohol',
    cigIngs: ['orange', 'ice', IngredientsRequiringGarnish.orangePeel.name],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
  CocktailInfo(
    title: 'Lemon Delight',
    description: '15% Alcohol',
    cigIngs: ['lemon', 'ice', IngredientsRequiringGarnish.lemonPeel.name],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
];
