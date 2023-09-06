// import 'package:flutter/material.dart';

// class Views extends StatefulWidget {
//   const Views({super.key});
  
//   get docs => null;

//   @override
//   State<Views> createState() => _ViewsState();
// }

// class _ViewsState extends State<Views> {
//   var place;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: ListView.builder(
//         itemCount: widget.docs.length,
//         itemBuilder: (context, index) {
//           final name = widget.docs[index]["name"];
          
//           return ListTile(
//             onTap: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context){  
//                   return Single(          
//                     name: name,
//                     place: place,
//                   );
//                 }),
//               );
//             },
//           );
//         },),
//     ));
//   }
// }