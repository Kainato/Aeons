import 'dart:convert';
import 'dart:developer';
import 'package:aeons/SheetModel.dart';
import 'package:http/http.dart' as http;

/* Decoding Data:
    This method takes a responseBody. It returns a list of SheetModel. 
    All the data items in the JSON format are decoded and then the parsed data is then mapped with the 
    SheetModel using fromMap method and a list of SheetModel is returned. */
List<SheetModel> decodeSheet(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<SheetModel>((json) => SheetModel.fromMap(json)).toList();
}

/*  Fetching JSON Data:
      HTTP package provides us get method to fetch the JSON data. 
      We will store the data in the response and the pass its body in the decode method to decode it. */
Future<List<SheetModel>> fetchSheet() async {
  final response = await http.get(
    Uri.parse(
      'https://script.google.com/macros/s/AKfycbxvcWssAZHwGev835drm7tbU0w1uai3dzWkOLL1aeGXk_3yAhlYbFAfTsMGipVkwha2/exec',
    ),
  );
  log(response.body, name: 'response body');
  if (response.statusCode == 200) {
    return decodeSheet(response.body);
  } else {
    throw Exception('Unable to fetch data from the REST API');
  }
}
