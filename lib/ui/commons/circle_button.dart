import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleButton extends StatelessWidget {
  final Function() action;
  final String photoPath;
  final int color;
  final double size;
  final bool? shadow;

  const CircleButton(
      {super.key,
      required this.action,
      required this.color,
      required this.photoPath,
      required this.size,
      this.shadow = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: action,
      color: Color(color),
      shape: const CircleBorder(),
      elevation: shadow! ? 6 : 0,
      height: size,
      child: SvgPicture.asset(
        photoPath,
      ),
    );
  }
}
