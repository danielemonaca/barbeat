import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeepNavLink extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final Function() action;

  const DeepNavLink(
      {super.key,
      required this.width,
      required this.height,
      required this.title,
      required this.action});

  final titleColor = 0xFFB5B5B5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: SizedBox(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(titleColor),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: SvgPicture.asset(
                'assets/common/left-arrow.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
