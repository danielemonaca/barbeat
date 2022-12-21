import '../../../models/garnishes.dart';

class Ing {
  final String title;
  final Function action;
  final List<String> cigIngs;
  final String cigColor;
  final String cigGlass;

  Ing({
    required this.title,
    required this.action,
    required this.cigIngs,
    required this.cigColor,
    required this.cigGlass,
  });
}

List<Ing> ingredients = [
  Ing(
    title: 'Gin',
    action: () => null,
    cigIngs: ['orange', 'ice', IngredientsRequiringGarnish.orangePeel.name],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
  Ing(
    title: 'Ice',
    action: () => null,
    cigIngs: const ['lime', 'ice', 'Lime Peel'],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
  Ing(
    title: 'Orange',
    action: () => null,
    cigIngs: ['lemon', 'ice', IngredientsRequiringGarnish.lemonPeel.name],
    cigColor: '#DF4141',
    cigGlass: 'Martini Glass',
  ),
];
