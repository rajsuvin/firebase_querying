import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final _formKey = GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();
  var password = TextEditingController();

  Future<void> postData() async{
    var data = {
      "name": name.text,
      "email": email.text,
      "mobile": mobile.text,
      "password": password.text,
    };
    print(data);

    var response = await post(Uri.parse("https://reqres.in/api/users"),body: data);
    print(response.body);
    var res = jsonDecode(response.body) ;
    print(res[email]);
             // ignore: unused_local_variable
             var message = res["message"];
             var id = res["login_id"];
             print(id);
          
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(height: 100,),
            Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter your name';
                }
                return null;
              },
              controller: name,
              decoration: const InputDecoration(
                label: Text("Name"),border: OutlineInputBorder()
              ),
            ),
            ),

            Padding(padding: const EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter your email';
                }
                return null;
              },
              controller: name,
              decoration: const InputDecoration(
                label: Text("email"),border: OutlineInputBorder()
              ),
            ),
            ),

            Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter your ph no';
                }
                return null;
              },
              controller: name,
              decoration: const InputDecoration(
                label: Text("Ph no"),border: OutlineInputBorder()
              ),
            ),
            ),

            Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter your password';
                }
                return null;
              },
              controller: name,
              decoration: const InputDecoration(
                label: Text("Password"),border: OutlineInputBorder()
              ),
            ),
            ),
          ],
        )),
    );
  }
}