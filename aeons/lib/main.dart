import 'package:aeons/classes/AppTheme.dart';
import 'package:aeons/classes/ModeTheme.dart';
import 'package:flutter/material.dart';
import 'package:aeons/home_page.dart';
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
        );
      }
    );
  }
}
