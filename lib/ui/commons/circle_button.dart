import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleButton extends StatelessWidget {
  final Function() action;
  final String photoPath;
  final int color;
  const CircleButton(
      {super.key,
      required this.action,
      required this.color,
      required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: action,
      color: Color(color),
      shape: const CircleBorder(),
      child: SvgPicture.asset(photoPath),
    );
  }
}
