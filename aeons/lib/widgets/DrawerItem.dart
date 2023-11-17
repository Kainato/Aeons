import 'package:aeons/classes/app/ColorsData.dart';
import 'package:aeons/classes/app/ModeTheme.dart';
import 'package:aeons/classes/constructors/NavigationItem.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final NavigationItem currentPage;
  final NavigationItem navigationItem;
  final String title;
  final void Function() onTap;
  final IconData iconLeading;

  const DrawerItem({
    super.key,
    required this.currentPage,
    required this.navigationItem,
    required this.title,
    required this.onTap,
    required this.iconLeading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: currentPage == navigationItem
            ? ColorsData().primaryColor(context)
            : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: onTap,
          title: Text(
            title,
            style: TextStyle(
              color: ModeTheme().widgetTheme(
                context,
                darkTheme:
                    currentPage == navigationItem ? Colors.black : Colors.white,
                lightTheme:
                    currentPage == navigationItem ? Colors.white : Colors.black,
              ),
            ),
          ),
          leading: Icon(
            iconLeading,
            color: ModeTheme().widgetTheme(
              context,
              darkTheme:
                  currentPage == navigationItem ? Colors.black : Colors.white,
              lightTheme:
                  currentPage == navigationItem ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
