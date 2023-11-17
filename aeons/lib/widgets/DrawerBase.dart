import 'package:aeons/classes/app/ColorsData.dart';
import 'package:aeons/classes/constructors/NavigationItem.dart';
import 'package:aeons/widgets/DrawerItem.dart';
import 'package:flutter/material.dart';

class DrawerBase extends StatelessWidget {
  final NavigationItem currentPage;
  const DrawerBase({
    super.key,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsData().backgroundColor(context),
      child: ListView(
        children: [
          DrawerHeader(
            decoration:
                BoxDecoration(color: ColorsData().backgroundColor(context)),
            child: Image.asset(
              'lib/assets/Aeons_Logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Divider(color: Colors.transparent),
          DrawerItem(
            currentPage: currentPage,
            navigationItem: NavigationItem.home,
            title: 'Home',
            onTap: () => Navigator.popAndPushNamed(context, '/home'),
            iconLeading: Icons.home,
          ),
          Divider(color: Colors.transparent),
          DrawerItem(
            currentPage: currentPage,
            navigationItem: NavigationItem.configs,
            title: 'Configurations',
            onTap: () => Navigator.popAndPushNamed(context, '/configs'),
            iconLeading: Icons.settings,
          ),
          Divider(color: Colors.transparent),
          DrawerItem(
            currentPage: currentPage,
            navigationItem: NavigationItem.about,
            title: 'About',
            onTap: () => Navigator.popAndPushNamed(context, '/about'),
            iconLeading: Icons.info,
          ),
        ],
      ),
    );
  }
}
