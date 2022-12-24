class Ing {
  String image;
  String title;
  final Function action;

  Ing({required this.image, required this.title, required this.action});
}

List<Ing> ingredients = [
  Ing(
    image: 'assets/introImages/cocktail1.png',
    title: 'Gin',
    action: () => null,
  ),
  Ing(
    image: 'assets/introImages/cocktail2.png',
    title: 'Ice',
    action: () => null,
  ),
  Ing(
    image: 'assets/introImages/cocktail1.png',
    title: 'Orange',
    action: () => null,
  ),
];
