import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/commons/white_bottom_part.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:flutter/material.dart';

class SettingsBackground extends StatelessWidget {
  const SettingsBackground({super.key});

  final titleColor = 0xFFFFFFFF;
  final Color colorForArchBackground = const Color(0xFFFAF8F2);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void navigateToHome() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    }

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.2,
          child: Row(
            children: [
              CircleButton(
                action: navigateToHome,
                color: titleColor,
                photoPath: 'assets/common/backIcon.svg',
                size: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.17),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(titleColor),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        buildWhiteBottomPartRegular(
          size,
          height: 0.9,
          color: colorForArchBackground,
        ),
      ],
    );
  }
}
