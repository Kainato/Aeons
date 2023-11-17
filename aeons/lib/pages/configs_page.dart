import 'package:aeons/classes/constructors/NavigationItem.dart';
import 'package:aeons/widgets/DrawerBase.dart';
import 'package:flutter/material.dart';
import 'package:aeons/widgets/ScaffoldBase.dart';
import 'package:aeons/widgets/ChangeThemeButton.dart';

class ConfigsPage extends StatefulWidget {
  const ConfigsPage({super.key});

  @override
  State<ConfigsPage> createState() => _ConfigsPageState();
}

class _ConfigsPageState extends State<ConfigsPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Configurações do APP',
      drawer: DrawerBase(currentPage: NavigationItem.configs),
      body: ListView(
        children: [
          ChangeThemeButton(),
        ],
      ),
    );
  }
}
