import 'dart:async';
import 'dart:convert';
import 'package:apiapplication2/Condrooler/Apiconection.dart';
import 'package:http/http.dart' as http;

import 'Apiconection.dart';

Future<List> fetchAlbum() async {
  final response = await http
      .get(Uri.parse("https://63578c6b2712d01e1409cfc1.mockapi.io/api/sample"));
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    var empty;
    return empty.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// class FromJson {}

// class Empty {

//   static Future<List> (Function(http.Response) Emptyfromjson) {}
  
  
 
// }
