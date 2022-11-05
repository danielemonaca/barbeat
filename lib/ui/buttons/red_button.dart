import 'package:flutter/material.dart';
import '../../globals/theme/app_themes.dart';

class RedButton extends StatefulWidget {
  // title to be passed in
  final String title;

  // boolean value to pass in to activate/deactivate button
  final bool isActivated;

  // function to be passed in to carry out desired action when button is clicked
  final Function()? action;

  const RedButton(
      {super.key,
      required this.title,
      required this.action,
      required this.isActivated});

  // styling
  static const red = RedButtonColor.redButton;
  static const padding = EdgeInsets.symmetric(horizontal: 45, vertical: 12);
  static final borderRadius = BorderRadius.circular(20);

  @override
  State<RedButton> createState() => _RedButtonState();
}

class _RedButtonState extends State<RedButton> {
  late bool isButtonActive = widget.isActivated;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isButtonActive ? widget.action : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: RedButton.red,
        padding: RedButton.padding,
        shape: RoundedRectangleBorder(
          borderRadius: RedButton.borderRadius,
        ),
      ),
      child: Text(
        widget.title,
        style: const TextStyle(
          fontFamily: 'Inter-Bold',
          fontSize: 15,
        ),
      ),
    );
  }
}
