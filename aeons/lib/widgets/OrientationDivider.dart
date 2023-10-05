import 'package:flutter/material.dart';

class OrientationDivider extends StatelessWidget {
  const OrientationDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
        ? Divider(color: Colors.transparent)
        : VerticalDivider(color: Colors.transparent);
  }
}
