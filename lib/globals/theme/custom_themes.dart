import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static ThemeData get lightTheme {
    final redButtonColor = MaterialStateProperty.all(
      const Color(0xFFF54749),
    );

    const white = Colors.white;
    const yellow = Colors.yellow;
    const lightgrey = Color(0xFFF5F3ED);
    const grey = Color(0xFF7A7A7A);
    const black = Colors.black;
    const grey2 = Color(0x68686868);

    return ThemeData(
      primaryColor: white,
      scaffoldBackgroundColor: white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: redButtonColor,
        ),
      ),
      colorScheme: const ColorScheme(
        primary: white,
        onBackground: white,
        onError: yellow,
        onSecondary: white,
        onSurface: white,
        background: white,
        secondary: lightgrey,
        surface: white,
        error: Colors.red,
        onPrimary: black,
        brightness: Brightness.light,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: black,
          fontFamily: 'Metropolis-Bold',
          fontSize: 28.0,
        ),
        displayMedium: TextStyle(
          color: black,
          fontFamily: 'Metropolis-Bold',
          fontSize: 28.0,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Metropolis-SemiBold',
          fontSize: 22.0,
          color: black,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Metropolis-SemiBold',
          fontSize: 20.0,
          color: grey,
        ),
        bodyLarge: TextStyle(
            color: grey, fontSize: 13, fontFamily: 'Metrolpolis-SemiBold'),
        bodyMedium: TextStyle(
          color: grey,
          fontSize: 16,
          fontFamily: 'Metrolpolis-Medium',
        ),
      ),
    );
  }
}
