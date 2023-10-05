import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:aeons/widgets/RichText.dart';
import 'package:aeons/SheetFunctions.dart';
import 'package:aeons/SheetModel.dart';
import 'package:aeons/show_char.dart';
import 'package:aeons/widgets/avatar_null.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Around FAB'),
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
                      child: sheetList(snapshot.data!),
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

Widget sheetList(List<SheetModel> sheetList) {
  return GridView.builder(
    itemCount: sheetList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing: 8,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              avatarNull(
                backgroundColor: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                    ? Colors.amber
                    : Colors.deepPurple,
                photoLogic: sheetList[index].photo.isEmpty,
                radius: 100,
                url: '${sheetList[index].photo}.png',
              ),
              Divider(),
              TextRich(
                textAlign: TextAlign.center,
                text: sheetList[index].name,
                bold: FontWeight.bold,
                fontSize: 16,
                richText:
                    '\n${sheetList[index].path} - ${sheetList[index].element}',
              ),
            ],
          ),
        ),
      );
    },
  );
}
