import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.cyanAccent,
      scaffoldBackgroundColor: Colors.black87,
      textTheme: _textTheme,
      buttonTheme: _buttonTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
    );
  }

  static TextTheme get _textTheme {
    return const TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
      displayLarge: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Colors.white, fontSize: 16),
      bodySmall: TextStyle(color: Colors.white, fontSize: 12),
    );
  }

  static ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      buttonColor: Colors.blue, // Default button color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textTheme: ButtonTextTheme.primary,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.cyanAccent,
        textStyle: const TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue, side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
