import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  // static bool _isDarkTheme = false;
  // ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  // void toggleTheme() {
  //   _isDarkTheme = !_isDarkTheme;
  //   notifyListeners();
  // }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color(0xFFF54749),
          ),
        ),
      ),
      colorScheme: const ColorScheme(
        primary: Colors.white,
        onBackground: Colors.white,
        onError: Colors.yellow,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        background: Colors.white,
        secondary: Color(0xFFF5F3ED),
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.black,
        brightness: Brightness.light,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontFamily: 'Metropolis-Bold',
          fontSize: 28.0,
        ),
        headline2: TextStyle(
          color: Colors.black,
          fontFamily: 'Metropolis-Bold',
          fontSize: 28.0,
        ),
        headline3: TextStyle(
          fontFamily: 'Metropolis-SemiBold',
          fontSize: 22.0,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontFamily: 'Metropolis-SemiBold',
          fontSize: 20.0,
          color: Colors.white,
        ),
        bodyText1: TextStyle(
            color: Color(0xFF7A7A7A),
            fontSize: 13,
            fontFamily: 'Metrolpolis-SemiBold'),
        bodyText2: TextStyle(
            color: Color(0xFF7A7A7A),
            fontSize: 16,
            fontFamily: 'Metrolpolis-Medium'),
      ),
    );
  }
}
