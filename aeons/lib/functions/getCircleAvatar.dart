import 'package:flutter/material.dart';

Widget getCircleAvatar({
  required photoLogic,
  required Color backgroundColor,
  required String url,
  required double radius,
}) {
  return Column(
    children: [
      if (photoLogic) ...[
        CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
          backgroundImage: AssetImage('lib/assets/blank_user.png'),
        ),
      ] else ...[
        CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
          backgroundImage: NetworkImage(url),
        ),
      ],
    ],
  );
}
