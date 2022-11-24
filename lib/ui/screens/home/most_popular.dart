import 'package:barbeat/ui/commons/custom_card_overflow.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    final data = listData;
    Size size = MediaQuery.of(context).size;
    final padding = EdgeInsets.only(top: 25, left: size.width * 0.12);
    const black = Colors.black;
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: size.height * 0.5,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Most Popular',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return CustomOverflowCard(
                      title: item.title,
                      description: item.description,
                      image: item.image,
                      action: () => item.action,
                    );
                  },
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardData {
  String title;
  String description;
  String image;
  final Function action;

  CardData(
      {required this.title,
      required this.description,
      required this.image,
      required this.action});
}

List<CardData> listData = [
  CardData(
      title: 'Spritz',
      description: 'The Orangy Classic',
      image: 'assets/dummyPhotos/redCocktail.png',
      action: () => null),
  CardData(
      title: 'Mojito',
      description: 'Minty Flavour',
      image: 'assets/dummyPhotos/mojito.png',
      action: () => null),
  CardData(
      title: 'Lime Spritz',
      description: 'The Red Surprise',
      image: 'assets/dummyPhotos/redCocktail.png',
      action: () => null),
];
