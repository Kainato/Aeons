import 'package:aeons/classes/app/ModeTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Change application theme between dark mode and light mode',
      child: SwitchListTile(
        title: Text('APP theme'),
        subtitle: Text(
          ModeTheme().widgetTheme(
            context,
            lightTheme: 'Light mode',
            darkTheme: 'Dark mode',
          ),
        ),
        value: Provider.of<ModeTheme>(context).isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ModeTheme>(context, listen: false);
          provider.toggleTheme(value);
        },
      ),
    );
  }
}
