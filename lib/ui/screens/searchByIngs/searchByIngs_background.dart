import 'package:barbeat/ui/commons/circle_button.dart';
import 'package:barbeat/ui/screens/home/home_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const titleColor = Color(0xFFFFFFFF);
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
                photoPath: 'assets/common/backIcon.svg',
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.07),
                child: const Text(
                  'Search by Ingredients',
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        _buildWhiteBottomPart(size),
      ],
    );
  }

  Widget _buildWhiteBottomPart(Size size) {
    const whiteBottomPart = 'assets/searchByIngs/rectangle.svg';
    return Align(
      // bottom: -4,
      // top: 5,
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: size.width,
        height: size.height * 0.90,
        child: SvgPicture.asset(
          whiteBottomPart,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
