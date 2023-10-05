import 'package:aeons/widgets/SelectableRichText.dart';
import 'package:flutter/material.dart';

class ShowListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? leading;

  const ShowListTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SelectableTextRich(
        text: title,
        bold: FontWeight.bold,
        fontSize: 18,
      ),
      subtitle: SelectableTextRich(
        text: subtitle,
      ),
      leading: leading,
    );
  }
}
