import 'package:barbeat/helpers/string_color_to_hex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../cig/CIG.dart';
import '../../../helpers/color_utility.dart';

class CocktailCard extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String description;
  final List<String> cigIngs;
  final String cigColor;
  final String cigGlass;
  const CocktailCard({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.description,
    required this.cigIngs,
    required this.cigColor,
    required this.cigGlass,
  });

  final int titleColor = 0xFF7A7A7A;
  final int descriptionColor = 0xFFB7B7B7;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            lightenColor(
              Color(stringColorToHex(cigColor)),
            ),
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: CIG(
                    cigIngs,
                    cigColor,
                    cigGlass,
                    true,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.6,
                height: height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(titleColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          height: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                '🔥',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(descriptionColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
