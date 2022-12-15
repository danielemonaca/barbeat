import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final Function() action;
  final String title;
  final int buttonColor;
  final int textColor;
  final double size;
  final bool? shadow;

  const SettingButton(
      {super.key,
      required this.action,
      required this.buttonColor,
      required this.textColor,
      required this.title,
      required this.size,
      this.shadow = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 60,
      padding: EdgeInsets.zero,
      textColor: Color(textColor),
      onPressed: action,
      color: Color(buttonColor),
      shape: const CircleBorder(),
      elevation: shadow! ? 6 : 0,
      height: size,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
