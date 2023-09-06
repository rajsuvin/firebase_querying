import 'package:flutter/material.dart';
import 'package:provider.dart';
import 'package:registered_login/provider/provider_file.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
         appBar: AppBar(
          title: Text("Counter App"),
         ),
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text("Count",
              style: TextStyle(fontSize: 40),),
               Text(
                '${counter.count}',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
               )
            ],
          ),
         ),
         floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(onPressed: ()=>counter.increment(),
            child: Icon(Icons.add),),
            SizedBox(height: 20,),
            FloatingActionButton(onPressed: ()=>counter.decrement(),
            child: Icon(Icons.remove),),

          ],
         ),
    );
  }
}