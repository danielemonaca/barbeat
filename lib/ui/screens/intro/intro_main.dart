import 'package:barbeat/ui/buttons/red_button.dart';
import 'package:barbeat/ui/screens/intro/page_1.dart';
import 'package:barbeat/ui/screens/intro/page_2.dart';
import 'package:barbeat/ui/screens/intro/page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../globals/theme/app_themes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    _controller.addListener(() {
      setState(() {
        currentIndex = _controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/introImages/get-started.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/introImages/barbeat-logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'BARBEAT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 64,
                  ),
                ),
              ],
            ),
          ),
          PageView(
            controller: _controller,
            children: const [
              // *****page 1*****
              IntroPage1(),
              // *****page 2*****
              IntroPage2(),
              // *****page 3*****
              IntroPage3(),
            ],
          ),
          // dot indicators
          Container(
            alignment: const Alignment(0, 0.77),
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
          currentIndex == 2
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
