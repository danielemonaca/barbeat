import 'package:barbeat/ui/commons/buttons/red_button.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:barbeat/ui/screens/intro/intro_background.dart';
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

  static const _swipeLeftColor = Color(0xFFA1A1A1);
  static const _swipeLeftText = 'Swipe left to continue';
  static const _getStartedText = 'Get Started';

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    }

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
                  text: element.text,
                  highlightedText: element.highlightedText,
                  description: element.description,
                )
            ],
          ),

          /// dot indicators
          Container(
            alignment: const Alignment(0, 0.76),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: GetStartedColors.swipeDotColor,
                dotHeight: 7,
                dotWidth: 7,
              ),
            ),
          ),
          onLastPage
              ? Container(
                  alignment: const Alignment(0, 0.96),
                  child: RedButton(
                    title: _getStartedText,
                    action: navigateToHome,
                    isActivated: true,
                  ),
                )
              : Container(
                  alignment: const Alignment(0, 0.9),
                  child: const Text(
                    _swipeLeftText,
                    style: TextStyle(
                      color: _swipeLeftColor,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
