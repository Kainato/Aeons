import 'package:aeons/classes/constructors/SheetModel.dart';
import 'package:aeons/functions/getCircleAvatar.dart';
import 'package:aeons/functions/photo_element.dart';
import 'package:aeons/functions/photo_path.dart';
import 'package:aeons/widgets/OrientationDivider.dart';
import 'package:aeons/widgets/OrientationSwitcher.dart';
import 'package:aeons/widgets/SelectableRichText.dart';
import 'package:aeons/widgets/ShowListTile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowChar extends StatelessWidget {
  final SheetModel data;

  const ShowChar({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SelectableText('${data.name} build')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OrientationSwitcher(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: getCircleAvatar(
                    backgroundColor: data.stars == '⭐⭐⭐⭐⭐'
                        ? Colors.amber
                        : Colors.deepPurple,
                    photoLogic: data.photo.isEmpty,
                    radius: 100,
                    url: data.photo,
                  ),
                ),
                OrientationDivider(),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 4,
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: SelectableTextRich(
                            text: 'Path',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          subtitle: SelectableTextRich(
                            text: '${data.path} (${data.roles})',
                          ),
                          leading: Image.asset(
                            photoPath(data.path),
                            width: 50,
                          ),
                        ),
                        ListTile(
                          title: SelectableTextRich(
                            text: 'Element',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          subtitle: SelectableTextRich(
                            text: data.element,
                          ),
                          leading: Image.asset(
                            photoElement(data.element),
                            width: 50,
                          ),
                        ),
                        ListTile(
                          title: SelectableTextRich(
                            text: 'Abilities priority',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          subtitle: SelectableTextRich(
                            text: data.abilitiesPriority,
                          ),
                          leading: SizedBox(
                            width: 50,
                            child: Icon(FontAwesomeIcons.dice),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            OrientationSwitcher(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      ShowListTile(
                        title: 'Body Status',
                        subtitle: data.bodyStatus,
                        leading: SizedBox(
                          width: 50,
                          child: Icon(FontAwesomeIcons.shirt),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      ShowListTile(
                        title: 'Feet Status',
                        subtitle: data.feetStatus,
                        leading: SizedBox(
                          width: 50,
                          child: Icon(FontAwesomeIcons.socks),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      ShowListTile(
                        title: 'Planar Sphere Status',
                        subtitle: data.planarSphere,
                        leading: SizedBox(
                          width: 50,
                          child: Icon(FontAwesomeIcons.circleDot),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      ShowListTile(
                        title: 'Link Rope Status',
                        subtitle: data.linkRope,
                        leading: SizedBox(
                          width: 50,
                          child: Icon(FontAwesomeIcons.linesLeaning),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      ShowListTile(
                        title: 'Best Substatus',
                        subtitle: data.bestSubstatus,
                        leading: SizedBox(
                          width: 50,
                          child: Icon(FontAwesomeIcons.listCheck),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Tooltip(
                        message: data.bestRelicsDescription,
                        triggerMode: TooltipTriggerMode.tap,
                        child: ListTile(
                          title: SelectableTextRich(
                            text: 'Best Relics',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          subtitle:
                              SelectableTextRich(text: data.bestRelicsName),
                          leading: Image.network(
                            data.bestRelics,
                            width: 50,
                          ),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      Tooltip(
                        message: data.bestOrnamentsDescription,
                        triggerMode: TooltipTriggerMode.tap,
                        child: ListTile(
                          title: SelectableTextRich(
                            text: 'Best Ornaments',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          subtitle:
                              SelectableTextRich(text: data.bestOrnamentsName),
                          leading: Image.network(
                            data.bestOrnaments,
                            width: 50,
                          ),
                        ),
                      ),
                      Divider(color: Colors.transparent),
                      Tooltip(
                        message: data.bestLightCones,
                        triggerMode: TooltipTriggerMode.tap,
                        child: ListTile(
                          title: SelectableTextRich(
                            text: 'Bests Light Cones',
                            bold: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: Icon(FontAwesomeIcons.gun),
                          ),
                          subtitle: Image.network(
                            data.bestLightConesImages,
                            width: 200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
