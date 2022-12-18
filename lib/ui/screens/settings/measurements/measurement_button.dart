import 'package:flutter/material.dart';

class MeasurementButton extends StatelessWidget {
  final Function() action;
  final String title;
  final double size;
  final bool? shadow;
  final bool active;

  const MeasurementButton(
      {super.key,
      required this.action,
      required this.title,
      required this.size,
      this.shadow = false,
      required this.active});

  final activeButtonColor = 0xFFEA7E7D;
  final inactiveButtonColor = 0xFFD9D9D9;
  final inactiveTextColor = 0xFF000000;
  final activeTextColor = 0xFFFFFFFF;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 75,
      padding: EdgeInsets.zero,
      textColor: active ? Color(activeTextColor) : Color(inactiveTextColor),
      onPressed: action,
      color: active ? Color(activeButtonColor) : Color(inactiveButtonColor),
      shape: const CircleBorder(),
      height: size,
      elevation: 0,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
