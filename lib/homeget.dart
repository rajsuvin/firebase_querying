// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(child: Text("view"),onPressed: () async{
//                 await FirebaseFirestore.instance.collection("datas").get().then((snapshot)
//                 {
//                   List<QueryDocumentSnapshot> docList= snapshot.docs;
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return Views(docs: docList);
//                   },));
//                 } );
//               },),

//               ElevatedButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: ((context) {
//                   return Add();
//                 })));
//               }, child: Text("Add"))
//             ],
//           ),
//         ),
//       ));
//   }
// }