import 'package:barbeat/ui/screens/settings/measurements/measurement_button.dart';
import 'package:flutter/material.dart';

class Measurements extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final String buttonOne;
  final String buttonTwo;
  final double size; // size of button

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
  bool firstButtonActive = true;
  bool secondButtonActive = false;
  @override
  Widget build(BuildContext context) {
    const titleColor = 0xFFB5B5B5;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MeasurementButton(
                action: handleFirstButton,
                active: firstButtonActive,
                title: widget.buttonOne,
                size: widget.size,
              ),
              MeasurementButton(
                action: handleSecondButton,
                active: secondButtonActive,
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
