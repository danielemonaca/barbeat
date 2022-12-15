import 'package:barbeat/ui/screens/settings/languages/languages.dart';
import 'package:barbeat/ui/screens/settings/measurements/measurements.dart';
import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: size.width * 0.85,
        height: size.height * 0.72,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Measurements(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxWidth * 0.2,
                title: 'Measurement',
                buttonOne: 'cl',
                buttonTwo: 'oz',
                size: 35,
              ),
              Languages(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxWidth * 0.2,
                title: 'Languages',
                buttonOne: 'English',
                buttonTwo: 'Italian',
              ),
            ],
          );
        }),
      ),
    );
  }
}
