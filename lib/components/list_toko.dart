// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class listToko extends StatelessWidget {
//   listToko(
//       {required this.imgsee,
//       required this.namatoko,
//       required this.openClose,
//       required this.menu,
//       required this.ratting,
//       required this.jarak,
//       required this.keterangan});

//   String imgsee;
//   String namatoko;
//   String openClose;
//   String menu;
//   String ratting;
//   String jarak;
//   String keterangan;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           children: [
//             Image.asset(imgsee),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(15),
//                 ),
//                 Text(
//                   namatoko,
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Image.asset("assets/images/love.png"),
//               ],
//             ),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15),
//                     ),
//                     Text(
//                       openClose,
//                       style: TextStyle(color: Colors.green),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       menu,
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15),
//                     ),
//                     Container(
//                       height: 30,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.amber,
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset("assets/images/star.png"),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             ratting,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Icon(
//                       Icons.location_on,
//                       color: Colors.grey,
//                     ),
//                     Text(jarak),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Image.asset("assets/images/dollar-1.png"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(keterangan)
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
