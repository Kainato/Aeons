import 'package:flutter/material.dart';

class ScaffoldBase extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actions;
  const ScaffoldBase({
    super.key,
    required this.title,
    required this.body,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              8, 0, 8, MediaQuery.of(context).padding.bottom),
          child: body,
        ),
      ),
    );
  }
}
