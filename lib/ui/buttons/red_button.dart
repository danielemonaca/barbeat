import 'package:flutter/material.dart';
import '../../globals/theme/app_themes.dart';

class RedButton extends StatefulWidget {
  final String title;
  final bool isActivated;
  final Function()? action;

  const RedButton(
      {super.key,
      required this.title,
      required this.action,
      required this.isActivated});

  static const red = RedButtonColor.redButton;
  static const shadow = RedButtonColor.redButtonShadow;
  static const padding = EdgeInsets.symmetric(horizontal: 75);

  @override
  State<RedButton> createState() => _RedButtonState();
}

class _RedButtonState extends State<RedButton> {
  late bool isButtonActive = widget.isActivated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: RedButton.shadow,
            offset: Offset(0, 5),
            blurRadius: 15,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: isButtonActive ? widget.action : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: RedButton.red,
          padding: RedButton.padding,
          shape: const StadiumBorder(),
        ),
        child: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Inter-Bold',
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
