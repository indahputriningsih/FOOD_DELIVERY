// import 'dart:ffi';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:food_delivery/pages/homePage.dart';
// import '../components/list_toko.dart';

// class SeeAll extends StatelessWidget {
//   const SeeAll({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xfff4f5f8),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Container(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               children: [
//                 Container(
//                   height: double.infinity,
//                   width: 500,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: [
//                       Container(
//                         width: 60,
//                         //padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         child: Divider(
//                           thickness: 7,
//                           color: Colors.grey.shade300,
//                         ),
//                       ),
//                       Text(
//                         "Best Partner",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         thickness: 2,
//                         color: Colors.grey.shade100,
//                       ),
//                       Container(
//                         child: listToko(
//                             imgsee: "assets/images/🖼 Import image.png",
//                             namatoko: "Subway",
//                             openClose: "Open",
//                             menu: "Coffe . Tea . Cake",
//                             ratting: "4,5",
//                             jarak: "1.5 KM",
//                             keterangan: "Free Shipping"),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         child: listToko(
//                             imgsee: "assets/images/🖼 Import image2.png",
//                             namatoko: "Subway",
//                             openClose: "Open",
//                             menu: "Coffe . Tea . Cake",
//                             ratting: "4,5",
//                             jarak: "1.5 KM",
//                             keterangan: "Free Shipping"),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         child: listToko(
//                             imgsee: "assets/images/burgerbesar.png",
//                             namatoko: "Subway",
//                             openClose: "Open",
//                             menu: "Coffe . Tea . Cake",
//                             ratting: "4,5",
//                             jarak: "1.5 KM",
//                             keterangan: "Free Shipping"),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
