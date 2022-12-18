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

  final activeButtonColor = 0xFFEA7E7D;
  final inactiveButtonColor = 0xFFD9D9D9;
  final inactiveTextColor = 0xFF000000;
  final activeTextColor = 0xFFFFFFFF;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: MaterialButton(
        elevation: 0,
        minWidth: 20,
        onPressed: action,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: active ? Color(activeButtonColor) : Color(inactiveButtonColor),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter-Bold',
            fontSize: 13,
            color: active ? Color(activeTextColor) : Color(inactiveTextColor),
          ),
        ),
      ),
    );
  }
}
