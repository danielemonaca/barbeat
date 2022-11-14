import 'package:barbeat/ui/buttons/red_button.dart';
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

  // double _visible = 0.0;

  // @override
  // void initState() {
  //   super.initState();
  //   currentIndex = 0;

  //   print('initState');

  //   _controller.addListener(() {
  //     setState(() {
  //       currentIndex = _controller.page!.toInt();
  //     });

  //     if (currentIndex == 2) {
  //       setState(() {
  //         Future.delayed(Duration(seconds: 4), () {
  //           _visible = 1.0;
  //         });
  //       });
  //     }
  //   });
  // }

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
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
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
              // ? AnimatedOpacity(
              //     opacity: _visible,
              //     duration: Duration(seconds: 4),
              //     child: Container(
              //       alignment: Alignment(0, 0.96),
              //       child: RedButton(
              //           title: 'Get Started', action: null, isActivated: true),
              //     ),
              //   )
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
