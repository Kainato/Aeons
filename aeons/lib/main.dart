import 'package:aeons/classes/app/AppTheme.dart';
import 'package:aeons/classes/app/ModeTheme.dart';
import 'package:aeons/pages/about_page.dart';
import 'package:aeons/pages/configs_page.dart';
import 'package:flutter/material.dart';
import 'package:aeons/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ModeTheme(),
      builder: (context, _) {
        return MaterialApp(
          home: HomePage(),
          themeMode: Provider.of<ModeTheme>(context).themeMode,
          themeAnimationCurve: Curves.bounceInOut,
          themeAnimationDuration: Duration(milliseconds: 500),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routes: {
            '/home': (context) => HomePage(),
            '/configs': (context) => ConfigsPage(),
            '/about': (context) => AboutPage(),
          },
        );
      },
    );
  }
}
