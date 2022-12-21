import 'package:barbeat/ui/screens/settings/languages/language_setting.dart';
import 'package:barbeat/ui/screens/settings/license_tos/deep_nav_link.dart';
import 'package:barbeat/ui/screens/settings/measurements/measurements.dart';
import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({super.key});

  final double childWidth = 0.5;
  final double childHeight = 0.25;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double parentWidth = size.width * 0.85;
    double parentHeight = size.height * 0.72;

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
              ),
              LanguageSetting(
                width: constraints.maxWidth * childWidth,
                height: constraints.maxWidth * childHeight,
                title: 'Languages',
              ),
              DeepNavLink(
                action: () => null,
                width: constraints.maxWidth,
                height: constraints.maxWidth * childHeight,
                title: 'Licenses',
              ),
              DeepNavLink(
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
