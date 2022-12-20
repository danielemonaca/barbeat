import 'package:barbeat/ui/screens/search/cocktail_card.dart';
import 'package:flutter/material.dart';

class ResultsContainer extends StatefulWidget {
  const ResultsContainer({super.key});

  @override
  State<ResultsContainer> createState() => _ResultsContainerState();
}

class _ResultsContainerState extends State<ResultsContainer> {
  final double childWidth = 0.88;
  final double childHeight = 0.28;

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CocktailCard(
                  width: constraints.maxWidth * 0.88,
                  height: constraints.maxWidth * 0.28,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
