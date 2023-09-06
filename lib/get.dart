import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  Future<void> sample()async {
  var response =await get(Uri.parse("https://reqres.in/api/users/2"));
  print(response.body);
  var res = jsonDecode(response.body);
  print(res["data"]["email"]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){sample();}, child: Text("Profile")),),
    );
  }
}