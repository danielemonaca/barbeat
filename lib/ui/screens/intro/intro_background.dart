import 'package:barbeat/globals/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../commons/white_bottom_part.dart';

class IntroBackground extends StatelessWidget {
  const IntroBackground({super.key});

  static const _imagePattern = 'assets/introImages/background-pattern.png';
  static const _logoSvg = 'assets/logos/logo.svg';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(_imagePattern), fit: BoxFit.cover),
          ),
        ),
        _buildWhiteOverlay(),
        buildWhiteBottomPart(size),
        Container(
          alignment: const Alignment(0, 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: SvgPicture.asset(
                  _logoSvg,
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                ),
              ),
              const Text(
                'BARBEAT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
                  color: TextColors.defaultDarkGreyColor,
                  letterSpacing: 3.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWhiteOverlay() {
    const overlayColor = Color.fromARGB(233, 249, 249, 244);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: overlayColor,
    );
  }
}
