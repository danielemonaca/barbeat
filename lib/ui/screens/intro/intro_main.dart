import 'package:barbeat/ui/buttons/red_button.dart';
import 'package:barbeat/ui/screens/intro/background.dart';
import 'package:barbeat/ui/screens/intro/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../globals/theme/app_themes.dart';
import './intro_data.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          const IntroBackground(),
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              for (var element in introData)
                IntroPage(
                  cocktailImage: element.cocktailImage,
                  text1: element.text1,
                  text2: element.text2,
                  text3: element.text3,
                  description: element.description,
                )
            ],
          ),
          // dot indicators
          Container(
            alignment: const Alignment(0, 0.76),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: GetStartedColors.swipeDotColor,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          onLastPage
              ? Container(
                  alignment: const Alignment(0, 0.96),
                  child: const RedButton(
                      title: 'Get Started', action: null, isActivated: true),
                )
              : Container(
                  alignment: const Alignment(0, 0.9),
                  child: const Text('Swipe left to continue'),
                )
        ],
      ),
    );
  }
}
