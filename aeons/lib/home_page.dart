import 'dart:developer';
import 'package:aeons/functions/getCircleAvatar.dart';
import 'package:aeons/functions/photo_element.dart';
import 'package:aeons/functions/photo_path.dart';
import 'package:flutter/material.dart';
import 'package:aeons/widgets/RichText.dart';
import 'package:aeons/SheetFunctions.dart';
import 'package:aeons/SheetModel.dart';
import 'package:aeons/show_char.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController iconController = TextEditingController();
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<IconLabel>> iconEntries =
        <DropdownMenuEntry<IconLabel>>[];
    for (final IconLabel icon in IconLabel.values) {
      iconEntries
          .add(DropdownMenuEntry<IconLabel>(value: icon, label: icon.label));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Aeons'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.help),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FutureBuilder<List<SheetModel>>(
              future: fetchSheet(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  log(snapshot.error.toString(), name: 'snapshot error');
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  if (snapshot.hasData) {
                    // log(snapshot.toString(), name: 'snapshot hasdata');
                    return Expanded(
                      child: sheetList(snapshot.data!, context),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget sheetList(List<SheetModel> sheetList, context) {
  Orientation orientation = MediaQuery.of(context).orientation;
  return GridView.builder(
    itemCount: sheetList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
      crossAxisSpacing: 8,
      childAspectRatio: 0.9,
    ),
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShowChar(
              data: sheetList[index],
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getCircleAvatar(
                  backgroundColor: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                      ? Colors.amber
                      : Colors.deepPurple,
                  photoLogic: sheetList[index].photo.isEmpty,
                  radius: 50,
                  url: '${sheetList[index].photo}.png',
                ),
                SizedBox(height: 8),
                TextRich(
                  textAlign: TextAlign.center,
                  text: sheetList[index].name,
                  bold: FontWeight.bold,
                  fontSize: 16,
                  maxLines: 1,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      photoPath(sheetList[index].path),
                      width: 32,
                    ),
                    Image.asset(
                      photoElement(sheetList[index].element),
                      width: 32,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}
