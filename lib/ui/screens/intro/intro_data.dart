class PageData {
  String cocktailImage;
  String text;
  String highlightedText;
  String description;

  PageData(
      {required this.cocktailImage,
      required this.text,
      required this.highlightedText,
      required this.description});
}

List<PageData> introData = [
  PageData(
      cocktailImage: 'assets/introImages/cocktail1.png',
      text: 'Find any Cocktail you want',
      highlightedText: 'Cocktail',
      description:
          'In BarBeat, you can search any cocktail you can think of! We have more than 500 cocktails available for you to discover'),
  PageData(
      cocktailImage: 'assets/introImages/cocktail2.png',
      text: 'Find the Perfect Cocktail For Your Fridge',
      highlightedText: 'Cocktail',
      description:
          'In BarBeat, you can search cocktails by the ingredients! Just open the fridge and insert what you have in the app, BarBeat will think about the rest!'),
  PageData(
      cocktailImage: 'assets/introImages/cocktail1.png',
      text: 'Find the Perfect Cocktail For You',
      highlightedText: 'Cocktail',
      description:
          'In BarBeat, you can also search cocktails by the taste that you would like! Do you feel like a sweet drink? Do you feel like a low-alcohol level drink? BarBeat will think about the rest!'),
];
