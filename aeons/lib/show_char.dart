import 'package:flutter/material.dart';
import 'package:aeons/SheetModel.dart';
import 'package:aeons/widgets/avatar_null.dart';

class ShowChar extends StatelessWidget {
  final SheetModel data;

  const ShowChar({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SelectableText(data.name)),
      body: Column(
        children: [
          avatarNull(
            backgroundColor:
                data.stars == '⭐⭐⭐⭐⭐' ? Colors.amber : Colors.deepPurple,
            photoLogic: data.photo.isEmpty,
            radius: 150,
            url: '${data.photo}.png',
          ),
          SelectableText(data.name),
          SelectableText(data.path),
          SelectableText(data.element),
          SelectableText(data.roles),
          SelectableText(data.stars),
          Divider(),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                SelectableText(data.bodyStatus),
                SelectableText(data.feetStatus),
                SelectableText(data.planarSphere),
                SelectableText(data.linkRope),
                SelectableText(data.bestRelics),
                SelectableText(data.bestOrnaments),
                SelectableText(data.bestLightCones),
                SelectableText(data.bestSubstatus),
                SelectableText(data.abilitiesPriority),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
