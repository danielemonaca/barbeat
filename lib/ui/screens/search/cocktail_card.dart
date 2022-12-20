import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CocktailCard extends StatelessWidget {
  final double width;
  final double height;
  const CocktailCard({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFABECB6),
            Colors.white,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -15,
            child: SvgPicture.asset('assets/searchScreen/white_rectangle.svg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.4,
                height: height,
              ),
              SizedBox(
                width: width * 0.6,
                height: height,
              ),
            ],
          )
        ],
      ),
    );
  }
}
