class PageData {
  String cocktailImage;
  String text1;
  String text2;
  String text3;
  String description;

  PageData(
      {required this.cocktailImage,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.description});
}

List<PageData> introData = [
  PageData(
      cocktailImage: 'assets/introImages/cocktail1.png',
      text1: 'Find any ',
      text2: 'Cocktail',
      text3: ' you want',
      description:
          'In BarBeat, you can search any cocktail you can think of! We have more than 500 cocktails available for you to discover'),
  PageData(
      cocktailImage: 'assets/introImages/cocktail2.png',
      text1: 'Find the Perfect ',
      text2: 'Cocktail',
      text3: ' For Your Fridge',
      description:
          'In BarBeat, you can search cocktails by the ingredients! Just open the fridge and insert what you have in the app, BarBeat will think about the rest!'),
  PageData(
      cocktailImage: 'assets/introImages/cocktail1.png',
      text1: 'Find the Perfect ',
      text2: 'Cocktail',
      text3: ' For You',
      description:
          'In BarBeat, you can also search cocktails by the taste that you would like! Do you feel like a sweet drink? Do you feel like a low-alcohol level drink? No worries, BarBeat will think about it!')
];
