// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:registered_login/home.dart';
import 'package:registered_login/provider/provider_file.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:registered_login/login.dart';
import 'package:registered_login/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child:MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ,
    ),
    );
  }
}

