import 'package:flutter/material.dart';
import 'package:aeons/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double minWidth = MediaQuery.of(context).size.width < 300
        ? 300
        : MediaQuery.of(context).size.width;

    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.system,
      themeAnimationCurve: Curves.bounceInOut,
      themeAnimationDuration: Duration(milliseconds: 500),
      theme: ThemeData(
        textTheme: TextTheme(
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
        useMaterial3: true,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          // Primary Color
          primary: Colors.deepPurple,
          onPrimary: Colors.white,
          // Secondary Color
          secondary: Colors.lightGreen.shade600,
          onSecondary: Colors.white,
          // Tertiary Color
          tertiary: Colors.orange.shade900,
          onTertiary: Colors.white,
          // Error Color
          error: Colors.red,
          onError: Colors.white,
          // Surface Color
          surface: Colors.white,
          onSurface: Colors.black,
          // Background Color
          background: Colors.white,
          onBackground: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        textTheme: TextTheme(
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
        useMaterial3: true,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          // Primary Color
          primary: Colors.deepPurple.shade200,
          onPrimary: Colors.white,
          // Secondary Color
          secondary: Colors.lightGreen.shade200,
          onSecondary: Colors.white,
          // Tertiary Color
          tertiary: Colors.orange.shade200,
          onTertiary: Colors.white,
          // Error Color
          error: Colors.red.shade200,
          onError: Colors.white,
          // Surface Color
          surface: Color(0x121212),
          onSurface: Colors.white,
          // Background Color
          background: Colors.grey.shade800,
          onBackground: Colors.white,
        ),
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            size: Size(
              minWidth,
              MediaQuery.of(context).size.height,
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
