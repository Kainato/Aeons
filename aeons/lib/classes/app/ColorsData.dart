import 'package:flutter/material.dart';

class ColorsData {
  // Light Mode
  static const Color primary = Color(0xFF2d0e34);
  static const Color secondary = Color(0xFF005ac1);
  static const Color error = Color(0xFFba1a1a);
  static const Color onPSR = Color(0xFFffffff);
  static const Color surface = Color(0xFFf8faf0);
  static const Color surfaceVariant = Color(0xFF43493e);
  static const Color onSB = Color(0xFF1a1c18);
  static const Color inverseSurface = Color(0xFF2f312d);
  static const Color inversePrimary = Color(0xFFfed6ff);
  static const Color onInverseSurface = Color(0xFFf8faf0);
  static const Color background = Color(0xFFf8faf0);

  // Dark Mode
  static Color primaryDark = Color(0xFFfed6ff);
  static Color onPrimaryDark = Color(0xFF5d3a62);
  static Color secondaryDark = Color(0xFFadc6ff);
  static Color onSecondaryDark = Color(0xFF002e77);
  static Color errorDark = Color(0xFFffdad6);
  static Color onErrorDark = Color(0xFF410002);
  static Color surfaceDark = Color(0xFF11140e);
  static Color surfaceVariantDark = Color(0xFF373a33);
  static Color onSurfaceDark = Color(0xFFf8faf0);
  static Color inverseSurfaceDark = Color(0xFF11140e);
  static Color inversePrimaryDark = Color(0xFFfed6ff);
  static Color onInverseSurfaceDark = Color(0xFFf8faf0);
  static Color backgroundDark = Color(0xFF11140e);
  static Color onBackgroundDark = Color(0xFFf8faf0);

  primaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? primaryDark : primary;

  onPrimaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onPrimaryDark : onPSR;

  secondaryColor(context) => Theme.of(context).brightness == Brightness.dark
      ? secondaryDark
      : secondary;

  onSecondaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onSecondaryDark : onPSR;

  errorColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? errorDark : error;

  onErrorColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onErrorDark : onPSR;

  surfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? surfaceDark : surface;

  surfaceVariantColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? surfaceVariantDark
          : surfaceVariant;

  onSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onSurfaceDark : onSB;

  inverseSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? inverseSurfaceDark
          : inverseSurface;

  inversePrimaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? inversePrimaryDark
          : inversePrimary;

  onInverseSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? onInverseSurfaceDark
          : onInverseSurface;

  backgroundColor(context) => Theme.of(context).brightness == Brightness.dark
      ? backgroundDark
      : background;

  onBackgroundColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onBackgroundDark : onSB;
}
