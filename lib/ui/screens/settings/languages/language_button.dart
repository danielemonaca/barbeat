import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final Function() action;
  final String title;
  final bool active;

  const LanguageButton(
      {super.key,
      required this.action,
      required this.title,
      required this.active});

  @override
  Widget build(BuildContext context) {
    const activeButtonColor = 0xCCE76667;
    const inactiveButtonColor = 0xFFD9D9D9;
    const inactiveTextColor = 0xFF000000;
    const activeTextColor = 0xFFFFFFFF;

    return SizedBox(
      height: 35,
      child: MaterialButton(
        minWidth: 20,
        onPressed: action,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: active
            ? const Color(activeButtonColor)
            : const Color(inactiveButtonColor),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter-Bold',
            fontSize: 13,
            color: active
                ? const Color(activeTextColor)
                : const Color(inactiveTextColor),
          ),
        ),
      ),
    );
  }
}
