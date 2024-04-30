import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestApi extends StatefulWidget {
  const RestApi({super.key});

  @override
  State<RestApi> createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  Map<String, String> get headers => <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  final String apiUrl = 'https://api.restful-api.dev/objects';

  void getData(BuildContext context) async {
    var response = await http.get(Uri.parse(apiUrl), headers: headers);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
    } else {
      print("Something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
