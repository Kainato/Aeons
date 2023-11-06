import 'dart:developer';
import 'package:aeons/functions/getCircleAvatar.dart';
import 'package:aeons/functions/photo_element.dart';
import 'package:aeons/functions/photo_path.dart';
import 'package:flutter/material.dart';
import 'package:aeons/widgets/RichText.dart';
import 'package:aeons/SheetFunctions.dart';
import 'package:aeons/SheetModel.dart';
import 'package:aeons/show_char.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController iconController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
  double radius = 32;
  return GridView.builder(
    itemCount: sheetList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisSpacing: 8,
      childAspectRatio:
          MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
              ? MediaQuery.of(context).size.width * 0.0025
              : MediaQuery.of(context).size.width * 0.0015,
      // childAspectRatio: 4.5,
      crossAxisCount:
          MediaQuery.of(context).size.width > MediaQuery.of(context).size.height
              ? 3
              : 2,
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
          child: Center(
            child: GridTile(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getCircleAvatar(
                  backgroundColor: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                      ? Colors.amber
                      : Colors.deepPurple,
                  photoLogic: sheetList[index].photo.isEmpty,
                  url: '${sheetList[index].photo}.png',
                  radius: radius,
                ),
                Gap(8),
                TextRich(
                  text: sheetList[index].name,
                  textAlign: TextAlign.start,
                  bold: FontWeight.bold,
                  fontSize: 16,
                  maxLines: 1,
                ),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      photoPath(sheetList[index].path),
                      width: radius,
                    ),
                    Gap(8),
                    Image.asset(
                      photoElement(sheetList[index].element),
                      width: radius,
                    ),
                  ],
                ),
              ],
            )
                /* title: TextRich(
                text: sheetList[index].name,
                textAlign: TextAlign.start,
                bold: FontWeight.bold,
                fontSize: 16,
                maxLines: 1,
              ),
              leading: getCircleAvatar(
                backgroundColor: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                    ? Colors.amber
                    : Colors.deepPurple,
                photoLogic: sheetList[index].photo.isEmpty,
                url: '${sheetList[index].photo}.png',
                radius: radius,
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    photoPath(sheetList[index].path),
                    width: radius * 2,
                  ),
                  Gap(8),
                  Image.asset(
                    photoElement(sheetList[index].element),
                    width: radius * 2,
                  ),
                ],
              ),
             */
                ),
          ),
        ),
      );
    },
  );
}
