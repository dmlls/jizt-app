import 'package:flutter/material.dart';

Color get _primaryColor => Colors.red[300];

Color get _secondaryColor => _primaryColor;

Color get _surfaceColor => Colors.grey.withOpacity(0.15);

ThemeData get lightTheme => ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: _primaryColor,
      accentColor: _secondaryColor,
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        brightness: Brightness.dark,
      ),
      colorScheme: ColorScheme.light(
        primary: _primaryColor,
        secondary: _secondaryColor,
        surface: _surfaceColor,
        onSecondary: Colors.white,
      ),
    );

ThemeData get darkTheme => ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: _primaryColor,
      accentColor: _secondaryColor,
      scaffoldBackgroundColor: Colors.grey[900],
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        color: Colors.grey[900],
      ),
      colorScheme: ColorScheme.dark(
        primary: _primaryColor,
        secondary: _secondaryColor,
        surface: _surfaceColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
      ),
    );
