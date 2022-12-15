import 'package:barbeat/ui/screens/settings/settings_background.dart';
import 'package:barbeat/ui/screens/settings/settings_options.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0x99F54749);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: const [
          SettingsBackground(),
          SettingsOptions(),
        ],
      ),
    );
  }
}
