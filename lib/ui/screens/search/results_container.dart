import 'package:barbeat/ui/screens/search/cocktail_card.dart';
import 'package:barbeat/ui/screens/search/dummy_data.dart';
import 'package:flutter/material.dart';

class ResultsContainer extends StatefulWidget {
  const ResultsContainer({super.key});

  @override
  State<ResultsContainer> createState() => _ResultsContainerState();
}

class _ResultsContainerState extends State<ResultsContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final double parentWidth = size.width;
    final double parentHeight = size.height * 0.75;

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: parentWidth,
        height: parentHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in cocktails)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CocktailCard(
                    width: size.width * 0.88,
                    height: size.width * 0.30,
                    title: item.title,
                    description: item.description,
                    cigIngs: item.cigIngs,
                    cigColor: item.cigColor,
                    cigGlass: item.cigGlass,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
