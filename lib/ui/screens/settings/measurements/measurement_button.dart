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

  @override
  Widget build(BuildContext context) {
    const activeButtonColor = 0xCCE76667;
    const inactiveButtonColor = 0xFFD9D9D9;
    const inactiveTextColor = 0xFF000000;
    const activeTextColor = 0xFFFFFFFF;

    return MaterialButton(
      minWidth: 60,
      padding: EdgeInsets.zero,
      textColor: active
          ? const Color(activeTextColor)
          : const Color(inactiveTextColor),
      onPressed: action,
      color: active
          ? const Color(activeButtonColor)
          : const Color(inactiveButtonColor),
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
