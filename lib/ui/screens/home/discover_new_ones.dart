import 'package:barbeat/ui/commons/custom_card.dart';
import 'package:barbeat/ui/screens/home/data/get_card_info.dart';
import 'package:flutter/material.dart';

class DiscoverNewOnes extends StatelessWidget {
  const DiscoverNewOnes({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const padding = EdgeInsets.only(top: 25);
    const black = Colors.black;

    List<CardInfo> data = getCardInfo(context);

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.6,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Or discover new ones!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return CustomCard(
                      title: item.title,
                      image: item.image,
                      action: () => item.action,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardInfo {
  String image;
  String title;
  final Function action;

  CardInfo({required this.image, required this.title, required this.action});
}
