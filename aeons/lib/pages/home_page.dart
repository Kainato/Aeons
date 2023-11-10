import 'dart:developer';
import 'package:aeons/data/SheetFunctions.dart';
import 'package:aeons/classes/constructors/SheetModel.dart';
import 'package:aeons/functions/photo_element.dart';
import 'package:aeons/functions/photo_path.dart';
import 'package:aeons/widgets/ChangeThemeButton.dart';
import 'package:aeons/widgets/ScaffoldBase.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:aeons/pages/show_char.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController iconController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Aeons',
      actions: [
        IconButton(
          tooltip: 'Search character',
          icon: Icon(Icons.search),
          onPressed: () => setState(() => search = !search),
        ),
        ChangeThemeButton(),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: search ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: search
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        controller: searchController,
                        // onSaved: (value) =>
                        //     setState(() => searchChar(value!)),
                        decoration: InputDecoration(
                          hintText: 'Search character',
                          hintTextDirection: TextDirection.ltr,
                          prefixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () => setState(() {
                              searchController.clear();
                              FocusManager.instance.primaryFocus?.unfocus();
                            }),
                          ),
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.send),
                          //   onPressed: () => setState(() {
                          //     searchChar(searchController.text);
                          //     FocusManager.instance.primaryFocus?.unfocus();
                          //   }),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ),
            Expanded(
              child: FutureBuilder<List<SheetModel>>(
                future: fetchSheet(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    log(snapshot.error.toString(), name: 'snapshot error');
                    return Center(child: Text(snapshot.error.toString()));
                  } else {
                    if (snapshot.hasData) {
                      // log(snapshot.toString(), name: 'snapshot hasdata');
                      return sheetList(snapshot.data!, context);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// searchChar(String value) {
//   log(value.toString(), name: 'searchChar');
//   String search = value.toLowerCase();

//   // List<SheetModel> searchList = sheetList.where((element) {
//   //   String name = element.name.toLowerCase();
//   //   return name.contains(search);
//   // }).toList();

//   log(searchList.toString(), name: 'searchList');
// }

Widget sheetList(List<SheetModel> sheetList, context) {
  double radius = 32;
  return GridView.builder(
    itemCount: sheetList.length,
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 250,
      childAspectRatio: 0.75,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
    ),
    itemBuilder: (context, index) => InkWell(
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
        child: GridTile(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: sheetList[index].stars == '⭐⭐⭐⭐⭐'
                        ? Colors.amber
                        : Colors.deepPurple,
                  ),
                  child: Image.network(
                    sheetList[index].photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: AutoSizeText(
                  sheetList[index].name,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(8, 0, 4, 0),
                trailing: Row(
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
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
