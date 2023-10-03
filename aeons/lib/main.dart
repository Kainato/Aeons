import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:aeons/SheetFunctions.dart';
import 'package:aeons/SheetModel.dart';
import 'package:aeons/show_char.dart';
import 'package:aeons/widgets/avatar_null.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Future<List<SheetModel>> sheets;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Padding Around FAB'),
        ),
        body: Column(
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
        floatingActionButton: MyFAB(),
      ),
    );
  }
}

class MyFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}

Widget sheetList(List<SheetModel> sheetList) {
  return ListView.builder(
    itemCount: sheetList.length,
    itemBuilder: (context, index) {
      return Card(
        elevation: 5,
        child: ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: SizedBox(
            height: double.infinity,
            child: avatarNull(
              backgroundColor: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                  ? Colors.amber
                  : Colors.deepPurple,
              photoLogic: sheetList[index].photo.isEmpty,
              radius: 20,
              url: '${sheetList[index].photo}.png',
            ),
          ),
          title: Text(
            sheetList[index].name.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowChar(
                data: sheetList[index],
              ),
            ),
          ),
        ),
      );
    },
  );
}
