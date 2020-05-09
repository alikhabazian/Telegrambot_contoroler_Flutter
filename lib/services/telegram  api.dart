import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:intl/intl.dart';

Future<bool> check_bot({String token})async{
//  String a='https://api.telegram.org/bot';
//  String url=a+token+'/getMe';
  final url ='https://api.telegram.org/bot1272194425:AAGDnzElr0F6Po5MF32-SFOzDrkAnN-o8A8/getMe';
  print(url);
  final response =
      await http.get(url);
  print('ss');
  var jsonResponse = convert.jsonDecode(response.body);
  bool itemCount = jsonResponse['ok'];
  print('object'+itemCount.toString());
  return itemCount;

//  Map data = jsonDecode(response.body);
//  print('object');
//  print('${data['ok']}');
//  var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
//
//  // Await the http get response, then decode the json-formatted response.
//  var response = await http.get(url);
//  if (response.statusCode == 200) {
//    var jsonResponse = convert.jsonDecode(response.body);
//    var itemCount = jsonResponse['totalItems'];
//    print('Number of books about http: $itemCount.');
//  } else {
//    print('Request failed with status: ${response.statusCode}.');
//  }
}