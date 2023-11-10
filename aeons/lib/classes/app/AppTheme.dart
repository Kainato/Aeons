import 'package:aeons/classes/colorsData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: const TextTheme(
      titleSmall: TextStyle(fontSize: 12, color: Colors.black),
      titleMedium: TextStyle(fontSize: 16, color: Colors.black),
      titleLarge: TextStyle(fontSize: 20, color: Colors.black),
      bodySmall: TextStyle(fontSize: 12, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
      displayLarge: TextStyle(fontSize: 24, color: Colors.black),
      displayMedium: TextStyle(fontSize: 20, color: Colors.black),
      displaySmall: TextStyle(fontSize: 16, color: Colors.black),
      headlineLarge: TextStyle(fontSize: 24, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 20, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 16, color: Colors.black),
      labelLarge: TextStyle(fontSize: 20, color: Colors.black),
      labelMedium: TextStyle(fontSize: 16, color: Colors.black),
      labelSmall: TextStyle(fontSize: 12, color: Colors.black),
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      // Primary Color
      primary: ColorsData.primary,
      onPrimary: ColorsData.onPSR,
      // Secondary Color
      secondary: ColorsData.secondary,
      onSecondary: ColorsData.onPSR,
      // Error Color
      error: ColorsData.error,
      onError: ColorsData.onPSR,
      // Surface Color
      surface: ColorsData.surface,
      onSurface: ColorsData.onSB,
      surfaceVariant: ColorsData.surfaceVariant,
      inverseSurface: ColorsData.inverseSurface,
      inversePrimary: ColorsData.inversePrimary,
      onInverseSurface: ColorsData.onInverseSurface,
      // Background Color
      background: ColorsData.background,
      onBackground: ColorsData.onSB,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: const TextTheme(
      titleSmall: TextStyle(fontSize: 12, color: Colors.white),
      titleMedium: TextStyle(fontSize: 16, color: Colors.white),
      titleLarge: TextStyle(fontSize: 20, color: Colors.white),
      bodySmall: TextStyle(fontSize: 12, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 20, color: Colors.white),
      displayLarge: TextStyle(fontSize: 24, color: Colors.white),
      displayMedium: TextStyle(fontSize: 20, color: Colors.white),
      displaySmall: TextStyle(fontSize: 16, color: Colors.white),
      headlineLarge: TextStyle(fontSize: 24, color: Colors.white),
      headlineMedium: TextStyle(fontSize: 20, color: Colors.white),
      headlineSmall: TextStyle(fontSize: 16, color: Colors.white),
      labelLarge: TextStyle(fontSize: 20, color: Colors.white),
      labelMedium: TextStyle(fontSize: 16, color: Colors.white),
      labelSmall: TextStyle(fontSize: 12, color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      // Primary Color
      primary: ColorsData.primaryDark,
      onPrimary: ColorsData.onPrimaryDark,
      // Secondary Color
      secondary: ColorsData.secondaryDark,
      onSecondary: ColorsData.onSecondaryDark,
      // Error Color
      error: ColorsData.errorDark,
      onError: ColorsData.onErrorDark,
      // Surface Color
      surface: ColorsData.surfaceDark,
      onSurface: ColorsData.onSurfaceDark,
      surfaceVariant: ColorsData.surfaceVariantDark,
      inverseSurface: ColorsData.inverseSurfaceDark,
      inversePrimary: ColorsData.inversePrimaryDark,
      // Background Color
      background: ColorsData.backgroundDark,
      onBackground: ColorsData.onBackgroundDark,
    ),
  );
}
