import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final Function() action;
  final String title;
  final int buttonColor;
  final int textColor;

  const LanguageButton({
    super.key,
    required this.action,
    required this.title,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      // width: 80,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Color(buttonColor),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter-Bold',
            fontSize: 13,
            color: Color(textColor),
          ),
        ),
      ),
    );
  }
}
