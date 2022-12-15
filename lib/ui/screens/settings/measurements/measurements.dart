import 'package:barbeat/ui/screens/settings/measurements/setting_button.dart';
import 'package:flutter/material.dart';

class Measurements extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final String buttonOne;
  final String buttonTwo;
  final double size;

  const Measurements({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.buttonOne,
    required this.buttonTwo,
    required this.size,
  });

  @override
  State<Measurements> createState() => _MeasurementsState();
}

class _MeasurementsState extends State<Measurements> {
  @override
  Widget build(BuildContext context) {
    const activeButtonColor = 0xCCE76667;
    const titleColor = 0xFFB5B5B5;
    const inactiveButtonColor = 0xFFD9D9D9;
    const inactiveTextColor = 0xFF000000;
    const activeTextColor = 0xFFFFFFFF;
    bool firstButtonActive = true;
    bool secondButtonActive = false;

    void handleFirstButton() {
      setState(() {
        firstButtonActive = true;
        secondButtonActive = false;
      });
    }

    void handleSecondButton() {
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
              SettingButton(
                action: handleFirstButton,
                buttonColor:
                    firstButtonActive ? activeButtonColor : inactiveButtonColor,
                textColor:
                    firstButtonActive ? activeTextColor : inactiveTextColor,
                title: widget.buttonOne,
                size: widget.size,
              ),
              SettingButton(
                action: handleSecondButton,
                buttonColor: secondButtonActive
                    ? activeButtonColor
                    : inactiveButtonColor,
                textColor:
                    secondButtonActive ? activeTextColor : inactiveTextColor,
                title: widget.buttonTwo,
                size: widget.size,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
