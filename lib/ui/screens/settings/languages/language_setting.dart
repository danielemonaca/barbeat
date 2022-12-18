import 'package:barbeat/ui/screens/settings/languages/language_button.dart';
import 'package:flutter/material.dart';

import '../settings_button_info.dart';

class LanguageSetting extends StatefulWidget {
  final double width;
  final double height;
  final String title;

  const LanguageSetting({
    super.key,
    required this.width,
    required this.height,
    required this.title,
  });

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  bool firstButtonActive = true;
  bool secondButtonActive = false;
  @override
  Widget build(BuildContext context) {
    const titleColor = 0xFFB5B5B5;

    handleFirstButton() {
      setState(() {
        firstButtonActive = true;
        secondButtonActive = false;
      });
    }

    handleSecondButton() {
      setState(() {
        firstButtonActive = false;
        secondButtonActive = true;
      });
    }

    List<ButtonInfo> buttons = [
      ButtonInfo(
        active: firstButtonActive,
        title: 'English',
        action: handleFirstButton,
      ),
      ButtonInfo(
        active: secondButtonActive,
        title: 'Italian',
        action: handleSecondButton,
      )
    ];

    return Row(
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Color(titleColor),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var button in buttons)
                LanguageButton(
                  action: button.action,
                  title: button.title,
                  active: button.active,
                )
            ],
          ),
        ),
      ],
    );
  }
}
