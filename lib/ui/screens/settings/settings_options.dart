import 'package:barbeat/ui/screens/settings/languages/languages.dart';
import 'package:barbeat/ui/screens/settings/license_tos/license_tos.dart';
import 'package:barbeat/ui/screens/settings/measurements/measurements.dart';
import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double parentWidth = size.width * 0.85;
    double parentHeight = size.height * 0.72;

    const double childWidth = 0.5;
    const double childHeight = 0.25;
    const double measurementButtonSize = 35;

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: parentWidth,
        height: parentHeight,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Measurements(
                width: constraints.maxWidth * childWidth,
                height: constraints.maxWidth * childHeight,
                title: 'Measurement',
                buttonOne: 'cl',
                buttonTwo: 'oz',
                size: measurementButtonSize,
              ),
              Languages(
                width: constraints.maxWidth * childWidth,
                height: constraints.maxWidth * childHeight,
                title: 'Languages',
                buttonOne: 'English',
                buttonTwo: 'Italian',
              ),
              LicenseToS(
                action: () => null,
                width: constraints.maxWidth,
                height: constraints.maxWidth * childHeight,
                title: 'Licenses',
              ),
              LicenseToS(
                action: () => null,
                width: constraints.maxWidth,
                height: constraints.maxWidth * childHeight,
                title: 'ToS and Privacy',
              ),
            ],
          );
        }),
      ),
    );
  }
}
