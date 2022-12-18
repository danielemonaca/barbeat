import 'package:barbeat/ui/screens/settings/measurements/measurement_button.dart';
import 'package:flutter/material.dart';
import '../settings_button_info.dart';

class Measurements extends StatefulWidget {
  final double width;
  final double height;
  final String title;

  const Measurements({
    super.key,
    required this.width,
    required this.height,
    required this.title,
  });

  @override
  State<Measurements> createState() => _MeasurementsState();
}

class _MeasurementsState extends State<Measurements> {
  bool firstButtonActive = true;
  bool secondButtonActive = false;
  @override
  Widget build(BuildContext context) {
    const titleColor = 0xFFB5B5B5;
    const double measurementButtonSize = 35;

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

    List<ButtonInfo> buttons = [
      ButtonInfo(
        active: firstButtonActive,
        title: 'cl',
        action: handleFirstButton,
      ),
      ButtonInfo(
        active: secondButtonActive,
        title: 'oz',
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
                MeasurementButton(
                  action: button.action,
                  title: button.title,
                  active: button.active,
                  size: measurementButtonSize,
                )
            ],
          ),
        ),
      ],
    );
  }
}
