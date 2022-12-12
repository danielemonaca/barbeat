import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/commons/white_bottom_part.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const titleColor = Color(0xFFFFFFFF);
    const Color colorForArchBackground = Color(0xFFFAF8F2);
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
                color: 0xFFFFFFFF,
                shadow: true,
                photoPath: 'assets/common/backIcon.svg',
                size: 40,
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.05),
                child: const Text(
                  'Search by ingredients',
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 20,
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
