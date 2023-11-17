import 'package:aeons/classes/constructors/NavigationItem.dart';
import 'package:aeons/widgets/DrawerBase.dart';
import 'package:aeons/widgets/ScaffoldBase.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Sobre',
      drawer: DrawerBase(currentPage: NavigationItem.about),
      body: Container(),
    );
  }
}
