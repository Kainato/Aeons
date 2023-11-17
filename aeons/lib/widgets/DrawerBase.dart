import 'package:flutter/material.dart';

class DrawerBase extends StatelessWidget {
  const DrawerBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DRAWER HEADER WITH IMAGE
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Image.asset(
              'lib/assets/Aeons_Logo.png',
              fit: BoxFit.contain,
            ),
          ),
          ListTile(
            title: Text('Characters'),
            onTap: () => Navigator.pushNamed(context, '/home'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('Configurações'),
            onTap: () => Navigator.pushNamed(context, '/configs'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Sobre'),
            onTap: () => Navigator.pushNamed(context, '/about'),
            leading: Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
