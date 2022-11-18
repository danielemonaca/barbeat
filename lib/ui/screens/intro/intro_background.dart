import 'package:barbeat/globals/theme/app_themes.dart';
import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

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
        _buildWhiteBottomPart(size),
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

  Widget _buildWhiteBottomPart(Size size) {
    const whiteBottomPart = 'assets/introImages/white_bottom_part.svg';
    const shadowWhiteBottomPartColor = Color(0xFFC7C5C1);

    return BottomCenter(
      child: SizedBox(
        width: size.width,
        height: size.height * 0.52,
        child: SimpleShadow(
            opacity: 0.40,
            color: shadowWhiteBottomPartColor,
            offset: const Offset(-10, -10),
            sigma: 7,
            child: SvgPicture.asset(
              whiteBottomPart,
              fit: BoxFit.cover,
            )
            // Default: 2
            ),
      ),
    );
  }
}
