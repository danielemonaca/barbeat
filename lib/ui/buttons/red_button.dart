import 'package:flutter/material.dart';
import '../../globals/theme/app_themes.dart';

class RedButton extends StatelessWidget {
  final String title;
  final bool isActivated;
  final Function()? action;

  const RedButton(
      {super.key,
      required this.title,
      required this.action,
      required this.isActivated});

  // static const red = RedButtonColor.redButton;
  static const shadow = RedButtonColor.redButtonShadow;
  static const padding = EdgeInsets.symmetric(horizontal: 75);

  final boxShadow = const BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: shadow,
        offset: Offset(0, 5),
        blurRadius: 15,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: isActivated ? boxShadow : null,
      child: ElevatedButton(
        onPressed: isActivated ? action : null,
        style: ElevatedButton.styleFrom(
          // backgroundColor: red,
          padding: padding,
          shape: const StadiumBorder(),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Inter-Bold',
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
