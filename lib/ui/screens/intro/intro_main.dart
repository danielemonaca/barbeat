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
                  image:
                      AssetImage('assets/introImages/background-pattern.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromRGBO(255, 255, 255, 0.9),
          ),
          Positioned(
            bottom: -200,
            right: -420,
            child: Container(
              width: 1680,
              height: 820,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 28,
                    offset: Offset(0, 240),
                    color: Color(0x59C7C5C1))
              ]),
              child: CustomPaint(
                size: Size(200, (200 * 0.5833333333333334).toDouble()),
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 1),
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

// white bottom part
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.3571429);
    path0.quadraticBezierTo(size.width * 0.6397917, size.height * 0.2871429,
        size.width * 0.7500000, size.height * 0.3614286);
    path0.lineTo(size.width * 0.7500000, size.height * 0.7857143);
    path0.lineTo(size.width * 0.5000000, size.height * 0.7842857);
    path0.quadraticBezierTo(size.width * 0.5000000, size.height * 0.6775000,
        size.width * 0.5000000, size.height * 0.3571429);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
