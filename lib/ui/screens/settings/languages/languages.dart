import 'package:barbeat/ui/screens/settings/languages/language_button.dart';
import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final String buttonOne;
  final String buttonTwo;
  // final double size;

  const Languages({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.buttonOne,
    required this.buttonTwo,
    // required this.size,
  });

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
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
                style: const TextStyle(color: Color(titleColor), fontSize: 15),
              ),
            ],
          ),
        ),
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LanguageButton(
                action: handleFirstButton,
                active: firstButtonActive,
                title: widget.buttonOne,
                // size: widget.size,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: LanguageButton(
                  action: handleSecondButton,
                  active: secondButtonActive,
                  title: widget.buttonTwo,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
